package com.SB.shantiniketan;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class TransportController {

	@Autowired
	private TransportService transportService;

	@Autowired
	private StaffRepository staffRepository;

	@GetMapping("/transport")
	public String viewTransport(@RequestParam(value = "searchQuery", required = false) String searchQuery,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, HttpSession session,
			Model model) {

		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		List<Transport> transportList;
		if (searchQuery != null && !searchQuery.trim().isEmpty()) {
			transportList = transportService.searchTransport(searchQuery.trim());
		} else {
			transportList = transportService.getAllTransport();
		}

		model.addAttribute("transportList", transportList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("searchQuery", searchQuery);

		return "transport"; // Resolves to transport.html view
	}

	@GetMapping({ "/transport/add", "/transport_add_form" })
	public String addTransportForm(Model model, HttpSession session) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		if (!model.containsAttribute("transport")) {
			model.addAttribute("transport", new Transport());
		}

		// Fetch staff members who are drivers (adjust keyword as needed, e.g.,
		// "Driver")
		List<Staff> drivers = staffRepository.findByCurrentRoleContainingIgnoreCase("Driver");
		model.addAttribute("drivers", drivers);

		return "transport_add_form";
	}

	@PostMapping("/transport/save")
	public String saveTransport(@ModelAttribute("transport") Transport transport,
			@RequestParam("vehicleImageFile") MultipartFile vehicleImageFile, HttpSession session,
			RedirectAttributes redirectAttributes) {

		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		try {
			transportService.saveTransport(transport, vehicleImageFile);
			redirectAttributes.addFlashAttribute("successMessage", "Transport vehicle added successfully.");
			return "redirect:/transport";
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to save transport: " + e.getMessage());
			redirectAttributes.addFlashAttribute("transport", transport);
			return "redirect:/transport/add";
		}
	}

	@GetMapping("/transport/image/{id}")
	@ResponseBody
	public ResponseEntity<byte[]> getVehicleImage(@PathVariable("id") int id) {
		Transport transport = transportService.getTransportById(id);
		if (transport != null && transport.getVehicleImage() != null) {
			return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(transport.getVehicleImage());
		}
		return ResponseEntity.notFound().build();
	}

	@GetMapping("/transport_edit_form")
	public String editTransportForm(@RequestParam("id") int id, HttpSession session, Model model) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		Transport transport = transportService.getTransportById(id);
		if (transport == null) {
			return "redirect:/transport";
		}

		// Fetch drivers for the dropdown list
		List<Staff> drivers = staffRepository.findByCurrentRoleContainingIgnoreCase("Driver");
		model.addAttribute("drivers", drivers);

		model.addAttribute("transport", transport);
		return "transport_edit_form";
	}

	@PostMapping("/transport/update")
	public String updateTransport(@ModelAttribute("transport") Transport transport,
			@RequestParam(value = "vehicleImageFile", required = false) MultipartFile vehicleImageFile,
			HttpSession session, RedirectAttributes redirectAttributes) {

		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		try {
			transportService.updateTransport(transport, vehicleImageFile);
			redirectAttributes.addFlashAttribute("successMessage", "Transport updated successfully.");
			return "redirect:/transport";
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to update transport: " + e.getMessage());
			return "redirect:/transport_edit_form?id=" + transport.getTransportId();
		}
	}

	@GetMapping("/transport_delete_process")
	public String deleteTransport(@RequestParam("id") int id, HttpSession session,
			RedirectAttributes redirectAttributes) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		try {
			transportService.deleteTransport(id);
			redirectAttributes.addFlashAttribute("successMessage", "Transport vehicle deleted successfully.");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to delete transport: " + e.getMessage());
		}

		return "redirect:/transport";
	}
}