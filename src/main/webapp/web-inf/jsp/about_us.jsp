<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us | Shantiniketan Higher Secondary School</title>

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

<!-- Custom Stylesheet -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="about_us_style.css">
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
								<li><a class="dropdown-item fw-bold text-warning" href="dashboard"><i class="fa-solid fa-chart-line me-2"></i>Dashboard</a></li>
								<li><hr class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item" href="students"><i class="fa-solid fa-user-graduate me-2"></i>Students Records</a></li>
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
							class="active nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill"
							href="about_us">About Us </a></li>

						<%
						if (isLoggedIn) {
							String username = (String) session.getAttribute("user");
							String email = (String) session.getAttribute("email");
							if (email == null)
								email = "user@shantiniketan.edu";
							String initial = (username != null && !username.isEmpty()) ? username.substring(0, 1).toUpperCase() : "U";
						%>
						<li class="nav-item dropdown hover-dropdown ms-lg-2 mt-2 mt-lg-0">
							<a class="nav-link p-0 dropdown-toggle hide-arrow" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<div
									class="profile topper-avatar-circle text-warning bg-dark border border-warning rounded-circle d-flex align-items-center justify-content-center shadow-sm user-avatar-main">
									<span class="fw-bold fs-6"><%=initial%></span>
								</div>
						</a>
							<ul
								class="dropdown-menu dropdown-menu-dark dropdown-menu-end shadow-lg p-3 mt-2 user-dropdown-menu">
								<!-- User Info Header -->
								<li class="mb-2 px-2 pt-1">
									<div class="d-flex align-items-center gap-3">
										<div
											class="bg-warning text-dark fw-bold rounded-circle d-flex align-items-center justify-content-center flex-shrink-0 shadow-sm user-avatar-inner">
											<%=initial%>
										</div>
										<div class="overflow-hidden">
											<h6
												class="fw-bold text-white mb-0 text-truncate user-dropdown-name"><%=username%></h6>
											<small
												class="text-warning text-truncate d-block user-dropdown-email"><%=email%></small>
										</div>
									</div>
								</li>
								<li><hr
										class="dropdown-divider border-secondary opacity-50 my-2"></li>
								<li><a
									class="dropdown-item rounded-2 py-2 text-danger fw-semibold d-flex align-items-center gap-2"
									href="logout"> <i class="fa-solid fa-right-from-bracket"></i>
										Log Out
								</a></li>
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

	<main class="about-page-wrapper">

		<!-- 1. HERO HEADER BANNER -->
		<section class="about-hero-section text-center text-white py-5">
			<div class="container py-4">
				<span
					class="badge bg-warning text-dark px-3 py-2 rounded-pill fw-bold text-uppercase tracking-wider mb-3">
					Estd. 1998 &bull; 28+ Years of Service </span>
				<h1 class="display-5 fw-bold mb-3">Nurturing Minds, Building
					Character</h1>
				<p class="lead opacity-90 mx-auto" style="max-width: 780px;">
					Shantiniketan Higher Secondary School blends traditional cultural
					values with 21st-century academic rigor, empowering students to
					become ethical thinkers, curious innovators, and responsible global
					leaders.</p>
				<div class="d-flex justify-content-center flex-wrap gap-2 mt-4">
					<a href="#our-story"
						class="btn btn-warning rounded-pill px-4 py-2 small fw-bold text-dark">Our
						Heritage</a> <a href="#mission-vision"
						class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Mission
						& Vision</a> <a href="#principal-message"
						class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Principal's
						Address</a> <a href="#leadership-team"
						class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Leadership</a>
				</div>
			</div>
		</section>

		<!-- 2. FOUNDING HERITAGE & STORY -->
		<section class="py-5 bg-white" id="our-story">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							The Shantiniketan Journey </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Inspired by
							Gurudev's Ideals of Holistic Education</h2>
						<p class="text-muted mb-3">Established in 1998 with an initial
							cohort of just 60 learners, Shantiniketan Higher Secondary School
							was born from a transformative vision: to provide education that
							breaks the confines of rote memorization and connects students
							directly with nature, scientific experimentation, and ethical
							virtues.</p>
						<p class="text-muted mb-4">Over nearly three decades, our
							campus has flourished into a premier K-12 institution serving
							over 2,200 students. We are recognized for our
							continuous 100% board examination pass records, state athletic
							championships, and award-winning robotics programs.</p>
						<div class="row g-3">
							<div class="col-sm-6">
								<div
									class="d-flex align-items-center gap-3 p-3 bg-light rounded-3">
									<i class="fa-solid fa-chalkboard-user text-success fs-3"></i>
									<div>
										<h5 class="fw-bold mb-0 text-dark">85+</h5>
										<small class="text-muted">Specialist Educators</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div
									class="d-flex align-items-center gap-3 p-3 bg-light rounded-3">
									<i class="fa-solid fa-graduation-cap text-primary fs-3"></i>
									<div>
										<h5 class="fw-bold mb-0 text-dark">12,000+</h5>
										<small class="text-muted">Proud Alumni Worldwide</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="about-image-frame position-relative shadow-sm rounded-4 overflow-hidden about-us-image-card">
							<img
								src="Images/Inspired by Gurudev's Ideals of Holistic Education.png"
								alt="Shantiniketan Campus and Students"
								class="img-fluid w-100 object-fit-cover" style="height: 400px;">
							<div
								class="about-floating-experience bg-white p-3 rounded-4 shadow position-absolute bottom-0 start-0 m-3 d-flex align-items-center gap-3 border">
								<div
									class="exp-icon bg-warning text-dark fw-bold fs-3 rounded-3 d-flex align-items-center justify-content-center"
									style="width: 54px; height: 54px;">28</div>
								<div>
									<h6 class="fw-bold mb-0 text-dark">Years of Service</h6>
									<small class="text-muted">Excellence in Pedagogy</small>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 3. MISSION, VISION & GUIDING VALUES -->
		<section class="py-5 bg-light" id="mission-vision">
			<div class="container py-3">
				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Guiding Compass </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Our Core
						Philosophical Foundations</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">The
						institutional values that direct every classroom interaction,
						academic framework, and community outreach initiative.</p>
				</div>

				<div class="row g-4">
					<!-- Vision Card -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm value-card card-accent-success scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div class="value-icon-box bg-success-subtle text-success mb-3">
									<i class="fa-solid fa-eye fs-4"></i>
								</div>
								<h4 class="fw-bold text-dark mb-2">Our Vision</h4>
								<p class="text-muted small flex-grow-1">To be a progressive
									educational center that shapes agile thinkers, empathetic
									citizens, and resilient pioneers prepared to lead positive
									change in an AI-driven, interconnected global community.</p>
								<div class="border-top pt-3 text-success small fw-semibold">
									<i class="fa-solid fa-circle-check me-1"></i> Vision 2030
									Ready
								</div>
							</div>
						</div>
					</div>

					<!-- Mission Card -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm value-card card-accent-primary scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div class="value-icon-box bg-primary-subtle text-primary mb-3">
									<i class="fa-solid fa-bullseye fs-4"></i>
								</div>
								<h4 class="fw-bold text-dark mb-2">Our Mission</h4>
								<p class="text-muted small flex-grow-1">To deliver an
									inclusive, experiential learning ecosystem rooted in
									intellectual curiosity, analytical inquiry, ethical integrity,
									and respect for environmental sustainability.</p>
								<div class="border-top pt-3 text-primary small fw-semibold">
									<i class="fa-solid fa-circle-check me-1"></i> Experiential
									Excellence
								</div>
							</div>
						</div>
					</div>

					<!-- Core Ethos Card -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm value-card card-accent-warning scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="value-icon-box bg-warning-subtle text-warning-emphasis mb-3">
									<i class="fa-solid fa-heart fs-4"></i>
								</div>
								<h4 class="fw-bold text-dark mb-2">Our Core Values</h4>
								<p class="text-muted small flex-grow-1">Integrity in truth,
									compassion in diversity, discipline in action, and relentless
									curiosity in discovery - the cornerstones of all student
									development at Shantiniketan.</p>
								<div
									class="border-top pt-3 text-warning-emphasis small fw-semibold">
									<i class="fa-solid fa-circle-check me-1"></i> Character First
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 4. PRINCIPAL'S ADDRESS -->
		<section class="py-5 bg-white" id="principal-message">
			<div class="container py-3">
				<div
					class="card border-0 shadow-sm rounded-4 overflow-hidden principal-card">
					<div class="row g-0 align-items-center">
						<div class="col-lg-4 text-center p-4 p-md-5 bg-light border-end">
							<div class="principal-avatar-wrap mx-auto mb-3 shadow-sm">
								<img src="Images/Dr. Arundhati Roy - Principal.png"
									alt="Principal of Shantiniketan"
									class="img-fluid rounded-circle object-fit-cover"
									style="width: 140px; height: 140px;">
							</div>
							<h5 class="fw-bold text-dark mb-1">Dr. Arundhati Roy</h5>
							<span
								class="badge bg-success-subtle text-success px-3 py-1 rounded-pill small fw-semibold mb-2">Principal
								& Academic Director</span>
							<p class="text-muted small mb-0">Ph.D. in Educational
								Pedagogy &bull; 24 Years Experience</p>
						</div>
						<div class="col-lg-8 p-4 p-md-5">
							<span
								class="badge bg-warning-subtle text-warning-emphasis px-3 py-1 rounded-pill fw-bold text-uppercase tracking-wider small mb-3">
								Word from the Principal </span>
							<h3 class="fw-bold text-dark mb-3">"Education is Not the
								Filling of a Pail, But the Lighting of a Fire"</h3>
							<p class="text-muted lead fs-6 mb-3">Welcome to Shantiniketan
								Higher Secondary School. When parents entrust their children to
								us, they place their highest aspirations in our care. We treat
								that privilege with solemn responsibility.</p>
							<p class="text-muted small mb-4">Our purpose is not merely to
								prepare young minds for examinations, but to prepare them for
								life. We encourage students to question deeply, fail forward
								without fear, and understand that intellectual greatness is
								hollow without empathy and civic virtue.</p>
							<div
								class="d-flex align-items-center justify-content-between border-top pt-3">
								<div class="text-secondary small">
									<i class="fa-solid fa-envelope text-warning me-2"></i>principal@shantiniketan.edu
								</div>
								<span class="fw-bold font-monospace text-dark opacity-75">~
									Arundhati Roy</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 5. ACADEMIC LEADERSHIP TEAM -->
		<section class="py-5 bg-light" id="leadership-team">
			<div class="container py-3">
				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-primary-subtle text-primary px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Guiding Leaders </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Academic
						Leadership & Department Heads</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">
						Experienced educators shaping our curriculum, student welfare, and
						pedagogical excellence.</p>
				</div>

				<div class="row g-4">
					<!-- Leader 1 -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm mentor-card text-center scroll-reveal">
							<div class="card-body p-4">
								<div
									class="mentor-avatar-box bg-primary-subtle text-primary mx-auto mb-3">
									<!-- <i class="fa-solid fa-user-tie fs-2"></i> -->
									<img
										src="Images/Prof. Rajiv Sharma - Vice Principal (Academics) - Copy.png">
								</div>
								<h5 class="fw-bold text-dark mb-1">Prof. Rajiv Sharma</h5>
								<small class="text-primary fw-semibold d-block mb-2">Vice
									Principal (Academics)</small>
								<p class="text-muted small mb-0">M.Sc., B.Ed. &bull; Overseeing
									CBSE & Higher Secondary Academic Affairs.</p>
							</div>
						</div>
					</div>

					<!-- Leader 2 -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm mentor-card text-center scroll-reveal">
							<div class="card-body p-4">
								<div
									class="mentor-avatar-box bg-success-subtle text-success mx-auto mb-3">
									<!-- <i class="fa-solid fa-flask-vial fs-2"></i> -->
									<img
										src="Images/Dr. Meenakshi S - Dean of Science & STEM - Copy.png">
								</div>
								<h5 class="fw-bold text-dark mb-1">Dr. Meenakshi S.</h5>
								<small class="text-success fw-semibold d-block mb-2">Dean
									of Science & STEM</small>
								<p class="text-muted small mb-0">Ph.D. in Physics &bull; Spearheads National Olympiad & Innovation Labs.</p>
							</div>
						</div>
					</div>

					<!-- Leader 3 -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm mentor-card text-center scroll-reveal">
							<div class="card-body p-4">
								<div
									class="mentor-avatar-box bg-warning-subtle text-warning-emphasis mx-auto mb-3">
									<!-- <i class="fa-solid fa-chart-line fs-2"></i> -->
									<img
										src="Images/Vikramaditya Rao - Head of Commerce - Copy.png">
								</div>
								<h5 class="fw-bold text-dark mb-1">Vikramaditya Rao</h5>
								<small class="text-warning-emphasis fw-semibold d-block mb-2">Head
									of Commerce</small>
								<p class="text-muted small mb-0">M.Com, CA-Inter &bull; Mentoring Financial Literacy & Business Studies.</p>
							</div>
						</div>
					</div>

					<!-- Leader 4 -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm mentor-card text-center scroll-reveal">
							<div class="card-body p-4">
								<div
									class="mentor-avatar-box bg-danger-subtle text-danger mx-auto mb-3">
									<!-- <i class="fa-solid fa-medal fs-2"></i> -->
									<img
										src="Images/Col. P. K. Nambiar - Director of Sports & Discipline - Copy.png">
								</div>
								<h5 class="fw-bold text-dark mb-1">Col. P. K. Nambiar</h5>
								<small class="text-danger fw-semibold d-block mb-2">Director
									of Sports & Discipline</small>
								<p class="text-muted small mb-0">Retd. Indian Army &bull; Athletic Programs, NCC, and Campus Security.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 6. CHRONOLOGICAL MILESTONES -->
		<section class="py-5 bg-white" id="timeline-section">
			<div class="container py-3">
				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Our Growth </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Key
						Institutional Milestones</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">A brief
						retrospective of our journey from humble beginnings to regional
						leadership.</p>
				</div>

				<div class="row g-4">
					<div class="col-md-3">
						<div
							class="timeline-step p-4 rounded-4 bg-light border-start border-4 border-warning h-100 scroll-reveal">
							<h3 class="fw-bold text-warning mb-1">1998</h3>
							<h6 class="fw-bold text-dark mb-2">Foundation Stone Laid</h6>
							<p class="text-muted small mb-0">Inaugurated with primary
								grades and 4 teachers, focusing on community education.</p>
						</div>
					</div>
					<div class="col-md-3">
						<div
							class="timeline-step p-4 rounded-4 bg-light border-start border-4 border-success h-100 scroll-reveal">
							<h3 class="fw-bold text-success mb-1">2008</h3>
							<h6 class="fw-bold text-dark mb-2">Senior Secondary Upgrade</h6>
							<p class="text-muted small mb-0">Expanded to Class XII with
								specialized Science & Commerce faculties.</p>
						</div>
					</div>
					<div class="col-md-3">
						<div
							class="timeline-step p-4 rounded-4 bg-light border-start border-4 border-primary h-100 scroll-reveal">
							<h3 class="fw-bold text-primary mb-1">2018</h3>
							<h6 class="fw-bold text-dark mb-2">Smart Campus Transition</h6>
							<p class="text-muted small mb-0">Integrated 4K digital
								classrooms, computer research suites, and sports turf.</p>
						</div>
					</div>
					<div class="col-md-3">
						<div
							class="timeline-step p-4 rounded-4 bg-light border-start border-4 border-danger h-100 scroll-reveal">
							<h3 class="fw-bold text-danger mb-1">2026</h3>
							<h6 class="fw-bold text-dark mb-2">Green Campus & AI Labs</h6>
							<p class="text-muted small mb-0">Rooftop solar operation
								achieved with automated STEM incubation centers.</p>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>

	<!-- Footer Component matching site branding -->
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

				<div class="col-lg-2 col-md-6 col-6">
					<h6 class="footer-title small tracking-wider mb-3">About Us</h6>
					<ul class="list-unstyled footer-links small">
						<li class="mb-2"><a href="#our-story"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Our Story</a></li>
						<li class="mb-2"><a href="#mission-vision"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Mission & Vision</a></li>
						<li class="mb-2"><a href="#principal-message"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Principal's Message</a></li>
						<li class="mb-2"><a href="#leadership-team"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Faculty Heads</a></li>
						<li class="mb-2"><a href="#timeline-section"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Milestones</a></li>
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
							<i class="fa-solid fa-clock text-warning"></i> <span>Mon - Sat: 8:00 AM - 4:00 PM</span>
						</div>
						<div class="footer-contact-item d-flex align-items-center gap-2">
							<i class="fa-solid fa-envelope text-warning"></i> <a
								href="mailto:admissions@shantiniketan.edu"
								class="text-decoration-none text-light opacity-90">admissions@shantiniketan.edu</a>
						</div>
					</div>

					<div class="mt-4">
						<a href="admission"
							class="btn btn-warning rounded-pill px-3 py-2 fw-bold small text-dark d-inline-flex align-items-center gap-2 shadow-sm admission-btn">
							<span>Apply For Admission</span> <i
							class="fa-solid fa-arrow-right"></i>
						</a>
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

	<!-- Bootstrap & Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script src="script.js"></script>
</body>

</html>