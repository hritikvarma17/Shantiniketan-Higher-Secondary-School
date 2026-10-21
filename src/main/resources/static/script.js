document.addEventListener("DOMContentLoaded", function () {
    // 1. Dynamic Footer Copyright Year
    const yearEl = document.getElementById("currentYear");
    if (yearEl) {
        yearEl.textContent = new Date().getFullYear();
    }

    // 2. Desktop Dropdown Hover Handling
    const isDesktop = () => window.innerWidth >= 992;
    const dropdowns = document.querySelectorAll(".hover-dropdown");

    dropdowns.forEach((dropdown) => {
        let timeout;
        const menu = dropdown.querySelector(".dropdown-menu");

        dropdown.addEventListener("mouseenter", function () {
            if (isDesktop() && menu) {
                clearTimeout(timeout);
                menu.classList.add("show");
            }
        });

        dropdown.addEventListener("mouseleave", function () {
            if (isDesktop() && menu) {
                timeout = setTimeout(() => {
                    menu.classList.remove("show");
                }, 0);
            }
        });
    });

    // 3. Ken Burns Hero Slider with Active Dot Indicators
    const slides = document.querySelectorAll(".kenburns-slider .slide");
    const dots = document.querySelectorAll(".slider-dot");
    let currentIndex = 0;
    let slideInterval;
    const slideDuration = 6000;

    if (slides.length > 0) {
        slides.forEach((slide, index) => {
            slide.classList.add(index % 2 === 0 ? "zoom-in" : "zoom-out");
        });

        function showSlide(index) {
            slides.forEach((slide, i) => {
                if (i === index) {
                    slide.classList.add("active");
                    requestAnimationFrame(() => {
                        setTimeout(() => slide.classList.add("zooming"), 50);
                    });
                } else {
                    slide.classList.remove("active", "zooming");
                }
            });

            dots.forEach((dot, i) => {
                dot.classList.toggle("active", i === index);
            });
        }

        function nextSlide() {
            currentIndex = (currentIndex + 1) % slides.length;
            showSlide(currentIndex);
        }

        showSlide(currentIndex);
        slideInterval = setInterval(nextSlide, slideDuration);

        // Clickable indicator dots
        dots.forEach((dot) => {
            dot.addEventListener("click", function () {
                clearInterval(slideInterval);
                currentIndex = parseInt(this.getAttribute("data-slide"), 10);
                showSlide(currentIndex);
                slideInterval = setInterval(nextSlide, slideDuration);
            });
        });
    }

    // 4. Unified Intersection Observer for Scroll Reveals
    const revealElements = document.querySelectorAll(".scroll-reveal, .award-reveal-element");

    if (revealElements.length > 0) {
        const observer = new IntersectionObserver((entries, obs) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    const parentRow = entry.target.closest(".row");
                    if (parentRow) {
                        const siblings = Array.from(parentRow.querySelectorAll(".scroll-reveal, .award-reveal-element"));
                        const index = siblings.indexOf(entry.target);
                        setTimeout(() => {
                            entry.target.classList.add(entry.target.classList.contains("award-reveal-element") ? "award-revealed" : "revealed");
                        }, index * 100);
                    } else {
                        entry.target.classList.add(entry.target.classList.contains("award-reveal-element") ? "award-revealed" : "revealed");
                    }
                    obs.unobserve(entry.target);
                }
            });
        }, {
            threshold: 0.15,
            rootMargin: "0px 0px -30px 0px"
        });

        revealElements.forEach((el) => observer.observe(el));
    }

    // 5. Toppers Announcement Modal
    const toppersModalElement = document.getElementById("toppersModal");
    if (toppersModalElement && typeof bootstrap !== "undefined") {
        const toppersModal = new bootstrap.Modal(toppersModalElement, {
            backdrop: "static",
            keyboard: true
        });
        setTimeout(() => toppersModal.show(), 500);
    }
});

// Toggle Higher Secondary stream selector conditionally
function toggleStreamSelection(gradeValue) {
    const streamBox = document.getElementById("streamContainer");
    const streamSelect = document.getElementById("selectedStream");
    if (gradeValue === "CLASS_11" || gradeValue === "CLASS_12") {
        streamBox.style.display = "block";
        streamSelect.setAttribute("required", "required");
    } else {
        streamBox.style.display = "none";
        streamSelect.removeAttribute("required");
        streamSelect.value = "";
    }
}

// Bootstrap form validation script
(() => {
    'use strict';
    const forms = document.querySelectorAll('.needs-validation');
    Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
    });
})();

// gallery
document.addEventListener("DOMContentLoaded", function () {
    const filterBtns = document.querySelectorAll(".gallery-filter-btns button");
    const galleryItems = document.querySelectorAll(".gallery-item");

    filterBtns.forEach(btn => {
        btn.addEventListener("click", function () {
            filterBtns.forEach(b => {
                b.classList.remove("active", "btn-dark");
                b.classList.add("btn-outline-dark");
            });

            this.classList.add("active", "btn-dark");
            this.classList.remove("btn-outline-dark");

            const filterValue = this.getAttribute("data-filter");

            galleryItems.forEach(item => {
                if (filterValue === "all" || item.getAttribute("data-category") === filterValue) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });
        });
    });

    // Auto-pause video when modal closes
    const videoModal = document.getElementById("videoPreviewModal");
    if (videoModal) {
        videoModal.addEventListener("hidden.bs.modal", function () {
            const video = document.getElementById("highlightVideoIframe");
            if (video) {
                video.pause();
                video.currentTime = 0;
            }
        });
    }
});