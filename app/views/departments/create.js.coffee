<% if @department.new_record? %>
  $('input#department_name').effect('highlight', {color: 'red'})
  $('#error-message').html("<%=@department.errors.full_messages%>")
<% else %>
  $('table#departments').append("<%= escape_javascript(render @department) %>")
  $('tr#<%=dom_id(@department) %>').effect('highlight')
<% end %>
