$(function(){
  $('.display-section__content-hero').on('click', function(){
    var el = $(this);
    var displaySection = el.parent();
    var uuid = el.data('id');

    el.css({'order': 1})

    $.ajax({
      url: './work.json',
      dataType: 'jsonp',
    }).done(function(data) {
      console.log(data);
      for (var i=0; i < data.length; i++) {
        if (data[i].uuid === uuid) {
          displaySection.append(
            '{% include "treasure-chest.swig" %}'
          )
        }
      }
    });
  })
})