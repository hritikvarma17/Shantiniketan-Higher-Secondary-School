<%-- 
    Document   : index
    Created on : 8 Oct 2026, 8:28:33 pm
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shantiniketan Higher Secondary School</title>
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
						<%
						boolean isLoggedIn = (session.getAttribute("user") != null);
						if (isLoggedIn) {
						%>
						<!-- Grouped Management Dropdown including Dashboard -->
						<li class="nav-item dropdown hover-dropdown"><a
							class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Management </a>
							<ul class="dropdown-menu dropdown-menu-dark shadow-lg">
								<li><a class="dropdown-item fw-bold text-warning"
									href="dashboard"><i class="fa-solid fa-chart-line me-2"></i>Dashboard</a></li>
								<li><hr
										class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item" href="students"><i
										class="fa-solid fa-user-graduate me-2"></i>Students Records</a></li>
								<li><a class="dropdown-item" href="time_table"><i
										class="fa-solid fa-calendar-days me-2"></i>Time Table</a></li>
								<li><a class="dropdown-item"
									href="<%=request.getContextPath()%>/staff"><i
										class="fa-solid fa-chalkboard-user me-2"></i>Staff Directory</a></li>
								<li><a class="dropdown-item" href="transport"><i
										class="fa-solid fa-bus me-2"></i>Transport Fleet</a></li>
								<li><hr
										class="dropdown-divider border-secondary opacity-50"></li>
								<li><a class="dropdown-item text-warning" href="users"><i
										class="fa-solid fa-users-gear me-2"></i>System Users</a></li>
							</ul></li>
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


	<main>
		<!-- <div class="blank-space-top" style="height: 73px; width: auto;"></div> -->
		<section class="admission-banner-wrapper">
			<div class="admission-banner-card">
				<!-- Centered Floating Badge -->
				<div
					class="banner-top-badge d-flex align-items-center justify-content-center">
					<img src="Images/shantiniketan-logo-nav-bar.png"
						alt="Shantiniketan Logo" class="banner-logo-img"> <span>Shantiniketan</span>&nbsp;<span
						style="color: #FFC107;">Higher Secondary School</span>
				</div>

				<div class="row g-0 h-100 align-items-stretch">
					<!-- Left Content Column restricted to 7 cols to give right photo breathing room -->
					<div
						class="col-12 col-lg-6 p-4 p-md-5 d-flex flex-column justify-content-between banner-left-content">

						<div class="my-4 pt-3">
							<p class="banner-subheading mb-1">FOSTERING WISDOM •
								INSPIRING EXCELLENCE</p>
							<h1 class="banner-headline-main">ADMISSIONS</h1>
							<h1 class="banner-headline-highlight">OPEN</h1>

							<div class="d-inline-block">
								<span class="banner-year-badge">ACADEMIC YEAR 2027–28</span>
							</div>
						</div>

						<!-- Grades Selection Pill -->
						<div
							class="banner-grades-pill d-inline-flex flex-wrap align-items-center gap-3 py-2 px-3">
							<span class="grade-item"><i class="fa-solid fa-award me-1"></i>
								Pre-Primary</span> <span class="divider">|</span> <span
								class="grade-item"><i class="fa-solid fa-book-open me-1"></i>
								Primary (I–V)</span> <span class="divider">|</span> <span
								class="grade-item"><i
								class="fa-solid fa-laptop-code me-1"></i> Secondary (VI–X)</span> <span
								class="divider">|</span> <span class="grade-item"><i
								class="fa-solid fa-graduation-cap me-1"></i> Higher Sec (XI–XII)</span>
						</div>

						<!-- NEW: Key Information Highlights Box -->
						<div class="banner-key-highlights mt-3 p-3 rounded-4">
							<div class="row g-3">
								<div class="col-sm-4">
									<div class="d-flex align-items-start gap-2">
										<i class="fa-solid fa-calendar-check text-success fs-5 mt-1"></i>
										<div>
											<small class="text-muted d-block lh-1">Phase 1 Status</small>
											<strong class="text-dark small">Registrations Active</strong>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="d-flex align-items-start gap-2">
										<i class="fa-solid fa-certificate text-primary fs-5 mt-1"></i>
										<div>
											<small class="text-muted d-block lh-1">Curriculum</small> <strong
												class="text-dark small">CBSE & State Board</strong>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="d-flex align-items-start gap-2">
										<i class="fa-solid fa-flask-vial text-warning fs-5 mt-1"></i>
										<div>
											<small class="text-muted d-block lh-1">Streams
												(XI-XII)</small> <strong class="text-dark small">Science &
												Commerce</strong>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Footer Action Area -->
						<div
							class="mt-4 pt-3 border-top d-flex flex-wrap align-items-center justify-content-between gap-3">
							<div>
								<h6 class="fw-bold mb-0 text-dark">Excellence in Education</h6>
								<small class="text-muted">Affiliated with State &
									Central Educational Standards</small>
							</div>
							<a href="admission"
								class="btn btn-emerald-apply px-4 py-2 rounded-pill fw-semibold shadow-sm">
								Apply Online <i class="fa-solid fa-arrow-right ms-1"></i>
							</a>
						</div>

					</div>
				</div>
			</div>
		</section>

		<!-- <marquee class="bg-secondary-subtle text-danger">Admission open! Register your seat now!</marquee> -->

		<div class="news-ticker-wrapper py-2">
			<div class="container-fluid px-3 d-flex align-items-center">

				<!-- Pinned Alert Tag -->
				<div
					class="ticker-badge d-flex align-items-center gap-2 me-3 flex-shrink-0">
					<span class="ticker-pulse"></span> <i
						class="fa-solid fa-bullhorn text-warning"></i> <span
						class="text-uppercase fw-bold text-white tracking-wider small">Announcements</span>
				</div>

				<!-- Marquee Track (Pauses on Hover) -->
				<marquee class="ticker-content flex-grow-1 mb-0 small"
					behavior="scroll" direction="left" scrollamount="6"
					onmouseover="this.stop();" onmouseout="this.start();">

					<span class="ticker-item"> <i
						class="fa-solid fa-graduation-cap text-warning me-1"></i> <strong>Admissions
							Open for Academic Session 2027–28:</strong> Applications invited for
						Pre-Primary to Class XI (Science & Commerce streams).
					</span> <span class="ticker-divider">★</span> <span class="ticker-item">
						<i class="fa-solid fa-file-signature text-warning me-1"></i> <strong>Merit
							Scholarship Entrance Test:</strong> Phase 1 registration window closes on
						<strong>April 30, 2027</strong>.
					</span> <span class="ticker-divider">★</span> <span class="ticker-item">
						<i class="fa-solid fa-trophy text-warning me-1"></i> <strong>Board
							Results:</strong> Shantiniketan Higher Secondary School celebrates 100%
						pass track record with 25+ students scoring 95% and above!
					</span> <span class="ticker-divider">★</span> <span class="ticker-item">
						<i class="fa-solid fa-phone text-warning me-1"></i> <strong>Helpline
							Desk:</strong> Call our Admission Cell at <strong>+91 (0) 79 2345
							6789</strong> or visit campus between 8:00 AM – 4:00 PM.
					</span>

				</marquee>

			</div>
		</div>

		<section class="py-5 bg-white" id="school-info">
			<div class="container py-4">

				<!-- 1. School Header & Main About Intro -->
				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Excellence in Education </span>
					<h1 class="display-6 fw-bold text-dark mt-2 mb-3">Shantiniketan
						Higher Secondary School</h1>
					<p class="lead text-muted mx-auto fs-6" style="max-width: 820px;">
						Inspired by timeless ideals of holistic learning and modern
						academic rigor, Shantiniketan provides a vibrant, values-driven
						environment where young minds are nurtured into confident
						scholars, analytical thinkers, and compassionate global leaders.</p>
					<div class="d-flex justify-content-center flex-wrap gap-2 mt-3">
						<span
							class="badge bg-light text-secondary border rounded-pill px-3 py-2"><i
							class="fa-solid fa-clock-rotate-left me-1"></i> Estd. 1998</span> <span
							class="badge bg-light text-secondary border rounded-pill px-3 py-2"><i
							class="fa-solid fa-users me-1"></i> Co-Educational</span> <span
							class="badge bg-light text-secondary border rounded-pill px-3 py-2"><i
							class="fa-solid fa-school me-1"></i> K-12 Comprehensive</span>
					</div>
				</div>

				<!-- 2. Core Pillars Grid -->
				<div class="row g-4 mb-5">

					<!-- Card 1: Faculty -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm info-card card-accent-primary scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="info-icon-wrapper bg-primary-subtle text-primary mb-3">
									<i class="fa-solid fa-chalkboard-user fs-4"></i>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Distinguished Faculty</h5>
								<p class="text-muted small flex-grow-1 lh-base">A team of
									85+ post-graduate educators and subject specialists committed
									to mentoring through personalized interventions,
									flipped-classroom pedagogies, and continuous assessment.</p>
								<ul
									class="list-unstyled small text-secondary mt-3 mb-0 border-top pt-3">
									<li class="mb-1"><i
										class="fa-solid fa-circle-check text-primary me-2"></i>1:18
										Teacher Ratio</li>
									<li><i class="fa-solid fa-circle-check text-primary me-2"></i>Continuous
										Upskilling</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Card 2: Facilities -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm info-card card-accent-success scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="info-icon-wrapper bg-success-subtle text-success mb-3">
									<i class="fa-solid fa-microscope fs-4"></i>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Modern Infrastructure</h5>
								<p class="text-muted small flex-grow-1 lh-base">Smart,
									eco-friendly campus featuring state-of-the-art science labs,
									modern IT suites, interactive smart boards, an indoor sports
									arena, and GPS-tracked bus transport.</p>
								<ul
									class="list-unstyled small text-secondary mt-3 mb-0 border-top pt-3">
									<li class="mb-1"><i
										class="fa-solid fa-circle-check text-success me-2"></i>Smart
										Theaters</li>
									<li><i class="fa-solid fa-circle-check text-success me-2"></i>STEM
										& Robotics Lab</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Card 3: Campus Life -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm info-card card-accent-warning scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="info-icon-wrapper bg-warning-subtle text-warning-emphasis mb-3">
									<i class="fa-solid fa-masks-theater fs-4"></i>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Vibrant Campus Life</h5>
								<p class="text-muted small flex-grow-1 lh-base">Education
									beyond the desk: annual athletic meets, inter-school cultural
									fests, science congresses, drama clubs, and social outreach
									drives that hone teamwork and character.</p>
								<ul
									class="list-unstyled small text-secondary mt-3 mb-0 border-top pt-3">
									<li class="mb-1"><i
										class="fa-solid fa-circle-check text-warning-emphasis me-2"></i>Sports
										Olympiads</li>
									<li><i
										class="fa-solid fa-circle-check text-warning-emphasis me-2"></i>Model
										United Nations</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Card 4: Awards -->
					<div class="col-md-6 col-lg-3">
						<div
							class="card h-100 border-0 shadow-sm info-card card-accent-danger scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div class="info-icon-wrapper bg-danger-subtle text-danger mb-3">
									<i class="fa-solid fa-trophy fs-4"></i>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Accolades & Honors</h5>
								<p class="text-muted small flex-grow-1 lh-base">Ranked
									consistently among regional leaders, boasting 100% board
									examination pass percentages, national STEM winners, and state
									athletic championship titles.</p>
								<ul
									class="list-unstyled small text-secondary mt-3 mb-0 border-top pt-3">
									<li class="mb-1"><i
										class="fa-solid fa-circle-check text-danger me-2"></i>Academic
										Excellence</li>
									<li><i class="fa-solid fa-circle-check text-danger me-2"></i>Green
										Campus Laurels</li>
								</ul>
							</div>
						</div>
					</div>

				</div>

				<!-- 3. Future Vision & Mission Banner -->
				<div
					class="card border-0 text-white rounded-4 overflow-hidden vision-banner scroll-reveal">
					<div class="card-body p-4 p-md-5">
						<div class="row align-items-center g-4">
							<div class="col-lg-8">
								<span
									class="badge bg-warning text-dark px-3 py-1 rounded-pill fw-bold text-uppercase mb-3 tracking-wider">
									Strategic Roadmap </span>
								<h3 class="fw-bold mb-3">Our Future Vision (Vision 2030)</h3>
								<p class="lead mb-3 text-light opacity-90 fs-6">We are
									evolving into an adaptive learning ecosystem centered around
									emerging technologies, sustainability, and experiential
									education.</p>
								<p class="text-light-emphasis small mb-0">Our roadmap
									integrates AI-assisted individual learning paths, solar-powered
									zero-emission school operations, cross-border research
									collaborations, and dedicated entrepreneurship incubators right
									from the secondary level.</p>
							</div>
							<div class="col-lg-4">
								<div
									class="d-flex flex-column gap-3 bg-white bg-opacity-10 p-3 rounded-4 backdrop-blur">
									<div class="d-flex align-items-center gap-3">
										<i class="fa-solid fa-bolt text-warning fs-5"></i> <span
											class="fw-semibold small">100% Digital Literacy</span>
									</div>
									<div class="d-flex align-items-center gap-3">
										<i class="fa-solid fa-earth-americas text-info fs-5"></i> <span
											class="fw-semibold small">Global University Pathways</span>
									</div>
									<div class="d-flex align-items-center gap-3">
										<i class="fa-solid fa-leaf text-success fs-5"></i> <span
											class="fw-semibold small">Green Campus Pioneer</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

		<section class="py-5 awards-section-wrapper" id="awards-section">
			<div class="container py-4">

				<!-- Section Heading -->
				<div class="text-center mb-5 award-reveal-element">
					<span
						class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						<i class="fa-solid fa-award me-1"></i> Honors & Recognition
					</span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Our Legacy
						of Excellence</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">Over
						the years, Shantiniketan Higher Secondary School has been
						consistently recognized by prestigious education councils, state
						boards, and national bodies for academic and extracurricular
						distinction.</p>
				</div>

				<!-- Metrics Ribbon -->
				<div class="row g-3 text-center mb-5 award-reveal-element">
					<div class="col-6 col-md-3">
						<div class="metric-card metric-primary">
							<h3 class="fw-bold mb-1">25+</h3>
							<small class="fw-semibold">State & National Awards</small>
						</div>
					</div>
					<div class="col-6 col-md-3">
						<div class="metric-card metric-success">
							<h3 class="fw-bold mb-1">100%</h3>
							<small class="fw-semibold">Board Pass Track Record</small>
						</div>
					</div>
					<div class="col-6 col-md-3">
						<div class="metric-card metric-warning">
							<h3 class="fw-bold mb-1">#1</h3>
							<small class="fw-semibold">District STEM Ranking</small>
						</div>
					</div>
					<div class="col-6 col-md-3">
						<div class="metric-card metric-danger">
							<h3 class="fw-bold mb-1">50+</h3>
							<small class="fw-semibold">Sports Laurels Won</small>
						</div>
					</div>
				</div>

				<!-- Awards Grid -->
				<div class="row g-4">

					<!-- Award 1 (Gold/Amber) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-gold award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-warning-subtle text-warning">
										<i class="fa-solid fa-trophy fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2025</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">National STEM Innovation
									Award</h5>
								<p class="text-muted small flex-grow-1">Conferred by the
									National Educational Technology Council for our automated
									student robotics program and advanced laboratory integration.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-location-dot me-2 text-warning"></i>New
									Delhi Summit
								</div>
							</div>
						</div>
					</div>

					<!-- Award 2 (Emerald) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-emerald award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-success-subtle text-success">
										<i class="fa-solid fa-leaf fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2024</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Clean Green Campus
									Laurels</h5>
								<p class="text-muted small flex-grow-1">Honored for
									sustainable campus infrastructure, rooftop solar
									implementation, and zero-single-use-plastic environmental
									initiatives.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-circle-check me-2 text-success"></i>Ministry
									of Environment
								</div>
							</div>
						</div>
					</div>

					<!-- Award 3 (Royal Navy) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-navy award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-primary-subtle text-primary">
										<i class="fa-solid fa-graduation-cap fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2023</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Academic Excellence
									Trophy</h5>
								<p class="text-muted small flex-grow-1">Recognized by the
									Secondary Education Board for delivering 10 consecutive batches
									with 100% board examination pass results.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-shield-halved me-2 text-primary"></i>State
									Education Board
								</div>
							</div>
						</div>
					</div>

					<!-- Award 4 (Crimson) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-crimson award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-danger-subtle text-danger">
										<i class="fa-solid fa-medal fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2022</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Inter-School Athletic
									Championship</h5>
								<p class="text-muted small flex-grow-1">Overall champions
									across basketball, track & field, and badminton at the regional
									inter-school sports olympiad.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-flag me-2 text-danger"></i>Regional
									Sports Federation
								</div>
							</div>
						</div>
					</div>

					<!-- Award 5 (Cyan/Indigo) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-cyan award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-info-subtle text-info-emphasis">
										<i class="fa-solid fa-palette fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2021</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Best Performing Arts &
									Culture</h5>
								<p class="text-muted small flex-grow-1">Awarded top honors
									in creative dramatics, classical choir, and debate competitions
									at the State Cultural Youth Congress.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-masks-theater me-2 text-info"></i>Cultural
									Heritage Council
								</div>
							</div>
						</div>
					</div>

					<!-- Award 6 (Purple/Amethyst) -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 award-card card-glow-purple award-reveal-element">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="award-icon-box bg-secondary-subtle text-dark">
										<i class="fa-solid fa-hands-holding-child fs-4"></i>
									</span> <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2020</span>
								</div>
								<h5 class="fw-bold mb-2 text-dark">Outstanding Community
									Service</h5>
								<p class="text-muted small flex-grow-1">Honored for
									student-led rural literacy drives and youth-driven disaster
									assistance initiatives across local community areas.</p>
								<div
									class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
									<i class="fa-solid fa-heart me-2 text-danger"></i>Social
									Welfare Forum
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>



		<section class="hero-slider-section">
			<div class="kenburns-slider">

				<!-- Slide 1: Computer Lab -->
				<div class="slide active">
					<img src="Images/comp-lab.png"
						alt="Computer Science Laboratory at Shantiniketan">
					<div class="slide-overlay">
						<div class="slide-caption">
							<span class="slide-badge bg-primary-subtle text-primary">
								<i class="fa-solid fa-laptop-code me-1"></i> Technology &
								Computing
							</span>
							<h2>Next-Gen Computer Laboratories</h2>
							<p class="lead-text">Equipped with high-performance
								workstations, cloud coding environments, and dedicated
								programming tracks to foster software literacy, AI concepts, and
								digital design from an early age.</p>
							<div class="slide-tags d-flex flex-wrap gap-2">
								<span><i class="fa-solid fa-circle-check me-1"></i> 1:1
									Terminal Access</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> High-Speed Fiber
									Network</span> <span><i class="fa-solid fa-circle-check me-1"></i>
									Python & Web Dev Modules</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide 2: Chemistry Lab -->
				<div class="slide">
					<img src="Images/chem-lab.png"
						alt="Chemistry Laboratory Experiments">
					<div class="slide-overlay">
						<div class="slide-caption">
							<span class="slide-badge bg-success-subtle text-success">
								<i class="fa-solid fa-flask-vial me-1"></i> Scientific Inquiry
							</span>
							<h2>Advanced Chemistry Laboratories</h2>
							<p class="lead-text">Modern analytical apparatus and
								international safety gear where students transition theoretical
								formulas into hands-on chemical reactions, qualitative assays,
								and empirical experiments.</p>
							<div class="slide-tags d-flex flex-wrap gap-2">
								<span><i class="fa-solid fa-circle-check me-1"></i> Fume
									Hood Safety</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> Analytical Titration
									Sets</span> <span><i class="fa-solid fa-circle-check me-1"></i>
									Dedicated Lab Mentors</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide 3: School Projects & STEM Robotics -->
				<div class="slide">
					<img src="Images/school-project.png"
						alt="STEM Innovation and Robotics Project Workshop">
					<div class="slide-overlay">
						<div class="slide-caption">
							<span class="slide-badge bg-warning-subtle text-warning-emphasis">
								<i class="fa-solid fa-microchip me-1"></i> Experiential
								Engineering
							</span>
							<h2>Innovation & STEM MakerSpace</h2>
							<p class="lead-text">Hands-on engineering workshops where
								young minds experiment with microcontrollers, hydraulic
								linkages, and rapid prototyping—transforming academic science
								into real-world mechanics.</p>
							<div class="slide-tags d-flex flex-wrap gap-2">
								<span><i class="fa-solid fa-circle-check me-1"></i>
									Robotics Assembly Kits</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> Rapid Prototyping</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> National Olympiad
									Prep</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide 4: Basketball Court & Athletics -->
				<div class="slide">
					<img src="Images/basketball-court.png"
						alt="Basketball Court and Outdoor Sports Arena">
					<div class="slide-overlay">
						<div class="slide-caption">
							<span class="slide-badge bg-danger-subtle text-danger"> <i
								class="fa-solid fa-basketball me-1"></i> Sports & Well-Being
							</span>
							<h2>Championship Sports Complex</h2>
							<p class="lead-text">International-standard synthetic courts
								and athletic turf designed to cultivate physical vigor,
								sportsmanship, and tactical team cohesion under the guidance of
								certified sports coaches.</p>
							<div class="slide-tags d-flex flex-wrap gap-2">
								<span><i class="fa-solid fa-circle-check me-1"></i>
									Shock-Absorbing Courts</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> NIS-Certified
									Trainers</span> <span><i class="fa-solid fa-circle-check me-1"></i>
									Inter-School Leagues</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide 5: Smart Interactive Classroom -->
				<div class="slide">
					<img src="Images/classroom.png"
						alt="Interactive Digital Smart Classroom">
					<div class="slide-overlay">
						<div class="slide-caption">
							<span class="slide-badge bg-info-subtle text-info-emphasis">
								<i class="fa-solid fa-chalkboard-user me-1"></i> Interactive
								Pedagogy
							</span>
							<h2>Smart Digital Classrooms</h2>
							<p class="lead-text">Spacious, acoustically optimized
								learning suites featuring ultra-HD touch displays, interactive
								lesson modules, and collaborative table formats that encourage
								active debate and peer discovery.</p>
							<div class="slide-tags d-flex flex-wrap gap-2">
								<span><i class="fa-solid fa-circle-check me-1"></i> 4K
									Interactive Displays</span> <span><i
									class="fa-solid fa-circle-check me-1"></i> Ergonomic Modular
									Seating</span> <span><i class="fa-solid fa-circle-check me-1"></i>
									Multi-Format Audio-Visuals</span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Insert right before </section> of class hero-slider-section -->
			<div
				class="slider-indicators-dots d-flex justify-content-center gap-2">
				<button class="slider-dot active" data-slide="0"
					aria-label="Slide 1"></button>
				<button class="slider-dot" data-slide="1" aria-label="Slide 2"></button>
				<button class="slider-dot" data-slide="2" aria-label="Slide 3"></button>
				<button class="slider-dot" data-slide="3" aria-label="Slide 4"></button>
				<button class="slider-dot" data-slide="4" aria-label="Slide 5"></button>
			</div>
		</section>

		<section class="py-5" id="testimonials-section">
			<div class="container py-3">
				<!-- Section Header -->
				<div class="text-center mb-5">
					<span
						class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Voices of Trust </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">What Our
						Community Says</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">
						Discover why families, students, and alumni consistently choose
						Shantiniketan Higher Secondary School for academic excellence and
						character building.</p>
				</div>
			</div>

			<!-- Full-Width Horizontal Testimonial Strip -->
			<div class="testimonials-strip-wrapper">
				<div class="testimonials-track">

					<!-- Original 6 Cards Set -->
					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"Shantiniketan provided our
							daughter with the perfect balance of academic rigor and personal
							encouragement. The mentorship helped her secure a top rank in the
							board exams."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-primary text-white fw-bold">RS</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Rajesh Sharma</h6>
								<small class="text-light opacity-75">Parent of Class 12
									Graduate</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The computer labs and
							science clubs at Shantiniketan laid the groundwork for my career
							in software engineering. Teachers here spark genuine curiosity."
						</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-success text-white fw-bold">AP</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Ankit Patel</h6>
								<small class="text-light opacity-75">Alumnus (Batch
									2021) • Software Engineer</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"Being part of the robotics
							lab and the basketball team taught me leadership and discipline.
							The teachers always make time for one-on-one doubt clearing
							sessions."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-danger text-white fw-bold">SM</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Sneha Mukherjee</h6>
								<small class="text-light opacity-75">Head Girl (Class 12
									- Science)</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The transparent
							communication via the school portal, regular parent-teacher
							interactions, and safety standards like GPS bus tracking make us
							completely confident."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-warning text-dark fw-bold">VK</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Vikram Kulkarni</h6>
								<small class="text-light opacity-75">Parent of Class 8
									Student</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The public speaking, Model
							UN events, and humanities mentors shaped my perspective. It is
							truly an institution that develops your character along with your
							marks."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-info text-dark fw-bold">DJ</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Diya Joshi</h6>
								<small class="text-light opacity-75">Alumna (Batch 2023)
									• Law Scholar</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"We enrolled both our kids
							here right from primary school. The values of humility, respect,
							and academic discipline they impart are evident in everything the
							school does."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-secondary text-white fw-bold">AN</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Amitabh Nair</h6>
								<small class="text-light opacity-75">Parent of Class 5 &
									10 Students</small>
							</div>
						</div>
					</div>

					<!-- Duplicate Set for Seamless Continuous Infinite Scrolling Loop -->
					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"Shantiniketan provided our
							daughter with the perfect balance of academic rigor and personal
							encouragement. The mentorship helped her secure a top rank in the
							board exams."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-primary text-white fw-bold">RS</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Rajesh Sharma</h6>
								<small class="text-light opacity-75">Parent of Class 12
									Graduate</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The computer labs and
							science clubs at Shantiniketan laid the groundwork for my career
							in software engineering. Teachers here spark genuine curiosity."
						</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-success text-white fw-bold">AP</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Ankit Patel</h6>
								<small class="text-light opacity-75">Alumnus (Batch
									2021) • Software Engineer</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"Being part of the robotics
							lab and the basketball team taught me leadership and discipline.
							The teachers always make time for one-on-one doubt clearing
							sessions."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-danger text-white fw-bold">SM</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Sneha Mukherjee</h6>
								<small class="text-light opacity-75">Head Girl (Class 12
									- Science)</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The transparent
							communication via the school portal, regular parent-teacher
							interactions, and safety standards like GPS bus tracking make us
							completely confident."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-warning text-dark fw-bold">VK</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Vikram Kulkarni</h6>
								<small class="text-light opacity-75">Parent of Class 8
									Student</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"The public speaking, Model
							UN events, and humanities mentors shaped my perspective. It is
							truly an institution that develops your character along with your
							marks."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-info text-dark fw-bold">DJ</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Diya Joshi</h6>
								<small class="text-light opacity-75">Alumna (Batch 2023)
									• Law Scholar</small>
							</div>
						</div>
					</div>

					<div class="testimonial-card p-4" aria-hidden="true">
						<div class="text-warning mb-2 fs-6">
							<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
								class="fa-solid fa-star"></i>
						</div>
						<p class="testimonial-text mb-3">"We enrolled both our kids
							here right from primary school. The values of humility, respect,
							and academic discipline they impart are evident in everything the
							school does."</p>
						<div
							class="d-flex align-items-center gap-3 pt-3 border-top border-white border-opacity-10 mt-auto">
							<div class="avatar-circle bg-secondary text-white fw-bold">AN</div>
							<div>
								<h6 class="fw-bold mb-0 text-white">Amitabh Nair</h6>
								<small class="text-light opacity-75">Parent of Class 5 &
									10 Students</small>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>


		<!-- Class 12 Toppers Announcement Modal -->
		<div class="modal fade" id="toppersModal" tabindex="-1"
			aria-labelledby="toppersModalLabel" aria-hidden="true">
			<div
				class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
				<div class="modal-content border-0 shadow-lg toppers-modal-content">

					<!-- Modal Header -->
					<div
						class="modal-header border-0 bg-dark text-white p-4 position-relative">
						<div class="d-flex align-items-center gap-3">
							<span class="badge bg-warning text-dark p-2 rounded-circle">
								<i class="bi bi-trophy-fill fs-4"></i>
							</span>
							<div>
								<h4 class="modal-title fw-bold text-warning mb-0"
									id="toppersModalLabel">Academic Hall of Fame</h4>
								<p class="text-light-emphasis small mb-0">Celebrating our
									Top 15 Class 12th Board Examination Achievers (Batch 2026)</p>
							</div>
						</div>
						<button type="button" class="btn-close btn-close-white"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>

					<!-- Modal Body: Top 15 Students Grid -->
					<div class="modal-body p-4 bg-light">
						<div class="row g-3">

							<!-- Loop through students (Static template or Thymeleaf th:each) -->
							<!-- Rank 1 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/Aditya Joshi - Copy.png" alt="Aarav Sharma"
											class="rounded-circle topper-avatar border border-3 border-warning">
										<span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-warning text-dark fw-bold mt-2">
											Rank #1 </span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Aarav Sharma</h6>
										<span class="badge bg-success-subtle text-success fw-bold">99.2%</span>
										<small class="text-muted d-block mt-1">Science (PCM)</small>
									</div>
								</div>
							</div>

							<!-- Rank 2 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/Ananya Deshmukh - Copy.png" alt="Ananya Patel"
											class="rounded-circle topper-avatar border border-3 border-secondary">
										<span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-secondary text-white fw-bold mt-2">
											Rank #2 </span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Ananya Patel</h6>
										<span class="badge bg-success-subtle text-success fw-bold">98.8%</span>
										<small class="text-muted d-block mt-1">Commerce</small>
									</div>
								</div>
							</div>

							<!-- Rank 3 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/Rohan Verma - Copy.png" alt="Rohan Iyer"
											class="rounded-circle topper-avatar border border-3 border-dark-subtle">
										<span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark-subtle text-dark fw-bold mt-2">
											Rank #3 </span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Rohan Iyer</h6>
										<span class="badge bg-success-subtle text-success fw-bold">98.4%</span>
										<small class="text-muted d-block mt-1">Science (PCB)</small>
									</div>
								</div>
							</div>

							<!-- Rank 4 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/Kavya Iyer - Copy.png" alt="Diya Mehta"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">
											Rank #4 </span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Diya Mehta</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">98.0%</span>
										<small class="text-muted d-block mt-1">Humanities</small>
									</div>
								</div>
							</div>

							<!-- Rank 5 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Kavya Joshi"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">
											Rank #5 </span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Kavya Joshi</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">97.8%</span>
										<small class="text-muted d-block mt-1">Commerce</small>
									</div>
								</div>
							</div>

							<!-- Rank 6 to 15 (Repeatable pattern) -->
							<!-- Rank 6 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Ishaan Verma"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#6</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Ishaan Verma</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">97.6%</span>
										<small class="text-muted d-block mt-1">Science (PCM)</small>
									</div>
								</div>
							</div>

							<!-- Rank 7 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Neha Kulkarni"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#7</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Neha Kulkarni</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">97.4%</span>
										<small class="text-muted d-block mt-1">Humanities</small>
									</div>
								</div>
							</div>

							<!-- Rank 8 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Aditya Sen"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#8</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Aditya Sen</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">97.2%</span>
										<small class="text-muted d-block mt-1">Science (PCM)</small>
									</div>
								</div>
							</div>

							<!-- Rank 9 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Sneha Roy"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#9</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Sneha Roy</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">97.0%</span>
										<small class="text-muted d-block mt-1">Commerce</small>
									</div>
								</div>
							</div>

							<!-- Rank 10 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Manish Nair"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#10</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Manish Nair</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">96.8%</span>
										<small class="text-muted d-block mt-1">Science (PCB)</small>
									</div>
								</div>
							</div>

							<!-- Rank 11 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Pooja Rao"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#11</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Pooja Rao</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">96.6%</span>
										<small class="text-muted d-block mt-1">Humanities</small>
									</div>
								</div>
							</div>

							<!-- Rank 12 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Aryan Dave"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#12</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Aryan Dave</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">96.4%</span>
										<small class="text-muted d-block mt-1">Science (PCM)</small>
									</div>
								</div>
							</div>

							<!-- Rank 13 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Tanvi Shah"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#13</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Tanvi Shah</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">96.2%</span>
										<small class="text-muted d-block mt-1">Commerce</small>
									</div>
								</div>
							</div>

							<!-- Rank 14 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Vivek Tiwari"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#14</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Vivek Tiwari</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">96.0%</span>
										<small class="text-muted d-block mt-1">Science (PCM)</small>
									</div>
								</div>
							</div>

							<!-- Rank 15 -->
							<div class="col-6 col-md-4 col-lg-3 col-xl-2-4">
								<div
									class="card h-100 border-0 shadow-sm text-center topper-card">
									<div class="position-relative pt-3">
										<img src="Images/Students/banner-students.jpg" alt="Rhea Pillai"
											class="rounded-circle topper-avatar"> <span
											class="position-absolute top-0 start-50 translate-middle badge rounded-pill bg-dark text-white fw-semibold mt-2">Rank
											#15</span>
									</div>
									<div class="card-body p-2">
										<h6 class="fw-bold mb-1 text-truncate">Rhea Pillai</h6>
										<span class="badge bg-primary-subtle text-primary fw-bold">95.8%</span>
										<small class="text-muted d-block mt-1">Humanities</small>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- Modal Footer with Close Button -->
					<div
						class="modal-footer border-0 bg-white py-3 justify-content-between">
						<span class="text-muted small"> <i
							class="bi bi-info-circle me-1"></i> Shantiniketan Higher
							Secondary School continues its 100% pass legacy.
						</span>
						<button type="button" class="btn btn-dark rounded-pill px-4"
							data-bs-dismiss="modal">Close</button>
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

				<!-- Column 3: Portals & Academics -->
				<div class="col-lg-2 col-md-6 col-6">
					<h6 class="footer-title small tracking-wider mb-3">Quick
						Portals</h6>
					<ul class="list-unstyled footer-links small">
						<li class="mb-2"><a href="dashboard"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Student Portal</a></li>
						<li class="mb-2"><a href="dashboard"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Teacher Portal</a></li>
						<li class="mb-2"><a href="dashboard"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Teacher Portal - Dashboard</a></li>
						<li class="mb-2"><a href="staff"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Teacher Portal - Staff</a></li>
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
							<i class="fa-solid fa-clock text-warning"></i> <span>Mon –
								Sat: 8:00 AM – 4:00 PM</span>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>
	<script src="script.js"></script>
</body>

</html>
