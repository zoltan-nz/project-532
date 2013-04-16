$ ->
  $('#formModal').on('hide', ->
    $('#error-message').html('')
    $('#department_name').val('')
    $('.best_in_place').best_in_place()
  )