$ ->
  $('#formModal').on('hide', ->
    $('#error-message').html('')
    $('#category_name').val('')
  )