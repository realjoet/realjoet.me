$(function() {
  if (Modernizr.touch) {
    var $statement = $('.statement-container');
    var $statementPos = $statement.position();
    var $statementHeight = $statement.outerHeight();

    $('.display-section__content-hero').addClass('touch');

    $('.display-section-container').css({"top": $statementPos.top + $statementHeight + 50});
  } else {
    $('.display-section__content-hero').removeClass('touch');
  }
});