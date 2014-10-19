$(window).load(function() {
  var $button = $('#create-cause'),
      loadForm = function() { $.ajax({url: "/causes/new" }).done(function(data) { $('#cause-form').html(data); }) };

  $button.click(loadForm);
});
