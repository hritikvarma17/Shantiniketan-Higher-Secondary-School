<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Events & Campus Life | Shantiniketan Higher Secondary
	School</title>

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
<link rel="stylesheet" href="events_style.css">
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
							class="active nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
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

	<main class="events-page-wrapper">

		<!-- 1. HERO HEADER BANNER -->
		<section class="events-hero-section text-center text-white py-5">
			<div class="container py-4">
				<span
					class="badge bg-warning text-dark px-3 py-2 rounded-pill fw-bold text-uppercase tracking-wider mb-3">
					Campus Celebrations & Calendar </span>
				<h1 class="display-5 fw-bold mb-3">Experience Life at
					Shantiniketan</h1>
				<p class="lead opacity-90 mx-auto" style="max-width: 780px;">
					From competitive athletics and technological breakthroughs to
					expressive performing arts, our vibrant campus traditions encourage
					holistic development and creative excellence.</p>
				<div class="d-flex justify-content-center flex-wrap gap-2 mt-4">
					<a href="#upcoming-events"
						class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Upcoming
						Schedule</a> <a href="#cultural-fest"
						class="btn btn-warning rounded-pill px-4 py-2 small fw-bold text-dark">Annual
						Highlights</a> <a href="#media-gallery"
						class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Past
						Highlights Gallery</a>
				</div>
			</div>
		</section>

		<!-- 2. SECTION: UPCOMING EVENTS -->
		<section class="py-5" id="upcoming-events">
			<div class="container py-3">
				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Mark Your Calendars </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Upcoming
						Campus Events</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">Join us
						for our scheduled academic showcases, student competitions, and
						parent-teacher community days.</p>
				</div>

				<div class="row g-4">
					<!-- Event 1 -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm event-card card-accent-warning scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-start mb-3">
									<div class="event-date-badge text-center">
										<span class="month">NOV</span> <span class="day">14</span>
									</div>
									<span
										class="badge bg-warning-subtle text-warning-emphasis rounded-pill px-3 py-1">Community</span>
								</div>
								<h5 class="fw-bold text-dark mb-2">Children's Day Gala &
									Carnival</h5>
								<p class="text-muted small flex-grow-1">An engaging day full
									of interactive student game stalls, cultural skits, talent
									contests, and culinary demonstrations hosted by student clubs.
								</p>
								<div
									class="event-meta-info border-top pt-3 mt-2 small text-secondary">
									<div>
										<i class="fa-solid fa-clock text-warning me-2"></i>9:00 AM -€“
										3:30 PM
									</div>
									<div>
										<i class="fa-solid fa-location-dot text-warning me-2"></i>School
										Main Grounds
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Event 2 -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm event-card card-accent-primary scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-start mb-3">
									<div class="event-date-badge text-center badge-primary">
										<span class="month">DEC</span> <span class="day">05</span>
									</div>
									<span
										class="badge bg-primary-subtle text-primary rounded-pill px-3 py-1">Competition</span>
								</div>
								<h5 class="fw-bold text-dark mb-2">Inter-School Debate
									Championship</h5>
								<p class="text-muted small flex-grow-1">Orators from 20+
									regional institutions debate critical contemporary global
									affairs, artificial intelligence ethics, and sustainable
									economics.</p>
								<div
									class="event-meta-info border-top pt-3 mt-2 small text-secondary">
									<div>
										<i class="fa-solid fa-clock text-primary me-2"></i>10:00 AM
										-€“ 4:00 PM
									</div>
									<div>
										<i class="fa-solid fa-location-dot text-primary me-2"></i>Auditorium
										Hall B
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Event 3 -->
					<div class="col-md-6 col-lg-4">
						<div
							class="card h-100 border-0 shadow-sm event-card card-accent-success scroll-reveal">
							<div class="card-body p-4 d-flex flex-column">
								<div
									class="d-flex justify-content-between align-items-start mb-3">
									<div class="event-date-badge text-center badge-success">
										<span class="month">JAN</span> <span class="day">18</span>
									</div>
									<span
										class="badge bg-success-subtle text-success rounded-pill px-3 py-1">Exhibition</span>
								</div>
								<h5 class="fw-bold text-dark mb-2">Annual Art & Visual
									Design Expo</h5>
								<p class="text-muted small flex-grow-1">Showcasing original
									student canvasses, terracotta pottery, traditional Indian folk
									artwork, and digital graphic design portfolios.</p>
								<div
									class="event-meta-info border-top pt-3 mt-2 small text-secondary">
									<div>
										<i class="fa-solid fa-clock text-success me-2"></i>11:00 AM
										-€“ 5:00 PM
									</div>
									<div>
										<i class="fa-solid fa-location-dot text-success me-2"></i>Creative
										Arts Gallery
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 3. SECTION: ANNUAL CULTURAL FEST -->
		<section class="py-5 bg-white" id="cultural-fest">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Signature Tradition </span>
						<h2 class="display-6 fw-bold text-dark mb-3">"Tarang" - Annual Cultural Fest</h2>
						<p class="text-muted mb-3">Tarang is Shantiniketan's annual
							cultural celebration, providing students a prestigious platform
							to celebrate India's heritage, dramatic theatrical arts, and
							musical talents.</p>
						<p class="text-muted small mb-4">Featuring orchestral
							ensembles, classical Bharatnatyam and Kathak choreographies,
							inter-house choral competitions, and theatrical productions with
							over 600 participating students.</p>
						<div class="row g-3">
							<div class="col-6">
								<div
									class="p-3 rounded-3 bg-light border-start border-4 border-warning">
									<h4 class="fw-bold text-dark mb-0">3 Days</h4>
									<small class="text-muted">Of Music, Drama & Art</small>
								</div>
							</div>
							<div class="col-6">
								<div
									class="p-3 rounded-3 bg-light border-start border-4 border-success">
									<h4 class="fw-bold text-dark mb-0">1500+</h4>
									<small class="text-muted">Attendees & Guests</small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="feature-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/Annual Cultural Fest.png"
								alt="Annual Cultural Fest at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-masks-theater text-warning me-2"></i>Theme:
									Unity in Classical Diversity
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 4. SECTION: ANNUAL SPORTS MEET -->
		<section class="py-5 bg-light" id="sports-meet">
			<div class="container py-3">
				<div class="row align-items-center g-5 flex-lg-row-reverse">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-danger-subtle text-danger px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Athletic Rigor & Teamwork </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Annual Sports
							Olympiad</h2>
						<p class="text-muted mb-3">Instilling resilience,
							sportsmanship, and physical fitness, our annual sports olympiad
							spans two weeks of track, field, and team tournament play.</p>
						<ul
							class="list-unstyled text-secondary small mb-4 d-flex flex-column gap-2">
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i>March-past
								parade led by the Student Council and Band Squadron</li>
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i>Track
								athletics: 100m, 200m, 400m relays, hurdles, and long jump</li>
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i>Inter-house
								championship finals in Basketball, Badminton, and Football</li>
						</ul>
						<a href="/#awards-section"
							class="btn btn-outline-danger rounded-pill px-4 py-2 small fw-semibold">
							Explore Sports Honors <i class="fa-solid fa-arrow-right ms-1"></i>
						</a>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="feature-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/Annual Sports Olympiad.png"
								alt="Annual Sports Olympiad at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-trophy text-warning me-1"></i>House
									Championship Trophy Series
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 5. SECTION: SCIENCE & STEM FAIR -->
		<section class="py-5 bg-white" id="stem-fair">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-primary-subtle text-primary px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Practical Science & AI </span>
						<h2 class="display-6 fw-bold text-dark mb-3">"InnovateX" - Science & STEM Fair</h2>
						<p class="text-muted mb-3">An annual festival of discovery
							where young student scientists turn complex classroom theory into
							real, tangible mechanical, algorithmic, and sustainable projects.
						</p>
						<div class="row g-3 mt-1">
							<div class="col-sm-6">
								<div
									class="d-flex align-items-start gap-3 p-3 bg-light rounded-3">
									<i class="fa-solid fa-robot text-primary fs-4 mt-1"></i>
									<div>
										<h6 class="fw-bold mb-1">Robotics & IoT</h6>
										<small class="text-muted">Microcontroller automation &
											obstacle detection rovers.</small>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div
									class="d-flex align-items-start gap-3 p-3 bg-light rounded-3">
									<i class="fa-solid fa-seedling text-success fs-4 mt-1"></i>
									<div>
										<h6 class="fw-bold mb-1">Green Bio-Energy</h6>
										<small class="text-muted">Solar conversion models &
											hydroponic plant growth stations.</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="feature-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/Science & STEM Fair.png"
								alt="Science and STEM Fair at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-lightbulb text-warning me-2"></i>Student
									Working Prototypes
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 6. SECTION: PHOTO & VIDEO GALLERY (PAST EVENTS) -->
		<section class="py-5 bg-light" id="media-gallery">
			<div class="container py-3">

				<div class="text-center mb-5 scroll-reveal">
					<span
						class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
						Memories & Highlights </span>
					<h2 class="display-6 fw-bold text-dark mt-2 mb-3">Photo &
						Video Gallery</h2>
					<p class="text-muted mx-auto" style="max-width: 650px;">Relive
						the proud moments, energetic athletic meets, and intellectual
						milestones from our past campus sessions.</p>

					<!-- Filter Control Buttons -->
					<div
						class="d-flex justify-content-center flex-wrap gap-2 mt-4 gallery-filter-btns">
						<button class="btn btn-sm btn-dark rounded-pill px-4 active"
							data-filter="all">All (16)</button>
						<button class="btn btn-sm btn-outline-dark rounded-pill px-4"
							data-filter="cultural">Cultural (5)</button>
						<button class="btn btn-sm btn-outline-dark rounded-pill px-4"
							data-filter="sports">Sports (5)</button>
						<button class="btn btn-sm btn-outline-dark rounded-pill px-4"
							data-filter="science">STEM & Labs (5)</button>
						<button class="btn btn-sm btn-outline-dark rounded-pill px-4"
							data-filter="video">Video Clips (1)</button>
					</div>
				</div>

				<!-- Gallery Grid (15 Photos + 1 Video) -->
				<div class="row g-4 gallery-items-grid">

					<!-- ================= CULTURAL EVENT IMAGES (5 Items) ================= -->
					<!-- Cultural 1 -->
					<div class="col-md-6 col-lg-4 gallery-item"
						data-category="cultural">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Classical Bharatanatyam & Kathak Recital.png"
								alt="Classical Bharatanatyam & Kathak" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-warning text-dark mb-1">Cultural
									Fest</span>
								<h6 class="text-white fw-bold mb-0">Classical Bharatanatyam
									& Kathak Recital</h6>
							</div>
						</div>
					</div>

					<!-- Cultural 2 -->
					<div class="col-md-6 col-lg-4 gallery-item"
						data-category="cultural">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Sitar & Tabla Fusion Orchestra.png"
								alt="Orchestra & Choir Ensemble" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-warning text-dark mb-1">Cultural
									Fest</span>
								<h6 class="text-white fw-bold mb-0">Sitar & Tabla Fusion
									Orchestra</h6>
							</div>
						</div>
					</div>

					<!-- Cultural 3 -->
					<div class="col-md-6 col-lg-4 gallery-item"
						data-category="cultural">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Annual Sanskrit Drama & Stage Play.png"
								alt="Theatrical Production" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-warning text-dark mb-1">Cultural
									Fest</span>
								<h6 class="text-white fw-bold mb-0">Annual Sanskrit Drama &
									Stage Play</h6>
							</div>
						</div>
					</div>

					<!-- Cultural 4 -->
					<div class="col-md-6 col-lg-4 gallery-item"
						data-category="cultural">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Inter-House Regional Folk Dance Gala.png"
								alt="Folk Dance Troupe" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-warning text-dark mb-1">Cultural
									Fest</span>
								<h6 class="text-white fw-bold mb-0">Inter-House Regional
									Folk Dance Gala</h6>
							</div>
						</div>
					</div>

					<!-- Cultural 5 -->
					<div class="col-md-6 col-lg-4 gallery-item"
						data-category="cultural">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Senior Secondary Choral Ensemble.png"
								alt="Choral Harmony Performance" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-warning text-dark mb-1">Cultural
									Fest</span>
								<h6 class="text-white fw-bold mb-0">Senior Secondary Choral
									Ensemble</h6>
							</div>
						</div>
					</div>

					<!-- ================= SPORTS OLYMPIAD IMAGES (5 Items) ================= -->
					<!-- Sports 1 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="sports">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Inter-House Basketball Championship Final.png"
								alt="Basketball Championship Final" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-danger text-white mb-1">Athletics</span>
								<h6 class="text-white fw-bold mb-0">Inter-House Basketball
									Championship Final</h6>
							</div>
						</div>
					</div>

					<!-- Sports 2 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="sports">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/4x100m Track & Sprint Relay Heats.png"
								alt="100m Track Sprint Relay" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-danger text-white mb-1">Athletics</span>
								<h6 class="text-white fw-bold mb-0">4x100m Track & Sprint
									Relay Heats</h6>
							</div>
						</div>
					</div>

					<!-- Sports 3 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="sports">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Student Council March-Past & Brass Band.png"
								alt="March-Past Parade" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-danger text-white mb-1">Athletics</span>
								<h6 class="text-white fw-bold mb-0">Student Council
									March-Past & Brass Band</h6>
							</div>
						</div>
					</div>

					<!-- Sports 4 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="sports">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Regional Shuttle Badminton Championship.png"
								alt="Badminton Doubles Tournament" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-danger text-white mb-1">Athletics</span>
								<h6 class="text-white fw-bold mb-0">Regional Shuttle
									Badminton Championship</h6>
							</div>
						</div>
					</div>

					<!-- Sports 5 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="sports">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Track & Field Long Jump Finals.png"
								alt="Athletic Long Jump & High Jump" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-danger text-white mb-1">Athletics</span>
								<h6 class="text-white fw-bold mb-0">Track & Field: Long
									Jump Finals</h6>
							</div>
						</div>
					</div>

					<!-- ================= STEM & LABS IMAGES (5 Items) ================= -->
					<!-- Science 1 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="science">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img
								src="Images/Autonomous Microcontroller Rover Demonstration - Copy.png"
								alt="Robotics Demonstration" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-primary text-white mb-1">STEM &
									Labs</span>
								<h6 class="text-white fw-bold mb-0">Autonomous
									Microcontroller Rover Demonstration</h6>
							</div>
						</div>
					</div>

					<!-- Science 2 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="science">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img
								src="Images/Qualitative Salt Analysis & Analytical Titration.png"
								alt="Chemistry Titration Assay" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-primary text-white mb-1">STEM &
									Labs</span>
								<h6 class="text-white fw-bold mb-0">Qualitative Salt
									Analysis & Analytical Titration</h6>
							</div>
						</div>
					</div>

					<!-- Science 3 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="science">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Annual 24-Hr Python & AI Code Hackathon.png"
								alt="Hackathon Coding Challenge" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-primary text-white mb-1">STEM &
									Labs</span>
								<h6 class="text-white fw-bold mb-0">Annual 24-Hr Python &
									AI Code Hackathon</h6>
							</div>
						</div>
					</div>

					<!-- Science 4 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="science">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Solar-Powered Hydroponics Working Prototype.png"
								alt="Green Energy Solar Model" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-primary text-white mb-1">STEM &
									Labs</span>
								<h6 class="text-white fw-bold mb-0">Solar-Powered
									Hydroponics Working Prototype</h6>
							</div>
						</div>
					</div>

					<!-- Science 5 -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="science">
						<div class="gallery-card rounded-4 overflow-hidden shadow-sm">
							<img src="Images/Laser Optics & Wave Interference Testing.png"
								alt="Physics Optics Benches" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-primary text-white mb-1">STEM &
									Labs</span>
								<h6 class="text-white fw-bold mb-0">Laser Optics & Wave
									Interference Testing</h6>
							</div>
						</div>
					</div>

					<!-- ================= VIDEO HIGHLIGHT (1 Item) ================= -->
					<div class="col-md-6 col-lg-4 gallery-item" data-category="video">
						<div
							class="gallery-card rounded-4 overflow-hidden shadow-sm video-card"
							data-bs-toggle="modal" data-bs-target="#videoPreviewModal">
							<img src="Images/Student Council March-Past & Brass Band.png"
								alt="Campus Fest Overview" class="gallery-img">
							<div class="gallery-overlay">
								<span class="badge bg-success text-white mb-1"><i
									class="fa-solid fa-play me-1"></i> Watch Video</span>
								<h6 class="text-white fw-bold mb-0">Campus Fest & Olympiad
									Highlights Reel</h6>
							</div>
							<div class="play-btn-circle">
								<i class="fa-solid fa-play"></i>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

		<!-- Video Modal Preview -->
		<div class="modal fade" id="videoPreviewModal" tabindex="-1"
			aria-labelledby="videoModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content bg-dark text-white rounded-4 border-0">
					<div class="modal-header border-secondary">
						<h5 class="modal-title fw-bold" id="videoModalLabel">
							<i class="fa-solid fa-video text-warning me-2"></i>Campus Event
							Video Highlights
						</h5>
						<button type="button" class="btn-close btn-close-white"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body p-0">
						<div class="ratio ratio-16x9">
							<!-- <iframe id="highlightVideoIframe" src="https://www.youtube.com/embed/dQw4w9WgXcQ"
                                    title="Campus Event Highlights" allowfullscreen></iframe> -->
							<video id="highlightVideoIframe" title="Campus Event Highlights"
								controls allowfullscreen
								src="Videos/Campus Fest & Olympiad Highlights Reel.mp4">
								<source>
							</video>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Official Footer Component -->

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
							<a href="#" class="social-icon-btn social-yt"
								aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a> <a
								href="#" class="social-icon-btn social-li" aria-label="LinkedIn"><i
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
						<h6 class="footer-title small tracking-wider mb-3">Event Desk</h6>
						<ul class="list-unstyled footer-links small">
							<li class="mb-2"><a href="#upcoming-events"><i
									class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
									Event Calendar</a></li>
							<li class="mb-2"><a href="#cultural-fest"><i
									class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
									Tarang Highlights</a></li>
							<li class="mb-2"><a href="#sports-meet"><i
									class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
									Sports Schedule</a></li>
							<li class="mb-2"><a href="#stem-fair"><i
									class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
									InnovateX Projects</a></li>
							<li class="mb-2"><a href="#media-gallery"><i
									class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
									Media Archive</a></li>
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
		<script>
			
		</script>
</body>

</html>