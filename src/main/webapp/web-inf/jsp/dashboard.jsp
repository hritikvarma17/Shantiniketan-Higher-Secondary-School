
<%@page import="com.shantiniketan.dao.StudentsDAO"%>
<%
if (session.getAttribute("user") == null) {
	response.sendRedirect("log_in"); // Redirect to your login page
	return; // Stops the rest of the page from loading
}
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard | Shantiniketan Higher Secondary School</title>

<!-- Bootstrap 5 & Font Awesome -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@600;700;800;900&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Custom Style Sheet -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="dashboard_style.css">
<link rel="icon" type="image/x-icon" href="Images/favicon.ico">
</head>

<body class="bg-light">

	<!-- Header Navigation Bar -->
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
							<a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Management </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning active" href="dashboard"><i class="fa-solid fa-chart-line me-2"></i>Dashboard</a></li>
								<li><hr class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item" href="students"><i class="fa-solid fa-user-graduate me-2"></i>Students Records</a></li>
								<li><a class="dropdown-item" href="time_table"><i class="fa-solid fa-calendar-days me-2"></i>Time Table</a></li>
								<li><a class="dropdown-item" href="<%= request.getContextPath() %>/staff"><i class="fa-solid fa-chalkboard-user me-2"></i>Staff Directory</a></li>
								<li><a class="dropdown-item" href="transport"><i class="fa-solid fa-bus me-2"></i>Transport Fleet</a></li>
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
							data-bs-toggle="dropdown" role="button" aria-expanded="false">
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

	<!-- Main Dashboard Content -->
	<main class="container-fluid py-5 mt-5">
		<!-- Page Title / Welcome Banner -->
		<div class="row mb-4 align-items-center">
			<div class="col-md-8">
				<h2 class="fw-bold text-dark">
					<%
					String name = (String) session.getAttribute("user");
					out.print(name.toUpperCase() + "'s");
					%>
					Dashboard
				</h2>
				<p class="text-muted mb-0">Welcome back! Here is a live overview
					of school performance and metrics.</p>
			</div>
			<div class="col-md-4 text-md-end mt-3 mt-md-0">
				<span class="badge bg-dark text-warning p-2 px-3 rounded-pill">
					<i class="fa-solid fa-calendar-days me-1"></i> Current Academic Year
				</span>
			</div>
		</div>

		<!-- Row 1: Summary Metric Cards (Students, Staff, Users, Attendance, Buses) -->
		<div class="row row-cols-1 row-cols-md-3 row-cols-xl-4 g-4 mb-4">
			<!-- Total Students Card -->
			<div class="col">
				<div
					class="card border-0 shadow-sm rounded-4 border-start border-4 border-primary h-100">
					<div class="card-body">
						<div class="d-flex align-items-center justify-content-between">
							<div>
								<%
								long studentsCount = StudentsDAO.getStudentsCount();
								long staffCount = StudentsDAO.getStaffCount();
								long usersCount = StudentsDAO.getUsersCount();
								long transportCount = StudentsDAO.getTransportCount();
								%>
								<h6 class="text-muted fw-semibold mb-1">Total Students</h6>
								<h3 class="fw-bold mb-0"><%=studentsCount%></h3>
							</div>
							<div class="bg-primary-subtle text-primary p-3 rounded-circle">
								<i class="fa-solid fa-user-graduate fs-4"></i>
							</div>
						</div>
						<p class="text-success small mt-3 mb-0">
							<i class="fa-solid fa-check me-1"></i> All grades active
						</p>
					</div>
				</div>
			</div>

			<!-- Total Staff Card -->
			<div class="col">
				<div
					class="card border-0 shadow-sm rounded-4 border-start border-4 border-warning h-100">
					<div class="card-body">
						<div class="d-flex align-items-center justify-content-between">
							<div>
								<h6 class="text-muted fw-semibold mb-1">Total Staff</h6>
								<h3 class="fw-bold mb-0"><%=staffCount%></h3>
							</div>
							<div class="bg-warning-subtle text-warning p-3 rounded-circle">
								<i class="fa-solid fa-chalkboard-user fs-4"></i>
							</div>
						</div>
						<p class="text-muted small mt-3 mb-0">
							<i class="fa-solid fa-minus me-1"></i> 100% active retention
						</p>
					</div>
				</div>
			</div>


			<!-- Total Buses Card -->
			<div class="col">
				<div
					class="card border-0 shadow-sm rounded-4 border-start border-4 border-danger h-100">
					<div class="card-body">
						<div class="d-flex align-items-center justify-content-between">
							<div>
								<h6 class="text-muted fw-semibold mb-1">Transport Vehicles</h6>
								<h3 class="fw-bold mb-0"><%=transportCount%></h3>
							</div>
							<div class="bg-danger-subtle text-danger p-3 rounded-circle">
								<i class="fa-solid fa-bus fs-4"></i>
							</div>
						</div>
						<p class="text-success small mt-3 mb-0">
							<i class="fa-solid fa-check me-1"></i> All routes active
						</p>
					</div>
				</div>
			</div>

			<!-- Total System Users Card -->
			<div class="col">
				<div
					class="card border-0 shadow-sm rounded-4 border-start border-4 border-success h-100">
					<div class="card-body">
						<div class="d-flex align-items-center justify-content-between">
							<div>
								<h6 class="text-muted fw-semibold mb-1">Panel Users</h6>
								<h3 class="fw-bold mb-0"><%=usersCount%></h3>
							</div>
							<div class="bg-success-subtle text-success p-3 rounded-circle">
								<i class="fa-solid fa-users fs-4"></i>
							</div>
						</div>
						<p class="text-success small mt-3 mb-0">
							<i class="fa-solid fa-check me-1"></i> All grades active
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Row 2: Graphs Section -->
		<div class="row g-4 mb-4">
			<!-- Attendance Trend Graph -->
			<div class="col-lg-8">
				<div class="card border-0 shadow-sm rounded-4 h-100">
					<div class="card-body">
						<div
							class="d-flex justify-content-between align-items-center mb-3">
							<h5 class="fw-bold text-dark m-0">Student Attendance Trends</h5>
							<select class="form-select form-select-sm w-auto">
								<option selected>This Term</option>
								<option>Last Term</option>
							</select>
						</div>
						<!-- Canvas element for Chart.js -->
						<div style="height: 300px;">
							<canvas id="attendanceChart"></canvas>
						</div>
					</div>
				</div>
			</div>

			<!-- Student Grades Distribution -->
			<div class="col-lg-4">
				<div class="card border-0 shadow-sm rounded-4 h-100">
					<div class="card-body">
						<h5 class="fw-bold text-dark mb-3">Student Grade Distribution</h5>
						<div style="height: 300px;"
							class="d-flex justify-content-center align-items-center">
							<canvas id="gradesChart"></canvas>
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
	</main>


	<footer class="custom-school-footer pt-5 pb-3">
		<div class="container pt-3">
			<div class="row g-4 justify-content-between">

				<!-- Column 1: School Identity & Brief Intro -->
				<div class="col-lg-4 col-md-6">
					<a
						class="d-flex align-items-center gap-2 text-decoration-none mb-3"
						href="/"> <img src="Images/shantiniketan-logo-nav-bar.png"
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
	<!-- Bootstrap JS Bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Chart.js Library CDN -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<!-- Inline script to initialize mock charts -->
	<script>
		// Attendance Line Chart
		const ctxAttendance = document.getElementById('attendanceChart')
				.getContext('2d');
		new Chart(ctxAttendance, {
			type : 'line',
			data : {
				labels : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ],
				datasets : [ {
					label : 'Attendance %',
					data : [ 92, 95, 94, 96, 93, 91 ],
					borderColor : '#0d6efd',
					backgroundColor : 'rgba(13, 110, 253, 0.1)',
					fill : true,
					tension : 0.3
				} ]
			},
			options : {
				responsive : true,
				maintainAspectRatio : false
			}
		});

		// Student Grades Doughnut Chart
		const ctxGrades = document.getElementById('gradesChart').getContext(
				'2d');
		new Chart(ctxGrades, {
			type : 'doughnut',
			data : {
				labels : [ 'Grade A', 'Grade B', 'Grade C', 'Grade D' ],
				datasets : [ {
					data : [ 49, 35, 15, 1 ],
					backgroundColor : [ '#198754', '#0d6efd', '#ffc107',
							'#dc3545' ]
				} ]
			},
			options : {
				responsive : true,
				maintainAspectRatio : false
			}
		});
	</script>
	<script src="script.js"></script>
</body>

</html>


