$(function() {
  if (Modernizr.touch) {
    $('.hero-cover > span').addClass('hero-cover__title');
    $('.hero-cover__title').html("title");
  } else {
    $('.hero-cover > span').addClass('hero-cover__target');
    $('.hero-cover__target').html("+");
  }
});