/* ===== Navbar: white background + large banner logo ===== */

/* White navbar background */
.navbar-custom {
  background-color: #ffffff !important;
  background-image: none !important;
}

/* Optional: slightly lighter border */
.navbar-custom {
  border-bottom: 1px solid #e6e6e6 !important;
}

/* If a logo image exists, make it big like a banner */
.navbar-custom .navbar-brand.navbar-brand-logo {
  padding-top: 6px !important;
  padding-bottom: 6px !important;
  margin-right: 18px !important;
}

/* Make the image itself larger */
.navbar-custom .navbar-brand-logo img {
  height: 72px !important;   /* increase/decrease (60-90px) */
  width: auto !important;
  max-height: none !important;
}

/* Ensure navbar content aligns vertically with taller logo */
.navbar-custom,
.navbar-custom.top-nav-short,
.navbar-custom.top-nav-short-permanent {
  padding-top: 0 !important;
  padding-bottom: 0 !important;
}

/* Keep the menu items vertically centered */
.navbar-custom .navbar-nav .nav-link {
  padding-top: 28px !important;   /* tune if you change logo height */
  padding-bottom: 28px !important;
}

/* Mobile: keep logo smaller so it doesn't take over */
@media (max-width: 768px) {
  .navbar-custom .navbar-brand-logo img {
    height: 44px !important;
  }

  .navbar-custom .navbar-nav .nav-link {
    padding-top: 12px !important;
    padding-bottom: 12px !important;
  }
}

/* Mobile navbar fix: prevent logo + long title overlap */

/* Make the navbar brand area behave nicely */
.navbar .navbar-brand {
  display: flex;
  align-items: center;
  gap: 8px;
  min-width: 0; /* allows text to shrink instead of forcing overflow */
}

/* Ensure logo never grows too large */
.navbar .navbar-brand img {
  max-height: 36px;
  width: auto;
  height: auto;
}

/* On phones: hide the long title text so it doesn't collide with the logo */
@media (max-width: 576px) {
  .navbar .navbar-brand {
    max-width: calc(100% - 60px); /* leave room for hamburger button */
  }

  /* Hide the title text, keep the logo */
  .navbar .navbar-brand span,
  .navbar .navbar-brand .site-title,
  .navbar .navbar-brand .navbar-brand-title {
    display: none !important;
  }
}
