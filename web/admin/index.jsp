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

        <!--    Dieser Bereich stellt den Adminbereich des Programmes dar.
                Hier sind folgende Funktionen möglich: 
                - Eine Statusinformation über die aktuelle Session einholen.
                - Einen neuen Admin registrieren. 
                - Einen bereits angelegten Benutzer oder Admin löschen.-->


        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 
        <div class="container">

            <h2 class="okay">Du bist Admin!</h2>
            <p>Diese ganz spezielle Seite ist nur für Admins zugänglich! Du hast alle Funktionen eines normalen
                <br>Benutzers und kannst außerdem weitere Admins anlegen und Benutzer verwalten.</p>

            <a class="btn btn-danger" href="status.jsp">Status</a>

            <a class="btn btn-danger" href="admin.jsp">Neuen Admin anlegen</a>

            <a class="btn btn-danger" href="loeschen.jsp">Benutzer verwalten</a>

            <footer>
                <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
            </footer>
        </div>
    </body>
</html>
