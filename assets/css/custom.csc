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
