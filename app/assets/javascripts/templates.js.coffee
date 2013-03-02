# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#mainTab a").click (e) ->
    e.preventDefault()
    $(@).tab "show"

  $("#mainTab a:first").click()

  $(".tab-pane a").click (e) ->
    e.preventDefault()
    $(@).tab "show"

  $(".tab-pane a:eq(1)").click()