
<!--Eine Funktion f�r den Logout-->
<% 
    session.invalidate();
   
    
   response.sendRedirect("index.jsp"); 
%>