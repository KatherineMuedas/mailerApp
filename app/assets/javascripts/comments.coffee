$(document).on "page:change", ->
  $('#comments-link').click (event) ->
    event.preventDefault() 
    $('#comments-section').fadeToggle()
    $('#comment_content').focus()