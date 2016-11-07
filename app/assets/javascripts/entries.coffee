# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#checkAll_1').click ->
    $('#all_content_categories input').prop('checked', $('#checkAll_1').prop('checked'))

$ ->
  $('#checkAll_2').click ->
    $('#all_os_categories input').prop('checked', $('#checkAll_2').prop('checked'))

$ ->
  $('#checkAll_3').click ->
    $('#all_carrier_categories input').prop('checked', $('#checkAll_3').prop('checked'))


# $ ->
#   if $('#all_carrier_categories').change ->
#     $('#checkAll_1').toggle()
