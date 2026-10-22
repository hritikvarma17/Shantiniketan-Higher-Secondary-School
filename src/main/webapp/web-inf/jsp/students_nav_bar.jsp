<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="students_style.css">
<link rel="icon" type="image/x-icon" href="Images/favicon.ico">
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
								<li><a class="dropdown-item active" href="students"><i class="fa-solid fa-user-graduate me-2"></i>Students Records</a></li>
								<li><a class="dropdown-item" href="time_table"><i class="fa-solid fa-calendar-days me-2"></i>Time Table</a></li>
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
							href="achievements#institutional-honors">Institutional Awards</a></li>
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
						<li><a class="dropdown-item" href="facilities#sports-complex">Sports
								Complex</a></li>
						<li><a class="dropdown-item" href="facilities#bus-transport">Bus
								Transportation</a></li>
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
