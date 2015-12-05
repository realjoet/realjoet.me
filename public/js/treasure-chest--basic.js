$(function() {
  var hero = $('.display-section__content-hero');
  var treasure = $('.treasure-container');
  var closeButton = $('.close-button');

  treasure.hide();

  hero.click(function() {
    var hero = $(this);

    treasureKey(hero);
  })

  closeButton.click(function() {
    $(this).closest('.treasure-container').slideUp(600).removeClass('open');;

    if (Modernizr.touch) {
      $(this).off('hover');
      $(this).toggleClass('clicked');
    }
  })

  /* Checks to see if the data-order attribute of the display hero you clicked on is the same as the data-order attribute on a treasure display. 

  If the order on the display hero and treasure display is the same and the treasure display is open, you'll get a log to the console >> "Already open". 

  If the data-order doesn't match but there is a treasure display open, the treasure display that doesn't match will close and the treasure display with an order that matches the display hero you clicked on will open. */
  function treasureKey(el) {
    var hero = $(el);
    var heroData = hero.data('order');

    treasure.each(function(index, obj){
      if ($(obj).data('order') === heroData && $(obj).hasClass('open')) {
        $(this).slideUp(600).removeClass('open');
      } else if ($(obj).hasClass('open')) {
        $(this).slideUp(600).removeClass('open');
      } else if ($(obj).data('order') === heroData) {
        var $topPos = $(this).position.top;
        
        $(this).slideDown(600).addClass('open');
      }
    });
  }
})