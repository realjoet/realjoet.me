//! Sets Display Section position across browsers, on resize
function displaySectionPos() {
  var $masthead = $('.masthead-container');
  var $mastheadPos = $masthead.position();
  var $mastheadHeight = $masthead.outerHeight();
  var $statement = $('.statement-container');
  var $statementPos = $statement.position();
  var $statementHeight = $statement.outerHeight();

  if ($(window).width() < 786) {
    $('.display-section-container').css({"top": $statementPos.top + $statementHeight + 15});
  } else {
    $('.display-section-container').css({"top": $mastheadPos.top + $mastheadHeight + 150});
  }
}

$(function(){
  displaySectionPos();

  $(window).resize(function(){
    displaySectionPos();
  })
})
