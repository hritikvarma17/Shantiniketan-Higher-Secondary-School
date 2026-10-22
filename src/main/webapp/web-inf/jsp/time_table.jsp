<%-- 
    Document   : time_table
    Created on : 9 Oct 2026, 7:06:35 pm
    Author     : Administrator
--%>
<%
if (session.getAttribute("user") == null) {
	response.sendRedirect("log_in"); // Redirect to your login page
	return; // Stops the rest of the page from loading
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Time Table | Shantiniketan Higher Secondary School</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.3.1/css/all.css"
	integrity="sha512-x9WwyMYBnlXMNQ6kQ/Lyzu1NqIhLQKL5Oq6xByfXuRj7s9CskyCbLv/1IjqzJmXwFXWr0ov6jBV7Qbc0hh9nHg=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@600;700;800;900&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="icon" type="image/x-icon" href="Images/favicon.ico">
<style>
.custom-timetable-select {
	background-color: #212529 !important;
	color: #ffc107 !important;
	border: 1px solid #ffc107 !important;
	font-weight: 600;
	border-radius: 50rem !important;
	padding: 0.375rem 2rem 0.375rem 0.75rem;
	box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
	transition: all 0.2s ease-in-out;
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23ffc107' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='m2 5 6 6 6-6'/%3e%3c/svg%3e")
		!important;
	background-repeat: no-repeat !important;
	background-position: right 0.75rem center !important;
	background-size: 16px 12px !important;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
}

.custom-timetable-select:hover, .custom-timetable-select:focus {
	background-color: #343a40 !important;
	color: #ffca2c !important;
	border-color: #ffca2c !important;
	box-shadow: 0 0 0 0.25rem rgba(255, 193, 7, 0.25);
}

.custom-timetable-select option {
	background-color: #212529;
	color: #fff;
}
</style>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-xl navbar-dark bg-dark px-3 shadow fixed-top"
			style="max-height: 72px; border-bottom-left-radius: 50px; border-bottom: 2px solid #FFC107;">
			<div class="container-fluid">
				<a class="navbar-brand d-flex align-items-center gap-2" href="/">
					<img src="Images/shantiniketan-logo-nav-bar.png"
					alt="Shantiniketan School Logo" height="46">

					<div class="d-flex flex-column leading-tight">
						<span class="fw-bold text-uppercase"
							style="font-size: 1.15rem; letter-spacing: 1px; color: #f8f9fa;">
							Shantiniketan </span> <span class="text-warning text-uppercase"
							style="font-size: 0.65rem; letter-spacing: 1.5px; font-weight: 600;">
							Higher Secondary School </span>
					</div>
				</a>

				<button class="navbar-toggler border-0" type="button"
					data-bs-toggle="collapse" data-bs-target="#navMenu">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navMenu">
					<ul
						class="navbar-nav nav-pills ms-auto align-items-center gap-1 mt-3 mt-lg-0"
						style="cursor: pointer;">
						<li class="nav-item"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill"
							href="/"> Home </a></li>
						<%
						boolean isLoggedIn = (session.getAttribute("user") != null);
						if (isLoggedIn) {
						%>
						<!-- Grouped Management Dropdown including Dashboard -->
						<li class="nav-item dropdown hover-dropdown">
							<a class="active nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Management </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning" href="dashboard"><i class="fa-solid fa-chart-line me-2"></i>Dashboard</a></li>
								<li><hr class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item" href="students"><i class="fa-solid fa-user-graduate me-2"></i>Students Records</a></li>
								<li><a class="dropdown-item active" href="time_table"><i class="fa-solid fa-calendar-days me-2"></i>Time Table</a></li>
								<li><a class="dropdown-item" href="<%= request.getContextPath() %>/staff"><i class="fa-solid fa-chalkboard-user me-2"></i>Staff Directory</a></li>
								<li><a class="dropdown-item" href="<%= request.getContextPath() %>/transport"><i class="fa-solid fa-bus me-2"></i>Transport Fleet</a></li>
								<li><hr class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item text-warning" href="users"><i class="fa-solid fa-users-gear me-2"></i>System Users</a></li>
							</ul>
						</li>
						<%
						}
						%>

						<li class="nav-item"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill"
							href="admission"> Admission </a></li>

						<li class="nav-item dropdown hover-dropdown"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Events </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning"
									href="events">View All Events</a></li>
								<li>
									<hr class="dropdown-divider border-secondary opacity-50">
								</li>
								<li><a class="dropdown-item" href="events#upcoming-events">Upcoming
										Events</a></li>
								<li><a class="dropdown-item" href="events#cultural-fest">Annual
										Cultural Fest</a></li>
								<li><a class="dropdown-item" href="events#sports-meet">Annual
										Sports Meet</a></li>
								<li><a class="dropdown-item" href="events#stem-fair">Science
										& STEM Fair</a></li>
								<li>
									<hr class="dropdown-divider border-secondary opacity-50">
								</li>
								<li><a class="dropdown-item" href="events#media-gallery">Photo
										& Video Gallery</a></li>
							</ul></li>

						<li class="nav-item dropdown hover-dropdown"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
							data-bs-toggle="dropdown" role="button" aria-expanded="false">
								Achievements </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning"
									href="achievements">View All Achievements</a></li>
								<li>
									<hr class="dropdown-divider border-secondary opacity-50">
								</li>
								<li><a class="dropdown-item"
									href="achievements#board-toppers">Board Exam Toppers</a></li>
								<li><a class="dropdown-item"
									href="achievements#olympiad-winners">Olympiad Winners</a></li>
								<li><a class="dropdown-item"
									href="achievements#sports-champions">Sports Championships</a></li>
								<li><a class="dropdown-item"
									href="achievements#institutional-honors">Institutional
										Awards</a></li>
							</ul></li>

						<li class="nav-item dropdown hover-dropdown"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
							data-bs-toggle="dropdown" role="button" aria-expanded="false">
								Facilities </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning"
									href="facilities">View All Facilities</a></li>
								<li>
									<hr class="dropdown-divider border-secondary opacity-50">
								</li>
								<li><a class="dropdown-item"
									href="facilities#smart-classrooms">Smart Classrooms</a></li>
								<li><a class="dropdown-item" href="facilities#science-labs">Modern
										Science Labs</a></li>
								<li><a class="dropdown-item"
									href="facilities#computer-center">Computer & IT Center</a></li>
								<li><a class="dropdown-item"
									href="facilities#central-library">Central Library</a></li>
								<li><a class="dropdown-item"
									href="facilities#sports-complex">Sports Complex</a></li>
								<li><a class="dropdown-item"
									href="facilities#bus-transport">Bus Transportation</a></li>
							</ul></li>

						<li class="nav-item"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill"
							href="about_us">About Us </a></li>
						<%
						if (isLoggedIn) {
							String username = (String) session.getAttribute("user");
							String email = (String) session.getAttribute("email");
							if (email == null) email = "user@shantiniketan.edu";
							String initial = (username != null && !username.isEmpty()) ? username.substring(0, 1).toUpperCase() : "U";
						%>
						<li class="nav-item dropdown hover-dropdown ms-lg-2 mt-2 mt-lg-0">
							<a class="nav-link p-0 dropdown-toggle hide-arrow" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<div class="profile topper-avatar-circle text-warning bg-dark border border-warning rounded-circle d-flex align-items-center justify-content-center shadow-sm user-avatar-main">
									<span class="fw-bold fs-6"><%= initial %></span>
								</div>
							</a>
							<ul class="dropdown-menu dropdown-menu-dark dropdown-menu-end shadow-lg p-3 mt-2 user-dropdown-menu">
								<!-- User Info Header -->
								<li class="mb-2 px-2 pt-1">
									<div class="d-flex align-items-center gap-3">
										<div class="bg-warning text-dark fw-bold rounded-circle d-flex align-items-center justify-content-center flex-shrink-0 shadow-sm user-avatar-inner">
											<%= initial %>
										</div>
										<div class="overflow-hidden">
											<h6 class="fw-bold text-white mb-0 text-truncate user-dropdown-name"><%= username %></h6>
											<small class="text-warning text-truncate d-block user-dropdown-email"><%= email %></small>
										</div>
									</div>
								</li>
								<li><hr class="dropdown-divider border-secondary opacity-50 my-2"></li>
								<li>
									<a class="dropdown-item rounded-2 py-2 text-danger fw-semibold d-flex align-items-center gap-2" href="logout">
										<i class="fa-solid fa-right-from-bracket"></i> Log Out
									</a>
								</li>
							</ul>
						</li>
						<%
						} else {
						%>
						<li class="nav-item ms-lg-2 mt-2 mt-lg-0"><a
							class="btn btn-warning rounded-pill px-4 py-2 fw-semibold login-pill-btn"
							href="log_in"> Login </a></li>
						<%
						}
						%>

					</ul>
				</div>
			</div>
		</nav>

	</header>



	<main class="container py-5 mt-5">
		<%
		String selectedClass = request.getParameter("selectedClass");
		if (selectedClass == null || selectedClass.trim().isEmpty()) {
			selectedClass = "NURSERY";
		}

		String selectedTeacher = request.getParameter("selectedTeacher");
		if (selectedTeacher == null || selectedTeacher.trim().isEmpty()) {
			selectedTeacher = "Dr. Anita Roy";
		}
		%>
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h2 class="fw-bold mb-2">School Time Tables</h2>
				<p class="text-muted">Comprehensive class-wise and teacher-wise
					schedules for Academic Session</p>
			</div>
		</div>

		<!-- Class Time Table Section -->
		<div class="card border-0 shadow-sm rounded-4 mb-5"
			id="class-table-section">
			<div
				class="card-header bg-dark text-white rounded-top-4 py-3 d-flex justify-content-between align-items-center flex-wrap gap-3">
				<h5 class="mb-0 fw-bold">
					<i class="fa-solid fa-calendar-days me-2 text-warning"></i> Class
					Time Table
				</h5>
				<form method="GET" action='#'
					class="d-flex align-items-center gap-2">
					<input type="hidden" name="selectedTeacher"
						value="<%=selectedTeacher%>"> <select name="selectedClass"
						class="form-select form-select-sm custom-timetable-select"
						onchange="this.form.submit()">
						<option value="NURSERY"
							<%="NURSERY".equals(selectedClass) ? "selected" : ""%>>Nursery</option>
						<option value="JR_KG"
							<%="JR_KG".equals(selectedClass) ? "selected" : ""%>>Junior
							KG</option>
						<option value="SR_KG"
							<%="SR_KG".equals(selectedClass) ? "selected" : ""%>>Senior
							KG</option>
						<option value="CLASS_1"
							<%="CLASS_1".equals(selectedClass) ? "selected" : ""%>>Class
							I</option>
						<option value="CLASS_2"
							<%="CLASS_2".equals(selectedClass) ? "selected" : ""%>>Class
							II</option>
						<option value="CLASS_3"
							<%="CLASS_3".equals(selectedClass) ? "selected" : ""%>>Class
							III</option>
						<option value="CLASS_4"
							<%="CLASS_4".equals(selectedClass) ? "selected" : ""%>>Class
							IV</option>
						<option value="CLASS_5"
							<%="CLASS_5".equals(selectedClass) ? "selected" : ""%>>Class
							V</option>
						<option value="CLASS_6"
							<%="CLASS_6".equals(selectedClass) ? "selected" : ""%>>Class
							VI</option>
						<option value="CLASS_7"
							<%="CLASS_7".equals(selectedClass) ? "selected" : ""%>>Class
							VII</option>
						<option value="CLASS_8"
							<%="CLASS_8".equals(selectedClass) ? "selected" : ""%>>Class
							VIII</option>
						<option value="CLASS_9"
							<%="CLASS_9".equals(selectedClass) ? "selected" : ""%>>Class
							IX</option>
						<option value="CLASS_10"
							<%="CLASS_10".equals(selectedClass) ? "selected" : ""%>>Class
							X</option>
						<option value="CLASS_11"
							<%="CLASS_11".equals(selectedClass) ? "selected" : ""%>>Class
							XI</option>
						<option value="CLASS_12"
							<%="CLASS_12".equals(selectedClass) ? "selected" : ""%>>Class
							XII</option>
					</select>
				</form>
			</div>
			<div class="card-body p-4 table-responsive">
				<table class="table table-hover align-middle">
					<thead class="table-dark">
						<tr>
							<th>Grade / Stream</th>
							<th>Board</th>
							<th>Day</th>
							<th>Period</th>
							<th>Subject</th>
							<th>Teacher</th>
							<th>Timing</th>
							<th>Room</th>
						</tr>
					</thead>
					<tbody>
						<%
						try {
							java.sql.Connection con = com.shantiniketan.dao.LoginDAO.getConn();
							String sql = "SELECT * FROM time_table WHERE applying_grade = ? ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'), period_number";

							java.sql.PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, selectedClass);
							java.sql.ResultSet rs = ps.executeQuery();
							boolean hasRows = false;
							while (rs.next()) {
								hasRows = true;
								String day = rs.getString("day_of_week");
								String rowClass = "";
								if ("Monday".equals(day))
							rowClass = "table-primary";
								else if ("Tuesday".equals(day))
							rowClass = "table-success";
								else if ("Wednesday".equals(day))
							rowClass = "table-warning";
								else if ("Thursday".equals(day))
							rowClass = "table-info";
								else if ("Friday".equals(day))
							rowClass = "table-danger";
								else if ("Saturday".equals(day))
							rowClass = "table-light";
						%>
						<tr class="<%=rowClass%>">
							<td><%=rs.getString("applying_grade")%> <%=rs.getString("selected_stream") != null ? "(" + rs.getString("selected_stream") + ")" : ""%></td>
							<td><%=rs.getString("curriculum_board")%></td>
							<td><span class="badge bg-dark"><%=day%></span></td>
							<td><%=rs.getInt("period_number")%></td>
							<td class="fw-semibold"><%=rs.getString("subject_name")%></td>
							<td><%=rs.getString("teacher_name")%></td>
							<td><%=rs.getTime("start_time")%> - <%=rs.getTime("end_time")%></td>
							<td><%=rs.getString("room_number")%></td>
						</tr>
						<%
						}
						if (!hasRows) {
						%>
						<tr>
							<td colspan="8" class="text-center text-muted">No timetable
								records found for the selected class.</td>
						</tr>
						<%
						}
						con.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div id='teacher-table-sec'>
			<br>
			<hr>
			<br> <br>
		</div>
		<!-- Teacher's Time Table Section -->
		<div class="card border-0 shadow-sm rounded-4 mb-5"
			id="teacher-table-section">
			<div
				class="card-header bg-dark text-white rounded-top-4 py-3 d-flex justify-content-between align-items-center flex-wrap gap-3">
				<h5 class="mb-0 fw-bold">
					<i class="fa-solid fa-chalkboard-user me-2 text-warning"></i>
					Teacher's Time Table
				</h5>
				<form method="GET" action="#teacher-table-sec"
					class="d-flex align-items-center gap-2">
					<input type="hidden" name="selectedClass"
						value="<%=selectedClass%>"> <select name="selectedTeacher"
						class="form-select form-select-sm custom-timetable-select"
						onchange="this.form.submit()">
						<%
						try {
							java.sql.Connection conT = com.shantiniketan.dao.LoginDAO.getConn();
							java.sql.PreparedStatement psT = conT.prepareStatement(
							"SELECT DISTINCT teacher_name FROM time_table WHERE teacher_name IS NOT NULL ORDER BY teacher_name");
							java.sql.ResultSet rsT = psT.executeQuery();
							while (rsT.next()) {
								String tName = rsT.getString("teacher_name");
						%>
						<option value="<%=tName%>"
							<%=tName.equals(selectedTeacher) ? "selected" : ""%>><%=tName%></option>
						<%
						}
						conT.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</select>
				</form>
			</div>
			<div class="card-body p-4 table-responsive">
				<table class="table table-hover align-middle">
					<thead class="table-dark">
						<tr>
							<th>Teacher Name</th>
							<th>Subject</th>
							<th>Class / Grade</th>
							<th>Day</th>
							<th>Period</th>
							<th>Timing</th>
							<th>Room</th>
						</tr>
					</thead>
					<tbody>
						<%
						try {
							java.sql.Connection con2 = com.shantiniketan.dao.LoginDAO.getConn();
							String sql2 = "SELECT * FROM time_table WHERE teacher_name = ? ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'), period_number";

							java.sql.PreparedStatement ps2 = con2.prepareStatement(sql2);
							ps2.setString(1, selectedTeacher);
							java.sql.ResultSet rs2 = ps2.executeQuery();
							boolean hasRows2 = false;
							while (rs2.next()) {
								hasRows2 = true;
								String day2 = rs2.getString("day_of_week");
								String rowClass2 = "";
								if ("Monday".equals(day2))
							rowClass2 = "table-primary";
								else if ("Tuesday".equals(day2))
							rowClass2 = "table-success";
								else if ("Wednesday".equals(day2))
							rowClass2 = "table-warning";
								else if ("Thursday".equals(day2))
							rowClass2 = "table-info";
								else if ("Friday".equals(day2))
							rowClass2 = "table-danger";
								else if ("Saturday".equals(day2))
							rowClass2 = "table-light";
						%>
						<tr class="<%=rowClass2%>">
							<td class="fw-bold"><%=rs2.getString("teacher_name")%></td>
							<td class="fw-semibold"><%=rs2.getString("subject_name")%></td>
							<td><%=rs2.getString("applying_grade")%> <%=rs2.getString("selected_stream") != null ? "(" + rs2.getString("selected_stream") + ")" : ""%></td>
							<td><span class="badge bg-dark"><%=day2%></span></td>
							<td><%=rs2.getInt("period_number")%></td>
							<td><%=rs2.getTime("start_time")%> - <%=rs2.getTime("end_time")%></td>
							<td><%=rs2.getString("room_number")%></td>
						</tr>
						<%
						}
						if (!hasRows2) {
						%>
						<tr>
							<td colspan="7" class="text-center text-muted">No timetable
								records found for the selected teacher.</td>
						</tr>
						<%
						}
						con2.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</main>





	<footer class="custom-school-footer pt-5 pb-3">
		<div class="container pt-3">
			<div class="row g-4 justify-content-between">

				<!-- Column 1: School Identity & Brief Intro -->
				<div class="col-lg-4 col-md-6">
					<a href="/"
						class="d-flex align-items-center gap-2 text-decoration-none mb-3">
						<img src="Images/shantiniketan-logo-nav-bar.png"
						alt="Shantiniketan Logo" height="46">
						<div class="d-flex flex-column leading-tight">
							<span class="fw-bold tracking-wide text-uppercase text-white"
								style="font-size: 1.15rem; letter-spacing: 1px;">
								Shantiniketan </span> <span class="text-warning text-uppercase"
								style="font-size: 0.65rem; letter-spacing: 1.5px; font-weight: 700;">
								Higher Secondary School </span>
						</div>
					</a>
					<p class="footer-desc small pe-lg-4 mb-4">Committed to
						nurturing intellectual curiosity, ethical character, and academic
						leadership through modern experiential learning and values-based
						mentorship.</p>
					<!-- Brand-Colored Social Icons -->
					<div class="d-flex gap-2">
						<a href="#" class="social-icon-btn social-fb"
							aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
						<a href="#" class="social-icon-btn social-x"
							aria-label="X (Twitter)"><i class="fa-brands fa-x-twitter"></i></a>
						<a href="#" class="social-icon-btn social-ig"
							aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
						<a href="#" class="social-icon-btn social-yt" aria-label="YouTube"><i
							class="fa-brands fa-youtube"></i></a> <a href="#"
							class="social-icon-btn social-li" aria-label="LinkedIn"><i
							class="fa-brands fa-linkedin-in"></i></a>
					</div>
				</div>

				<!-- Column 2: Quick Navigation -->
				<div class="col-lg-2 col-md-6 col-6">
					<h6 class="footer-title small tracking-wider mb-3">Navigation</h6>
					<ul class="list-unstyled footer-links small">
						<li class="mb-2"><a href="/"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Home</a></li>
						<li class="mb-2"><a href="about_us"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								About Us</a></li>
						<li class="mb-2"><a href="admission"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Admissions</a></li>
						<li class="mb-2"><a href="facilities"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Campus Facilities</a></li>
						<li class="mb-2"><a href="events"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Events & Activities</a></li>
						<li class="mb-2"><a href="achievements"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Achievements</a></li>
					</ul>
				</div>


				<!-- Column 4: Contact & Office Hours -->
				<div class="col-lg-3 col-md-6">
					<h6 class="footer-title small tracking-wider mb-3">Campus
						Office</h6>
					<div class="d-flex flex-column gap-2 small">
						<div class="footer-contact-item d-flex align-items-start gap-2">
							<i class="fa-solid fa-location-dot text-warning mt-1"></i> <span>Main
								Institutional Campus, Knowledge Corridor</span>
						</div>
						<div class="footer-contact-item d-flex align-items-center gap-2">
							<i class="fa-solid fa-phone text-warning"></i> <span>+91
								(0) 79 2345 6789</span>
						</div>
						<div class="footer-contact-item d-flex align-items-center gap-2">
							<i class="fa-solid fa-clock text-warning"></i> <span>Mon ?
								Sat: 8:00 AM ? 4:00 PM</span>
						</div>
						<div class="footer-contact-item d-flex align-items-center gap-2">
							<i class="fa-solid fa-envelope text-warning"></i> <a
								href="mailto:admissions@shantiniketan.edu"
								class="text-decoration-none text-light opacity-90">admissions@shantiniketan.edu</a>
						</div>
					</div>
				</div>

			</div>

			<hr class="footer-divider my-4">

			<!-- Bottom Bar: Copyright & Policy Links -->
			<div class="row align-items-center small text-secondary">
				<div class="col-md-6 text-center text-md-start mb-2 mb-md-0">
					&copy; <span id="currentYear"></span> Shantiniketan Higher
					Secondary School. All rights reserved.
				</div>
				<div class="col-md-6 text-center text-md-end footer-bottom-links">
					<a href="#" class="me-3">Privacy Policy</a> <a href="#"
						class="me-3">Terms of Use</a> <a href="#">Sitemap</a>
				</div>
			</div>
		</div>
	</footer>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>
	<script src="script.js"></script>
</body>
</html>
