$(document).on('ready page:load',function() {

  $('.product_new_form').hide()

  $('.header_button').click(function(e) {
    e.preventDefault();
    $(this).fadeOut(100, function() {
      $('.product_new_form').fadeIn(200);
    });

    $('.watch_button').click(function(e) {
      if ($('.project_url').val() === "" || $('.project_budget').val() === "" ) {
        e.preventDefault();
      };
    });

  });

});
