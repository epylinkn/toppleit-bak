$(document).ready(function() {
  $('#admin_post_form').submit(function(evt) {    
    $("#post_body").attr('value', editor.getValue());
  });
})