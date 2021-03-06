<% if @category.new_record? %>
  $('#category_name').effect('highlight', {color: 'red'})
  $('#error-message').html("<%= @category.errors.full_messages.each {|msg| msg}.join(', ')%>").fadeIn().effect('highlight', {color:'red'})
<% else %>
  $("#formModal").modal('hide')
  $('table#categories').append("<%=escape_javascript(render @category)%>")
  $("tr#<%=dom_id(@category)%>").effect('highlight')
<% end %>