# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#datetimepicker').datetimepicker(format: 'DD-MM-YYYY');

	addMoreFiles = ->
  	
    $('#new_allottee').append '<input type="file" name="files[]" />'
  	return