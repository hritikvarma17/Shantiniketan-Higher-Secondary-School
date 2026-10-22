<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achievements & Honor Roll | Shantiniketan Higher Secondary School</title>

    <!-- Bootstrap 5 & Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Outfit:wght@600;700;800;900&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Custom Style Sheet -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="achievements_style.css">
<link rel="icon" type="image/x-icon" href="Images/favicon.ico">
</head>

<body class="bg-light">

    <!-- Header Navigation Bar -->
    <header>
        <nav class="navbar navbar-expand-xl navbar-dark bg-dark px-3 shadow fixed-top"
            style="max-height: 72px; border-bottom-left-radius: 50px; border-bottom: 2px solid #FFC107;">
            <div class="container-fluid">
                <a class="navbar-brand d-flex align-items-center gap-2" href="/">
                    <img src="Images/shantiniketan-logo-nav-bar.png" alt="Shantiniketan School Logo" height="46">

                    <div class="d-flex flex-column leading-tight">
                        <span class="fw-bold text-uppercase"
                            style="font-size: 1.15rem; letter-spacing: 1px; color: #f8f9fa;">
                            Shantiniketan
                        </span>
                        <span class="text-warning text-uppercase"
                            style="font-size: 0.65rem; letter-spacing: 1.5px; font-weight: 600;">
                            Higher Secondary School
                        </span>
                    </div>
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav nav-pills ms-auto align-items-center gap-1 mt-3 mt-lg-0"
                        style="cursor: pointer;">
                        <li class="nav-item">
                            <a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill" 
                                href="/">
                                Home
                            </a>
                        </li>
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
                        <li class="nav-item">
                            <a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill" 
                                href="admission">
                                Admission
                            </a>
                        </li>

                        <li class="nav-item dropdown hover-dropdown">
                            <a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
                                data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                Events
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark shadow-lg">
                                <li><a class="dropdown-item fw-bold text-warning" href="events">View All Events</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider border-secondary opacity-50">
                                </li>
                                <li><a class="dropdown-item" href="events#upcoming-events">Upcoming Events</a></li>
                                <li><a class="dropdown-item" href="events#cultural-fest">Annual Cultural Fest</a>
                                </li>
                                <li><a class="dropdown-item" href="events#sports-meet">Annual Sports Meet</a></li>
                                <li><a class="dropdown-item" href="events#stem-fair">Science & STEM Fair</a></li>
                                <li>
                                    <hr class="dropdown-divider border-secondary opacity-50">
                                </li>
                                <li><a class="dropdown-item" href="events#media-gallery">Photo & Video Gallery</a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown hover-dropdown">
                            <a class="active nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
                                data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                Achievements
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark shadow-lg">
                                <li><a class="dropdown-item fw-bold text-warning" href="achievements">View All
                                        Achievements</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider border-secondary opacity-50">
                                </li>
                                <li><a class="dropdown-item"  href="achievements#board-toppers">Board
                                        Exam Toppers</a></li>
                                <li><a class="dropdown-item" 
                                        href="achievements#olympiad-winners">Olympiad Winners</a></li>
                                <li><a class="dropdown-item" 
                                        href="achievements#sports-champions">Sports Championships</a></li>
                                <li><a class="dropdown-item" 
                                        href="achievements#institutional-honors">Institutional Awards</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown hover-dropdown">
                            <a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill dropdown-toggle d-flex align-items-center gap-1"
                                data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                Facilities
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark shadow-lg">
                                <li><a class="dropdown-item fw-bold text-warning" href="facilities">View All
                                        Facilities</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider border-secondary opacity-50">
                                </li>
                                <li><a class="dropdown-item" 
                                        href="facilities#smart-classrooms">Smart
                                        Classrooms</a></li>
                                <li><a class="dropdown-item"  href="facilities#science-labs">Modern
                                        Science
                                        Labs</a></li>
                                <li><a class="dropdown-item" 
                                        href="facilities#computer-center">Computer & IT
                                        Center</a></li>
                                <li><a class="dropdown-item" 
                                        href="facilities#central-library">Central
                                        Library</a></li>
                                <li><a class="dropdown-item"  href="facilities#sports-complex">Sports
                                        Complex</a></li>
                                <li><a class="dropdown-item"  href="facilities#bus-transport">Bus
                                        Transportation</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link text-light-emphasis px-3 py-2 rounded-pill custom-nav-pill"
                                href="about_us">About Us
                            </a>
                        </li>

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

    <main class="achievements-page-wrapper">

        <!-- 1. HERO HEADER BANNER -->
        <section class="achievements-hero-section text-center text-white py-5">
            <div class="container py-4">
                <span
                    class="badge bg-warning text-dark px-3 py-2 rounded-pill fw-bold text-uppercase tracking-wider mb-3">
                    Hall of Fame & Academic Distinction
                </span>
                <h1 class="display-5 fw-bold mb-3">Our Legacy of Excellence & Glory</h1>
                <p class="lead opacity-90 mx-auto" style="max-width: 800px;">
                    Celebrating the remarkable triumphs, scholastic brilliance, Olympiad medals, and athletic laurels
                    won by the exceptional students of Shantiniketan.
                </p>
                <div class="d-flex justify-content-center flex-wrap gap-2 mt-4">
                    <a href="#board-toppers"
                        class="btn btn-warning rounded-pill px-4 py-2 small fw-bold text-dark">Board Toppers</a>
                    <a href="#olympiad-winners"
                        class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Olympiad Winners</a>
                    <a href="#sports-champions"
                        class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">Sports Laurels</a>
                    <a href="#institutional-honors"
                        class="btn btn-outline-light rounded-pill px-4 py-2 small fw-semibold">School Awards</a>
                </div>
            </div>
        </section>

        <!-- STATS RIBBON -->
        <section class="py-4 bg-white border-bottom shadow-sm">
            <div class="container">
                <div class="row g-3 text-center">
                    <div class="col-6 col-md-3">
                        <div class="stat-box">
                            <h2 class="display-6 fw-bold text-success mb-0">100%</h2>
                            <small class="text-secondary fw-semibold">Board Pass Record</small>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="stat-box">
                            <h2 class="display-6 fw-bold text-warning mb-0">45+</h2>
                            <small class="text-secondary fw-semibold">Olympiad Medals</small>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="stat-box">
                            <h2 class="display-6 fw-bold text-danger mb-0">50+</h2>
                            <small class="text-secondary fw-semibold">Sports Laurels</small>
                        </div>
                    </div>
                    <div class="col-6 col-md-3">
                        <div class="stat-box">
                            <h2 class="display-6 fw-bold text-primary mb-0">25+</h2>
                            <small class="text-secondary fw-semibold">National Awards</small>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 2. SECTION: BOARD EXAM TOPPERS -->
        <section class="py-5" id="board-toppers">
            <div class="container py-3">
                <div class="text-center mb-5 scroll-reveal">
                    <span
                        class="badge bg-success-subtle text-success px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
                        Scholastic Stars
                    </span>
                    <h2 class="display-6 fw-bold text-dark mt-2 mb-3">Board Examination Toppers</h2>
                    <p class="text-muted mx-auto" style="max-width: 650px;">
                        Honoring our high achievers from Class X & XII who attained stellar percentiles in the recent
                        CBSE & State Board examinations.
                    </p>
                </div>

                <div class="row g-4">
                    <!-- Topper 1 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm topper-profile-card scroll-reveal">
                            <div class="card-body text-center p-4">
                                <div class="position-relative d-inline-block mb-3">
                                    <div class="topper-avatar-circle bg-primary-subtle text-primary ">
                                        <!-- <i class="fa-solid fa-user-graduate fs-1"></i> -->
                                        <img src="Images/Students/Rohan Verma - Copy.png">
                                    </div>
                                    <span
                                        class="badge bg-warning text-dark position-absolute top-0 start-100 translate-middle rounded-pill fw-bold">
                                        Rank 1
                                    </span>
                                </div>
                                <h5 class="fw-bold mb-1 text-dark">Rohan Verma</h5>
                                <span
                                    class="badge bg-success-subtle text-success px-3 py-1 rounded-pill fw-bold mb-2">98.8%</span>
                                <p class="text-muted small mb-3">Class XII - Science (PCM)</p>
                                <div class="border-top pt-2 small text-secondary">
                                    <i class="fa-solid fa-star text-warning me-1"></i> Perfect 100 in Physics & Maths
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Topper 2 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm topper-profile-card scroll-reveal">
                            <div class="card-body text-center p-4">
                                <div class="position-relative d-inline-block mb-3">
                                    <div class="topper-avatar-circle bg-warning-subtle text-warning">
                                        <!-- <i class="fa-solid fa-user-graduate fs-1"></i> -->
                                        <img src="Images/Students/Ananya Deshmukh - Copy.png">
                                    </div>
                                    <span
                                        class="badge bg-warning text-dark position-absolute top-0 start-100 translate-middle rounded-pill fw-bold">
                                        Rank 1
                                    </span>
                                </div>
                                <h5 class="fw-bold mb-1 text-dark">Ananya Deshmukh</h5>
                                <span
                                    class="badge bg-success-subtle text-success px-3 py-1 rounded-pill fw-bold mb-2">98.2%</span>
                                <p class="text-muted small mb-3">Class XII - Commerce</p>
                                <div class="border-top pt-2 small text-secondary">
                                    <i class="fa-solid fa-star text-warning me-1"></i> 100 in Accountancy & Economics
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Topper 3 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm topper-profile-card scroll-reveal">
                            <div class="card-body text-center p-4">
                                <div class="position-relative d-inline-block mb-3">
                                    <div class="topper-avatar-circle bg-success-subtle text-success">
                                        <!-- <i class="fa-solid fa-user-graduate fs-1"></i> -->
                                        <img src="Images/Students/Kavya Iyer - Copy.png">
                                    </div>
                                    <span
                                        class="badge bg-warning text-dark position-absolute top-0 start-100 translate-middle rounded-pill fw-bold">
                                        Rank 2
                                    </span>
                                </div>
                                <h5 class="fw-bold mb-1 text-dark">Kavya Iyer</h5>
                                <span
                                    class="badge bg-success-subtle text-success px-3 py-1 rounded-pill fw-bold mb-2">97.6%</span>
                                <p class="text-muted small mb-3">Class XII - Science (PCB)</p>
                                <div class="border-top pt-2 small text-secondary">
                                    <i class="fa-solid fa-star text-warning me-1"></i> Top District Score in Biology
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Topper 4 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm topper-profile-card scroll-reveal">
                            <div class="card-body text-center p-4">
                                <div class="position-relative d-inline-block mb-3">
                                    <div class="topper-avatar-circle bg-dark-subtle text-danger">
                                        <!-- <i class="fa-solid fa-user-graduate fs-1"></i> -->
                                        <img src="Images/Students/Aditya Joshi - Copy.png">
                                    </div>
                                    <span
                                        class="badge bg-warning text-dark position-absolute top-0 start-100 translate-middle rounded-pill fw-bold">
                                        District Top
                                    </span>
                                </div>
                                <h5 class="fw-bold mb-1 text-dark">Aditya Joshi</h5>
                                <span
                                    class="badge bg-success-subtle text-success px-3 py-1 rounded-pill fw-bold mb-2">99.0%</span>
                                <p class="text-muted small mb-3">Class X - Secondary Board</p>
                                <div class="border-top pt-2 small text-secondary">
                                    <i class="fa-solid fa-star text-warning me-1"></i> Straight A1s across all 5
                                    subjects
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 3. SECTION: OLYMPIAD WINNERS -->
        <section class="py-5 bg-white" id="olympiad-winners">
            <div class="container py-3">
                <div class="text-center mb-5 scroll-reveal">
                    <span
                        class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
                        STEM & Analytical Prowess
                    </span>
                    <h2 class="display-6 fw-bold text-dark mt-2 mb-3">National Olympiad Champions</h2>
                    <p class="text-muted mx-auto" style="max-width: 650px;">
                        Celebrating students who proved their analytical skills against thousands in prestigious
                        national Science, Math, and Cyber competitions.
                    </p>
                </div>

                <div class="row g-4">
                    <!-- Olympiad 1 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 shadow-sm honor-card card-accent-warning scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="honor-icon-wrapper bg-warning-subtle text-warning">
                                        <i class="fa-solid fa-medal fs-4"></i>
                                    </span>
                                    <span class="badge bg-warning text-dark fw-bold rounded-pill px-3 py-1">Gold
                                        Medal</span>
                                </div>
                                <h5 class="fw-bold text-dark mb-1">National Science Olympiad (NSO)</h5>
                                <small class="text-primary fw-semibold mb-3">Siddharth Menon (Class IX)</small>
                                <p class="text-muted small flex-grow-1">
                                    Secured All-India Rank 4 in the Level-2 National Science Olympiad conducted by the
                                    Science Olympiad Foundation.
                                </p>
                                <div class="border-top pt-3 small text-secondary">
                                    <i class="fa-solid fa-award text-warning me-1"></i> Special National Citation &
                                    Scholarship
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Olympiad 2 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 shadow-sm honor-card card-accent-primary scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="honor-icon-wrapper bg-primary-subtle text-primary">
                                        <i class="fa-solid fa-brain fs-4"></i>
                                    </span>
                                    <span class="badge bg-primary text-white fw-bold rounded-pill px-3 py-1">Silver
                                        Medal</span>
                                </div>
                                <h5 class="fw-bold text-dark mb-1">International Math Olympiad (IMO)</h5>
                                <small class="text-primary fw-semibold mb-3">Priya Nambiar (Class XI)</small>
                                <p class="text-muted small flex-grow-1">
                                    Represented the State zone in the regional mathematical Olympiad round, solving
                                    rigorous calculus and geometry sets.
                                </p>
                                <div class="border-top pt-3 small text-secondary">
                                    <i class="fa-solid fa-award text-primary me-1"></i> Regional Mathematical Council
                                    Honor
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Olympiad 3 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 shadow-sm honor-card card-accent-success scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="honor-icon-wrapper bg-success-subtle text-success">
                                        <i class="fa-solid fa-laptop-code fs-4"></i>
                                    </span>
                                    <span class="badge bg-success text-white fw-bold rounded-pill px-3 py-1">Gold
                                        Medal</span>
                                </div>
                                <h5 class="fw-bold text-dark mb-1">National Cyber Olympiad (NCO)</h5>
                                <small class="text-primary fw-semibold mb-3">Aryan Kulkarni (Class X)</small>
                                <p class="text-muted small flex-grow-1">
                                    Secured 1st position in the state for algorithmic logic, computational
                                    problem-solving, and web security challenges.
                                </p>
                                <div class="border-top pt-3 small text-secondary">
                                    <i class="fa-solid fa-award text-success me-1"></i> Certified Cyber Talent Trophy
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 4. SECTION: SPORTS CHAMPIONSHIPS -->
        <section class="py-5 bg-light" id="sports-champions">
            <div class="container py-3">
                <div class="text-center mb-5 scroll-reveal">
                    <span
                        class="badge bg-danger-subtle text-danger px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
                        Athletic Glory & Grit
                    </span>
                    <h2 class="display-6 fw-bold text-dark mt-2 mb-3">Sports Championships</h2>
                    <p class="text-muted mx-auto" style="max-width: 650px;">
                        Trophies and podium finishes earned by our athletes across regional, state, and inter-school
                        tournaments.
                    </p>
                </div>

                <div class="row g-4">
                    <!-- Sport 1 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm sports-trophy-card scroll-reveal">
                            <div class="card-body p-4 text-center">
                                <div class="sports-icon-pill bg-danger-subtle text-danger mb-3 mx-auto">
                                    <i class="fa-solid fa-basketball fs-2"></i>
                                </div>
                                <span class="badge bg-warning text-dark fw-bold mb-2">Champions 2026</span>
                                <h5 class="fw-bold text-dark mb-2">Inter-School Basketball</h5>
                                <p class="text-muted small mb-0">
                                    Senior Boys squad won gold undefeated throughout all 6 rounds at the Sahodaya
                                    Inter-School Tournament.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Sport 2 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm sports-trophy-card scroll-reveal">
                            <div class="card-body p-4 text-center">
                                <div class="sports-icon-pill bg-primary-subtle text-primary mb-3 mx-auto">
                                    <i class="fa-solid fa-person-running fs-2"></i>
                                </div>
                                <span class="badge bg-warning text-dark fw-bold mb-2">3 Gold Medals</span>
                                <h5 class="fw-bold text-dark mb-2">State Athletic Meet</h5>
                                <p class="text-muted small mb-0">
                                    Dominated 100m, 400m sprint relays and long jump at the State Youth Athletics Games.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Sport 3 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm sports-trophy-card scroll-reveal">
                            <div class="card-body p-4 text-center">
                                <div class="sports-icon-pill bg-success-subtle text-success mb-3 mx-auto">
                                    <i class="fa-solid fa-table-tennis-paddle-ball fs-2"></i>
                                </div>
                                <span class="badge bg-warning text-dark fw-bold mb-2">Runners-Up</span>
                                <h5 class="fw-bold text-dark mb-2">Table Tennis League</h5>
                                <p class="text-muted small mb-0">
                                    Girls Doubles team secured 2nd position at the Regional District School Sports
                                    Festival.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Sport 4 -->
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 border-0 shadow-sm sports-trophy-card scroll-reveal">
                            <div class="card-body p-4 text-center">
                                <div class="sports-icon-pill bg-warning-subtle text-warning-emphasis mb-3 mx-auto">
                                    <i class="fa-solid fa-chess-king fs-2"></i>
                                </div>
                                <span class="badge bg-warning text-dark fw-bold mb-2">District #1</span>
                                <h5 class="fw-bold text-dark mb-2">Inter-School Chess</h5>
                                <p class="text-muted small mb-0">
                                    Master Ishan Gupta (Class VIII) captured the District Under-14 Grandmaster trophy
                                    with a clean 7.0 score.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 5. SECTION: INSTITUTIONAL AWARDS -->
        <section class="py-5 awards-section-wrapper" id="institutional-honors">
            <div class="container py-3">
                <div class="text-center mb-5 scroll-reveal">
                    <span
                        class="badge bg-warning-subtle text-warning-emphasis px-3 py-2 rounded-pill fw-semibold text-uppercase tracking-wider">
                        Accreditations & Honors
                    </span>
                    <h2 class="display-6 fw-bold text-dark mt-2 mb-3">Institutional Accolades</h2>
                    <p class="text-muted mx-auto" style="max-width: 650px;">
                        Recognitions awarded to Shantiniketan Higher Secondary School by educational councils, boards,
                        and ministries for our teaching standards and green campus initiatives.
                    </p>
                </div>

                <div class="row g-4">
                    <!-- Award 1 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 award-card card-glow-gold scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="award-icon-box bg-warning-subtle text-warning">
                                        <i class="fa-solid fa-trophy fs-4"></i>
                                    </span>
                                    <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2025</span>
                                </div>
                                <h5 class="fw-bold mb-2 text-dark">National STEM Innovation Award</h5>
                                <p class="text-muted small flex-grow-1">
                                    Conferred by the National Educational Technology Council for our automated robotics
                                    curriculum and advanced lab infrastructure.
                                </p>
                                <div
                                    class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
                                    <i class="fa-solid fa-location-dot me-2 text-warning"></i>New Delhi Summit
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Award 2 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 award-card card-glow-emerald scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="award-icon-box bg-success-subtle text-success">
                                        <i class="fa-solid fa-leaf fs-4"></i>
                                    </span>
                                    <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2024</span>
                                </div>
                                <h5 class="fw-bold mb-2 text-dark">Clean Green Campus Laurels</h5>
                                <p class="text-muted small flex-grow-1">
                                    Honored for sustainable eco-infrastructure, rooftop solar transition, and
                                    zero-single-use-plastic environmental initiatives.
                                </p>
                                <div
                                    class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
                                    <i class="fa-solid fa-circle-check me-2 text-success"></i>Ministry of Environment
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Award 3 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 award-card card-glow-navy scroll-reveal">
                            <div class="card-body p-4 d-flex flex-column">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <span class="award-icon-box bg-primary-subtle text-primary">
                                        <i class="fa-solid fa-graduation-cap fs-4"></i>
                                    </span>
                                    <span class="badge bg-dark rounded-pill px-3 py-1 fw-bold">2023</span>
                                </div>
                                <h5 class="fw-bold mb-2 text-dark">Academic Excellence Trophy</h5>
                                <p class="text-muted small flex-grow-1">
                                    Awarded by the Secondary Education Board for delivering 10 consecutive academic
                                    sessions with 100% board examination pass percentages.
                                </p>
                                <div
                                    class="border-top pt-3 mt-2 d-flex align-items-center text-secondary small fw-semibold">
                                    <i class="fa-solid fa-shield-halved me-2 text-primary"></i>State Education Board
                                </div>
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
                    <a class="d-flex align-items-center gap-2 text-decoration-none mb-3" href="/">
                        <img th:src="@{/Images/shantiniketan-logo-nav-bar.png}"
                            src="Images/shantiniketan-logo-nav-bar.png" alt="Shantiniketan Logo" height="46">
                        <div class="d-flex flex-column leading-tight">
                            <span class="fw-bold tracking-wide text-uppercase text-white"
                                style="font-size: 1.15rem; letter-spacing: 1px;">
                                Shantiniketan
                            </span>
                            <span class="text-warning text-uppercase"
                                style="font-size: 0.65rem; letter-spacing: 1.5px; font-weight: 700;">
                                Higher Secondary School
                            </span>
                        </div>
                    </a>
                    <p class="footer-desc small pe-lg-4 mb-4">
                        Committed to nurturing intellectual curiosity, ethical character, and academic leadership
                        through modern experiential learning and values-based mentorship.
                    </p>
                    <!-- Brand-Colored Social Icons -->
                    <div class="d-flex gap-2">
                        <a href="#" class="social-icon-btn social-fb" aria-label="Facebook"><i
                                class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="social-icon-btn social-x" aria-label="X (Twitter)"><i
                                class="fa-brands fa-x-twitter"></i></a>
                        <a href="#" class="social-icon-btn social-ig" aria-label="Instagram"><i
                                class="fa-brands fa-instagram"></i></a>
                        <a href="#" class="social-icon-btn social-yt" aria-label="YouTube"><i
                                class="fa-brands fa-youtube"></i></a>
                        <a href="#" class="social-icon-btn social-li" aria-label="LinkedIn"><i
                                class="fa-brands fa-linkedin-in"></i></a>
                    </div>
                </div>

                <!-- Column 2: Quick Navigation -->
                <div class="col-lg-2 col-md-6 col-6">
                    <h6 class="footer-title small tracking-wider mb-3">Navigation</h6>
                    <ul class="list-unstyled footer-links small">
                        <li class="mb-2"><a href="/"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Home</a>
                        </li>
                        <li class="mb-2"><a href="about_us"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> About Us</a>
                        </li>
                        <li class="mb-2"><a href="admission"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
                                Admissions</a></li>
                        <li class="mb-2"><a href="facilities"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Campus
                                Facilities</a></li>
                        <li class="mb-2"><a href="events"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Events &
                                Activities</a></li>
                        <li class="mb-2"><a href="achievements"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i>
                                Achievements</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 col-6">
                    <h6 class="footer-title small tracking-wider mb-3">Honors List</h6>
                    <ul class="list-unstyled footer-links small">
                        <li class="mb-2"><a href="#board-toppers"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Class 12
                                Toppers</a></li>
                        <li class="mb-2"><a href="#board-toppers"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Class 10
                                Toppers</a></li>
                        <li class="mb-2"><a href="#olympiad-winners"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Olympiad
                                Stars</a></li>
                        <li class="mb-2"><a href="#sports-champions"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> Sports
                                Medals</a></li>
                        <li class="mb-2"><a href="#institutional-honors"><i
                                    class="fa-solid fa-angle-right me-1 text-warning small opacity-75"></i> School
                                Awards</a></li>
                    </ul>
                </div>

                <!-- Column 4: Contact & Office Hours -->
                <div class="col-lg-3 col-md-6">
                    <h6 class="footer-title small tracking-wider mb-3">Campus Office</h6>
                    <div class="d-flex flex-column gap-2 small">
                        <div class="footer-contact-item d-flex align-items-start gap-2">
                            <i class="fa-solid fa-location-dot text-warning mt-1"></i>
                            <span>Main Institutional Campus, Knowledge Corridor</span>
                        </div>
                        <div class="footer-contact-item d-flex align-items-center gap-2">
                            <i class="fa-solid fa-phone text-warning"></i>
                            <span>+91 (0) 79 2345 6789</span>
                        </div>
                        <div class="footer-contact-item d-flex align-items-center gap-2">
                            <i class="fa-solid fa-clock text-warning"></i>
                            <span>Mon - Sat: 8:00 AM - 4:00 PM</span>
                        </div>
                        <div class="footer-contact-item d-flex align-items-center gap-2">
                            <i class="fa-solid fa-envelope text-warning"></i>
                            <a href="mailto:admissions@shantiniketan.edu"
                                class="text-decoration-none text-light opacity-90">admissions@shantiniketan.edu</a>
                        </div>
                    </div>

                    <div class="mt-4">
                        <a href="admission"
                            class="btn btn-warning rounded-pill px-3 py-2 fw-bold small text-dark d-inline-flex align-items-center gap-2 shadow-sm admission-btn">
                            <span>Apply For Admission</span>
                            <i class="fa-solid fa-arrow-right"></i>
                        </a>
                    </div>
                </div>

            </div>

            <hr class="footer-divider my-4">

            <!-- Bottom Bar: Copyright & Policy Links -->
            <div class="row align-items-center small text-secondary">
                <div class="col-md-6 text-center text-md-start mb-2 mb-md-0">
                    &copy; <span id="currentYear"></span> Shantiniketan Higher Secondary School. All rights reserved.
                </div>
                <div class="col-md-6 text-center text-md-end footer-bottom-links">
                    <a href="#" class="me-3">Privacy Policy</a>
                    <a href="#" class="me-3">Terms of Use</a>
                    <a href="#">Sitemap</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap & Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>
</body>

</html>