# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	states = $('#mascot_id').html()
	$('#factura_id').change ->
		factura = $('#factura_id').html(mascota)
		mascota = $(mascota).filter("optgroup[label='#{factura}']").html()
	if mascota
		$('#factura_id').html(mascota)
	else
		$('#factura_id').empty()
