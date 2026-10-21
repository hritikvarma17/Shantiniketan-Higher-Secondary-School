package com.SB.shantiniketan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ViewResolver;
import org.thymeleaf.spring6.SpringTemplateEngine;
import org.thymeleaf.spring6.view.ThymeleafViewResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.MultipartConfigElement;
import jakarta.servlet.http.HttpSession;

@Controller
public class StaffController {

	@Autowired
	private StaffService staffService;

//	@Bean
//    public ViewResolver thymeleafViewResolver(SpringTemplateEngine templateEngine) {
//        ThymeleafViewResolver resolver = new ThymeleafViewResolver();
//        resolver.setTemplateEngine(templateEngine);
//        resolver.setCharacterEncoding("UTF-8");
//        resolver.setOrder(0); // Takes absolute precedence over JSP resolver
//        return resolver;
//    }
//
//	@GetMapping("/staff")
//	public String viewStaff(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
//			HttpSession session, Model model) {
//
//		if (session == null || session.getAttribute("user") == null) {
//			return "redirect:/log_in";
//		}
//
//		List<Staff> staffList = staffService.getAllStaff();
//		model.addAttribute("staffList", staffList);
//		model.addAttribute("currentPage", currentPage); // Explicitly pass currentPage
//
//		return "staff";
//	}

	@GetMapping("/staff")
	public String viewStaff(@RequestParam(value = "searchQuery", required = false) String searchQuery,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, HttpSession session,
			Model model) {

		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		List<Staff> staffList;
		if (searchQuery != null && !searchQuery.trim().isEmpty()) {
			staffList = staffService.searchStaff(searchQuery.trim());
		} else {
			staffList = staffService.getAllStaff();
		}

		model.addAttribute("staffList", staffList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("searchQuery", searchQuery); // Retains search input value in the view

		return "staff"; // Resolves to staff.html
	}

	@GetMapping({ "/staff/add", "/staff_add_form" })
	public String addStaffForm(Model model, HttpSession session) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		if (!model.containsAttribute("staff")) {
			model.addAttribute("staff", new Staff());
		}
		return "staff_add_form";
	}

	@PostMapping("/staff/save")
	public String saveStaff(@ModelAttribute("staff") Staff staff, @RequestParam("photoFile") MultipartFile photoFile,
			HttpSession session, Model model, RedirectAttributes redirectAttributes) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		try {
			staffService.saveStaff(staff, photoFile);
			return "redirect:/staff";
		} catch (Exception e) {
			e.printStackTrace();
			// Use flash attributes to carry the error message safely across the redirect
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to save staff member: " + e.getMessage());
			redirectAttributes.addFlashAttribute("staff", staff); // Optional: preserves form input data
			return "redirect:/staff/add";
		}
	}

	@GetMapping("/staff/photo/{id}")
	@ResponseBody
	public ResponseEntity<byte[]> getStaffPhoto(@PathVariable("id") int id) {
		Staff staff = staffService.getStaffById(id);
		if (staff != null && staff.getPassportPhoto() != null) {
			return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG) // Automatically streams JPEG/PNG bytes
					.body(staff.getPassportPhoto());
		}
		return ResponseEntity.notFound().build();
	}

	@GetMapping("/staff_edit_form")
	public String editStaffForm(@RequestParam("id") int id, HttpSession session, Model model) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		Staff staff = staffService.getStaffById(id);
		if (staff == null) {
			return "redirect:/staff";
		}
		System.out.println("Editing Staff DOB: " + staff.getDob() + ", Joining Date: " + staff.getJoiningDate());
		model.addAttribute("staff", staff);
		return "staff_edit_form";
	}

	@PostMapping("/staff/update")
	public String updateStaff(@ModelAttribute("staff") Staff staff,
			@RequestParam(value = "photoFile", required = false) MultipartFile photoFile, HttpSession session,
			RedirectAttributes redirectAttributes) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}

		try {
			staffService.updateStaff(staff, photoFile);
			return "redirect:/staff";
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to update staff member: " + e.getMessage());
			return "redirect:/staff_edit_form?id=" + staff.getStaffId();
		}
	}

	@GetMapping("/staff_delete_process")
	public String deleteStaff(@RequestParam("id") int id, HttpSession session, RedirectAttributes redirectAttributes) {
		if (session == null || session.getAttribute("user") == null) {
			return "redirect:/log_in";
		}
		
		try {
			staffService.deleteStaff(id);
			redirectAttributes.addFlashAttribute("successMessage", "Staff member deleted successfully.");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("errorMessage", "Failed to delete staff member: " + e.getMessage());
		}
		
		return "redirect:/staff";
	}
}
//	---------------- demo ---------------============================================

//	@GetMapping("/")
//	public String home(Model model) {
//
//		List<Staff> staff = staffService.getAllStaff();
//
//		model.addAttribute("staff", staff);
//
//		return "index";
//	}

//	@GetMapping("/add")
//	public String addStaff(Model model) {
//
//		model.addAttribute("staff", new Staff());
//
//		return "addStaff";
//	}
//
//	@PostMapping("/save")
//	public String save(@Validated @ModelAttribute("staff") Staff staff, BindingResult result) {
//
//		if (result.hasErrors()) {
//			return "addStaff";
//		}
//
//		staffService.saveStaff(staff);
//
//		return "redirect:/";
//	}

//	@GetMapping("/search")
//	public String search(@RequestParam("keyword") String keyword, Model model) {
//
//		List<Staff> staff = staffService.searchByName(keyword);
//
//		model.addAttribute("staff", staff);
//
//		return "index";
//	}

//	@GetMapping("/edit/{id}")
//	public String edit(@PathVariable int staff_id, Model model) {
//
//		Staff staff = staffService.getStaffById(staff_id);
//
//		model.addAttribute("staff", staff);
//
//		return "editStaff";
//	}
//
//	@PostMapping("/update")
//	public String update(@ModelAttribute Staff staff) {
//
//		staffService.updateStaff(staff);
//
//		return "redirect:/";
//	}
//
//	@GetMapping("/delete/{id}")
//	public String delete(@PathVariable int staff_id) {
//
//		staffService.deleteStaff(staff_id);
//
//		return "redirect:/";
//	}
