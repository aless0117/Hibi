// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require turbolinks-compatibility
//= require_tree .


$.material.init()

$(document).on("ready page:load", function() {
  return $('#notification-link').click(function() {
    $('#notifications-form').fadeToggle();
    return $('#notification_description').focus();
  });
});

$(document).on("ajax:success", "form#comments-form", function(ev, data) {
  console.log(data);
  $(this).find('textarea').val("");
  return $("#ntoficacion").append("<li> " + data.description + "</li>");
});

$(document).on("ajax:error", "form#comments-form", function(ev, data) {
  return console.log(data);
});
