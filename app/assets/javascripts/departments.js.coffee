$ ->
  $('#formModal').on('hide', ->
    $('#error-message').html('')
    $('#department_name').val('')
  )