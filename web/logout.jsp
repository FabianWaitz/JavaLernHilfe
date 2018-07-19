
<!--Eine Funktion für den Logout-->
<% 
    session.invalidate();
   
    
   response.sendRedirect("index.jsp"); 
%>