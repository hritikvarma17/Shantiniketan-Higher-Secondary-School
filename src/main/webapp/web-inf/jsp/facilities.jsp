<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Campus Facilities | Shantiniketan Higher Secondary School</title>

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
<link rel="stylesheet" href="facilities_style.css">
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
							class="active nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
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

	<main class="facilities-page-wrapper">

		<!-- HERO HEADER BANNER -->
		<section class="facilities-hero-section text-center text-white py-5">
			<div class="container py-4">
				<span
					class="badge bg-warning text-dark px-3 py-2 rounded-pill fw-bold text-uppercase tracking-wider mb-3">
					Campus Infrastructure </span>
				<h1 class="display-5 fw-bold mb-3">World-Class Learning
					Infrastructure</h1>
				<p class="lead opacity-90 mx-auto" style="max-width: 800px;">
					Designed to inspire intellectual inquiry and personal growth, our
					modern campus blends state-of-the-art academic technology with
					safe, vibrant spaces for athletics, research, and collaborative
					discovery.</p>
				<div class="d-flex justify-content-center flex-wrap gap-2 mt-4">
					<a href="#smart-classrooms"
						class="btn btn-warning rounded-pill px-3 py-2 small fw-bold text-dark">Smart
						Classrooms</a> <a href="#science-labs"
						class="btn btn-outline-light rounded-pill px-3 py-2 small fw-semibold">Science
						Labs</a> <a href="#computer-center"
						class="btn btn-outline-light rounded-pill px-3 py-2 small fw-semibold">IT
						Center</a> <a href="#central-library"
						class="btn btn-outline-light rounded-pill px-3 py-2 small fw-semibold">Library</a>
					<a href="#sports-complex"
						class="btn btn-outline-light rounded-pill px-3 py-2 small fw-semibold">Sports
						Complex</a> <a href="#bus-transport"
						class="btn btn-outline-light rounded-pill px-3 py-2 small fw-semibold">Transport</a>
				</div>
			</div>
		</section>

		<!-- 1. SMART CLASSROOMS -->
		<section class="py-5 bg-white" id="smart-classrooms">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-primary-subtle text-primary px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Interactive Pedagogy </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Smart Digital
							Classrooms</h2>
						<p class="text-muted mb-3">Our classrooms are
							technology-enabled learning ecosystems designed to foster active
							participation, visual retention, and collaborative debate instead
							of passive rote memorization.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>Interactive
									4K Smart Panels:</strong> Touch-responsive digital blackboards with
								instant cloud lesson synchronization.</li>
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>Acoustic
									& Climate Comfort:</strong> Sound-insulated, well-ventilated, and
								climate-regulated learning environments.</li>
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>Ergonomic
									Modular Desks:</strong> Flexible modular seating designed for group
								workshops and teamwork.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-wifi text-primary me-1"></i> High-Speed Wi-Fi</span>
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-tv text-primary me-1"></i> Multi-Format Media</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/classroom.png"
								alt="Interactive Classroom at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-chalkboard-user text-warning me-2"></i>Digitally
									Integrated Collaborative Spaces
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 2. MODERN SCIENCE LABS -->
		<section class="py-5 bg-light" id="science-labs">
			<div class="container py-3">
				<div class="row align-items-center g-5 flex-lg-row-reverse">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Empirical Discovery </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Modern Science
							Laboratories</h2>
						<p class="text-muted mb-3">Equipped for Physics, Chemistry,
							and Biology to transform textbook formulas into tactile
							scientific experimentation, rigorous hypothesis testing, and
							empirical verification.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Chemistry
									Lab:</strong> Dedicated fume extraction hoods, high-precision electronic
								balances, and eye-wash safety points.</li>
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Physics
									Lab:</strong> Precision optical benches, circuit breadboards, and laser
								diffraction equipment.</li>
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Biology
									Lab:</strong> High-magnification binocular microscopes and biological
								specimen preservation racks.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-shield-virus text-success me-1"></i> OSHA
								Safety Certified</span> <span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-user-doctor text-success me-1"></i> Full-Time
								Mentors</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/chem-lab.png"
								alt="Chemistry Laboratory at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-flask-vial text-warning me-2"></i>Advanced
									Chemistry & Physics Suites
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 3. COMPUTER & IT CENTER -->
		<section class="py-5 bg-white" id="computer-center">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-primary-subtle text-primary px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Technology & Computational Thinking </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Computer & IT
							Innovation Center</h2>
						<p class="text-muted mb-3">Our dual IT complexes give students
							hands-on exposure to coding, computational design, software
							frameworks, and algorithmic logic from primary school onwards.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>1:1
									Computing Terminals:</strong> Intel Core i7 workstations connected via
								high-speed gigabit fiber ethernet.</li>
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>Programming
									Tracks:</strong> Pre-configured modules for Python, Java, Web
								Technologies, and Scratch for junior learners.</li>
							<li><i class="fa-solid fa-circle-check text-primary me-2"></i><strong>Network
									Firewalls:</strong> Secure enterprise filtering ensuring child-safe web
								browsing and cyber privacy.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-network-wired text-primary me-1"></i> Gigabit
								LAN</span> <span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-code text-primary me-1"></i> AI & Python
								Ready</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/comp-lab.png"
								alt="Computer Lab at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-laptop-code text-warning me-2"></i>High-Speed
									Workstations & Coding Suites
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 4. CENTRAL LIBRARY -->
		<section class="py-5 bg-light" id="central-library">
			<div class="container py-3">
				<div class="row align-items-center g-5 flex-lg-row-reverse">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Knowledge Resource Hub </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Central
							Knowledge Library</h2>
						<p class="text-muted mb-3">A peaceful sanctuary housing over
							18,000 literary, reference, scientific, and historical works,
							supported by modern digital e-book databases and automated
							cataloguing.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-warning me-2"></i><strong>Curated
									Literary Collection:</strong> Fiction, non-fiction, academic reference
								journals, and regional literary masterpieces.</li>
							<li><i class="fa-solid fa-circle-check text-warning me-2"></i><strong>Digital
									Library E-Zone:</strong> Dedicated research tablets with access to
								national journals and international periodicals.</li>
							<li><i class="fa-solid fa-circle-check text-warning me-2"></i><strong>Quiet
									Research Bays:</strong> Individual study cubicles designed for focused
								board exam and Olympiad preparation.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-book-open text-warning me-1"></i> 18,000+
								Volumes</span> <span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-barcode text-warning me-1"></i> RFID Check-in</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/Central Knowledge Library.png"
								alt="Library and Study Resource Center"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-book-bookmark text-warning me-2"></i>Comprehensive
									Digital & Print Archives
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 5. SPORTS COMPLEX -->
		<section class="py-5 bg-white" id="sports-complex">
			<div class="container py-3">
				<div class="row align-items-center g-5">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-danger-subtle text-danger px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Physical Prowess & Health </span>
						<h2 class="display-6 fw-bold text-dark mb-3">Championship
							Sports Complex</h2>
						<p class="text-muted mb-3">Promoting sportsmanship, physical
							resilience, and healthy lifestyle choices through professionally
							curated indoor and outdoor sports facilities.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i><strong>Synthetic
									Basketball Court:</strong> All-weather, shock-absorbent acrylic surface
								with floodlight tournament illumination.</li>
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i><strong>Indoor
									Sports Arena:</strong> Badminton courts, table tennis arenas, and
								dedicated chess academy rooms.</li>
							<li><i class="fa-solid fa-circle-check text-danger me-2"></i><strong>Athletic
									Sprint Track & Turf:</strong> Dedicated running course and football
								grass grounds managed by NIS-certified coaches.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-medal text-danger me-1"></i> Certified
								Coaching</span> <span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-heart-pulse text-danger me-1"></i> First-Aid
								Center</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/basketball-court.png"
								alt="Sports Complex at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-basketball text-warning me-2"></i>All-Weather
									Synthetic Athletic Grounds
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 6. BUS TRANSPORTATION -->
		<section class="py-5 bg-light" id="bus-transport">
			<div class="container py-3">
				<div class="row align-items-center g-5 flex-lg-row-reverse">
					<div class="col-lg-6 scroll-reveal">
						<span
							class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider mb-2">
							Safe & Secure Commute </span>
						<h2 class="display-6 fw-bold text-dark mb-3">GPS-Tracked Bus
							Transportation</h2>
						<p class="text-muted mb-3">Covering key urban and suburban
							routes with a fleet of modern, air-cooled buses managed by
							verified drivers, certified attendants, and real-time digital
							transit telemetry.</p>
						<ul
							class="list-unstyled text-secondary small d-flex flex-column gap-2 mb-4">
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Real-Time
									GPS Tracking:</strong> Parents can view bus locations and estimated
								arrival times through the school app.</li>
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Onboard
									CCTV Surveillance:</strong> Dual-angle surveillance cameras and speed
								limiters installed on every vehicle.</li>
							<li><i class="fa-solid fa-circle-check text-success me-2"></i><strong>Trained
									Female Attendants:</strong> Professional support staff to ensure child
								boarding, safety, and orderly disembarkation.</li>
						</ul>
						<div class="d-flex gap-3">
							<span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-map-location-dot text-success me-1"></i> 25+
								City Routes</span> <span
								class="badge bg-light text-dark border p-2 px-3 rounded-pill"><i
								class="fa-solid fa-satellite text-success me-1"></i> Live
								Geo-Fencing</span>
						</div>
					</div>
					<div class="col-lg-6 scroll-reveal">
						<div
							class="facility-image-card shadow-sm rounded-4 overflow-hidden position-relative">
							<img src="Images/GPS-Tracked Bus Transportation.png"
								alt="Transportation at Shantiniketan"
								class="img-fluid w-100 object-fit-cover" style="height: 380px;">
							<div class="image-gradient-tag p-3 text-white">
								<h6 class="mb-0 fw-bold">
									<i class="fa-solid fa-bus-simple text-warning me-2"></i>Regulated
									GPS-Tracked Campus Transit Fleet
								</h6>
							</div>
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
					<h6 class="footer-title small tracking-wider mb-3">Facilities</h6>
					<ul class="list-unstyled footer-links small">
						<li class="mb-2"><a href="#smart-classrooms"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Smart Classrooms</a></li>
						<li class="mb-2"><a href="#science-labs"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Science Labs</a></li>
						<li class="mb-2"><a href="#computer-center"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Computer Labs</a></li>
						<li class="mb-2"><a href="#central-library"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Central Library</a></li>
						<li class="mb-2"><a href="#sports-complex"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Sports Complex</a></li>
						<li class="mb-2"><a href="#bus-transport"><i
								class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
								Transportation</a></li>
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
							<i class="fa-solid fa-clock text-warning"></i> <span> Mon
								- Sat: 8:00 AM - 4:00 PM</span>
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