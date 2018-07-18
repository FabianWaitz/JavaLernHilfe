<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Adminseite</title>
    </head>
    <body>
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h2 class="okay">Du bist Admin!</h2>
        <p>Diese ganz spezielle Seite ist nur für Admins zugänglich! Du hast alle Funktionen eines normalen
        Benutzers und kannst außerdem weitere Admins anlegen.</p>
        
        <a class="btn btn-danger" href="status.jsp">Status</a>
         
        <a class="btn btn-danger" href="admin.jsp">Neuen Admin anlegen</a>
        
        <a class="btn btn-danger" href="loeschen.jsp">Benutzer verwalten</a>
        </div>
    </body>
</html>
