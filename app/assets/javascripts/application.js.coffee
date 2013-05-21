#= require jquery
#= require jquery_ujs
#= require jquery-ui
#= require best_in_place
#= require best_in_place.purr
#= require bootstrap
#= require bootstrap-datepicker
#= require jquery.pnotify.min
#= require jquery_nested_form
#= require_tree .

$ ->
  $(".best_in_place").best_in_place()

$(document).ajaxComplete (event,request,options) ->
  flashmessage = request.getResponseHeader('X-Message')
  flashtype = request.getResponseHeader('X-Message-Type')
  need_error_icon = false
  need_error_icon = true if flashtype == 'error'
  if flashmessage
    $.pnotify
      text: flashmessage
      type: flashtype
      icon: need_error_icon