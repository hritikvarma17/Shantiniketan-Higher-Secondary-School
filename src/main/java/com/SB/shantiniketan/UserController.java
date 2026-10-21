package com.SB.shantiniketan;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public String viewUsers(@RequestParam(value = "searchQuery", required = false) String searchQuery,
            HttpSession session, Model model) {

        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        List<User> userList;
        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            userList = userService.searchUsers(searchQuery.trim());
        } else {
            userList = userService.getAllUsers();
        }

        model.addAttribute("userList", userList);
        model.addAttribute("searchQuery", searchQuery);

        return "users"; // Resolves to users.html
    }

    @GetMapping({ "/users/add", "/users_add_form" })
    public String addUserForm(Model model, HttpSession session) {
        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        if (!model.containsAttribute("userObj")) {
            model.addAttribute("userObj", new User());
        }
        return "users_add_form";
    }

    @PostMapping("/users/save")
    public String saveUser(@ModelAttribute("userObj") User user, HttpSession session,
            RedirectAttributes redirectAttributes) {
        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        try {
            userService.saveUser(user);
            redirectAttributes.addFlashAttribute("successMessage", "User saved successfully.");
            return "redirect:/users";
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to save user: " + e.getMessage());
            return "redirect:/users/add";
        }
    }

    @GetMapping("/users_edit_form")
    public String editUserForm(@RequestParam("id") int id, HttpSession session, Model model) {
        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        User user = userService.getUserById(id);
        if (user == null) {
            return "redirect:/users";
        }
        model.addAttribute("userObj", user);
        return "users_edit_form";
    }

    @PostMapping("/users/update")
    public String updateUser(@ModelAttribute("userObj") User user, HttpSession session,
            RedirectAttributes redirectAttributes) {
        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        try {
            userService.updateUser(user);
            redirectAttributes.addFlashAttribute("successMessage", "User updated successfully.");
            return "redirect:/users";
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to update user: " + e.getMessage());
            return "redirect:/users_edit_form?id=" + user.getId();
        }
    }

    @GetMapping("/users_delete_process")
    public String deleteUser(@RequestParam("id") int id, HttpSession session, RedirectAttributes redirectAttributes) {
        if (session == null || session.getAttribute("user") == null) {
            return "redirect:/log_in";
        }

        try {
            userService.deleteUser(id);
            redirectAttributes.addFlashAttribute("successMessage", "User deleted successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to delete user: " + e.getMessage());
        }

        return "redirect:/users";
    }
}