$(function() {
  var hero = $('.display-section__content-hero');
  var treasureContainer = $('.treasure-container');
  var closeButton = $('.js-close-button');

  // Doesn't un-animate on mobile when you click the same hero if it's already been opened
  hero.click(function() {
    var hero = $(this);

    if (Modernizr.touch) {
      $(this).off('focus');
      hero.toggleClass('clicked')
    }

    treasureKey(hero);
  });

  closeButton.click(function() {
    $(this).closest('.treasure-description__title').animate({opacity: 0}, 600);
    $(this).closest('.treasure-description__role').animate({opacity: 0}, 600);
    $(this).closest('.treasure-description__details').animate({opacity: 0}, 600);
    $(this).closest('.treasure-hero__button-container').animate({opacity: 0}, 600);
    $(this).closest(treasureContainer).animate({height: "0", opacity: "0", width: "0"}, 800).removeClass('open').delay(1200);
    $(this).closest(treasureContainer).css({display: "none"});
  })

  /* Checks to see if the data-order attribute of the display hero you clicked on is the same as the data-order attribute on a treasure display. 

  If the order on the display hero and treasure display is the same and the treasure display is open, you'll get a log to the console >> "Already open". 

  If the data-order doesn't match but there is a treasure display open, the treasure display that doesn't match will close and the treasure display with an order that matches the display hero you clicked on will open. */
  function treasureKey(el) {
    var hero = $(el);
    var heroData = hero.data('order');

    $('.treasure-container').each(function(index, obj){
      if ($(obj).data('order') === heroData && $(obj).hasClass('open')) {
        $('.treasure-description__title').animate({opacity: 0}, 600);
        $('.treasure-description__role').animate({opacity: 0}, 600);
        $('.treasure-description__details').animate({opacity: 0}, 600);
        $('.treasure-hero__button-container').animate({opacity: 0}, 600);
        $(this).animate({height: "0", opacity: "0", width: "0"}, 1500).removeClass('open').delay(200);
        $(this).css({display: "none"});
      } else if ($(obj).hasClass('open')) {
        $('.treasure-description__title').animate({opacity: 0}, 600);
        $('.treasure-description__role').animate({opacity: 0}, 600);
        $('.treasure-description__details').animate({opacity: 0}, 600);
        $('.treasure-hero__button-container').animate({opacity: 0}, 600);
        $(this).animate({height: "0", opacity: "0", width: "0"}, 800).removeClass('open').delay(200);
        $(this).css({display: "none"});
      } else if ($(obj).data('order') === heroData) {    
        $(this).css({display: "inline-block"}).animate({height: "100%", opacity: "1", width: "92.5%"}).addClass('open').delay(800);
        $('.treasure-description__title').animate({opacity: 1}, 600);
        $('.treasure-description__role').animate({opacity: 1}, 600);
        $('.treasure-description__details').animate({opacity: 1}, 600);
        $('.treasure-hero__button-container').animate({opacity: 1}, 600);
      }
    })
  }
})