<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
<!--Eine Funktion f�r den Logout-->
<% 
    session.invalidate();
   
    
   response.sendRedirect("index.jsp"); 
%>