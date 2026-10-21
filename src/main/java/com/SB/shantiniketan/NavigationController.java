package com.SB.shantiniketan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NavigationController {

	// ==================== JSP ====================
	@GetMapping({ "/", "/home" })
	public String home() {
		return "forward:/web-inf/jsp/index.jsp";
	}

	@GetMapping("/logout")
	public String logout() {
		return "forward:/web-inf/jsp/logout.jsp";
	}
	@GetMapping("/dashboard")
	public String dashboard() {
		return "forward:/web-inf/jsp/dashboard.jsp";
	} 
	@GetMapping("/events")
	public String events() {
		return "forward:/web-inf/jsp/events.jsp";
	}  
	@GetMapping("/achievements")
	public String achievements() {
		return "forward:/web-inf/jsp/achievements.jsp";
	}
	@GetMapping("/facilities")
	public String facilities() {
		return "forward:/web-inf/jsp/facilities.jsp";
	} 
	@GetMapping("/about_us")
	public String about_us() {
		return "forward:/web-inf/jsp/about_us.jsp";
	}
	@GetMapping("/attendance")
	public String attendance() {
		return "forward:/web-inf/jsp/attendance.jsp";
	}
	@GetMapping("/time_table")
	public String time_table() {
		return "forward:/web-inf/jsp/time_table.jsp";
	}
	
	@GetMapping("/student_edit_nav_bar")
	public String student_edit_nav_bar() {
		return "forward:/web-inf/jsp/student_edit_nav_bar.jsp";
	}

	@GetMapping("/students_footer")
	public String students_footer() {
		return "forward:/web-inf/jsp/students_footer.jsp";
	}
	
	@GetMapping("/students_nav_bar")
	public String students_nav_bar() {
		return "forward:/web-inf/jsp/students_nav_bar.jsp";
	}
	
	@PostMapping("/loginprocess")
	public String processLoginViaJsp() {
		return "forward:/web-inf/jsp/loginprocess.jsp";
	}
	
	

	// ==================== HTML ====================
	@GetMapping("/admission")
	public String admission() {
		return "forward:/admission.html";
	}
 

	@GetMapping("/log_in")
	public String log_in() {
		return "redirect:/log_in.html";
	}
 
}