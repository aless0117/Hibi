$(document).on "turbolinks:load", ->
  $('#notification-link').click ->
    $('#notifications-form').fadeToggle()
    $('#notification_description').focus()

$(document).on "ajax:success", "form#comments-form",(ev,data) ->
   console.log data
   $(this).find('textarea').val("")
   $("#ntoficacion").append("<li> #{data.description}</li>");

$(document).on "ajax:error", "form#comments-form",(ev,data) ->
   console.log data
