$('#edit_<%=dom_id(@department)%>').effect('highlight').html("<%= escape_javascript(render 'form') %>")