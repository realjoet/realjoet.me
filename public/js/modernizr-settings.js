$(function() {
  if (Modernizr.touch) {
    $('.display-section__content-hero').addClass('touch');

  } else {
    $('.display-section__content-hero').removeClass('touch');
  }
});