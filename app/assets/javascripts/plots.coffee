# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->	
	
	$(".plot_link").click ->
	  plot_id = this.getAttribute("data-link")
	  $.post '/plots/plot_allottees', plot_id: plot_id
	  return
