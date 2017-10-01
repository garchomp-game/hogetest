$(function(){
  $("#profile-frend").click(function(){
    $(".modal-wrapper").fadeIn("off-modal");
  });
  $(document).on('click touchend',   function(e) {
    if (!$(e.target).closest('.modal-content,#profile-frend').length) {
      $(".modal-wrapper").fadeOut();
    }
  });
  $("#x-button").click(function(){
    $(".modal-wrapper").fadeOut();
  });
});
