$(function() {
  var hero = $('.display-section__content-hero');
  var treasure = $('.treasure-container');
  var closeButton = $('.close-button');

  treasure.hide();

  hero.click(function() {
    var el = $(this);
    var elData = el.data('order');
    var elOrder = el.eq();

    treasure.each(function(index, obj){
      if ($(obj).data('order') === elData && $(obj).hasClass('open')) {
        console.log('Already open');
      } else if ($(obj).hasClass('open')) {
        $(this).slideUp(600).removeClass('open');
      } else if ($(obj).data('order') === elData) {
        $(this).slideDown(600).addClass('open');
      }
    });
  })

  closeButton.click(function() {
    $(this).closest('.treasure-container').slideUp(600).removeClass('open');;
  })
})