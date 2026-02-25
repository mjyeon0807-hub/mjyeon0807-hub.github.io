/* ==========================================================================
   Custom overrides (Yeon Lab)
   Goal: Use /assets/img/header-2.png as a FULL top banner (navbar background),
         not as a small logo image. Keep menu readable.
   ========================================================================== */

/* --- Navbar banner background --- */
.navbar-custom {
  /* Use header-2.png as the top cover image */
  background-image: url({{ "/assets/img/header-2.png" | relative_url }}) !important;
  background-size: cover !important;
  background-position: center center !important;
  background-repeat: no-repeat !important;

  /* Banner height (adjust if you want taller/shorter) */
  min-height: 130px;

  /* Clean look */
  border-bottom: 1px solid rgba(0, 0, 0, 0.12) !important;
}

/* Dark overlay so white text is readable on the image */
.navbar-custom::before {
  content: "";
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.25);
  pointer-events: none;
}

/* Ensure navbar content is above the overlay */
.navbar-custom > * {
  position: relative;
  z-index: 1;
}

/* Brand + links readable on the banner */
.navbar-custom .navbar-brand,
.navbar-custom .navbar-nav .nav-link,
.navbar-custom .navbar-toggler {
  color: #ffffff !important;
  text-shadow: 0 2px 8px rgba(0, 0, 0, 0.55);
  font-weight: 800;
}

/* Make sure the hamburger icon is visible (bootstrap uses a background-image) */
.navbar-custom .navbar-toggler {
  border-color: rgba(255, 255, 255, 0.5) !important;
}
.navbar-custom .navbar-toggler-icon {
  filter: invert(1) contrast(2);
}

/* Spacing inside the taller banner */
.navbar-custom,
.navbar-custom.top-nav-short,
.navbar-custom.top-nav-short-permanent {
  padding-top: 18px !important;
  padding-bottom: 18px !important;
}

/* Align nav links vertically in the banner */
.navbar-custom .navbar-nav .nav-link {
  padding-top: 18px !important;
  padding-bottom: 18px !important;
}

/* Dropdown menu should remain readable (normal light menu) */
.navbar-custom .dropdown-menu {
  background: #ffffff !important;
}
.navbar-custom .dropdown-menu .dropdown-item {
  color: #222 !important;
  text-shadow: none !important;
}

/* IMPORTANT: if any old "logo image" markup exists, hide it.
   (We want background banner only.) */
.navbar-custom .navbar-brand-logo {
  display: none !important;
}

/* --- Mobile tweaks --- */
@media (max-width: 768px) {
  .navbar-custom {
    min-height: 90px;
  }

  .navbar-custom,
  .navbar-custom.top-nav-short,
  .navbar-custom.top-nav-short-permanent {
    padding-top: 10px !important;
    padding-bottom: 10px !important;
  }

  .navbar-custom .navbar-nav .nav-link {
    padding-top: 10px !important;
    padding-bottom: 10px !important;
  }
}
