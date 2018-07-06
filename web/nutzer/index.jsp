<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Benutzerseite</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h1 class="okay">Willkommen!</h1>
        <p>Um diese Seite zu erreichen, muss man als Benutzer eingeloggt sein.</p>

         
    </body>
</html>
