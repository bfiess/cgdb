# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'click', 'form .add_ingredients', (event) ->
	time = new Date().getTime()
	regexp = new RegExp($(this).data('id'), 'g')
	$(this).before($(this).data('ingredients').replace(regexp, time))
	event.preventDefault()
	
$(document).on 'click', 'form .remove_fields', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('div').hide()
  event.preventDefault()