<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--Diese Seite gibt eine Fehlermeldung aus, sobald sich ein "normaler "Nutzer versucht auf die Adminseite
zu begeben.-->

<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <title>Fehler 403</title>
    </head>
    <body>

        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 
        <div class="container2">

            <div class="errormeldung">
                <h2 class="error">Fehler 403</h2>
                <p>Der Zugriff auf die gewünschte Seite ist Ihnen nicht gestattet.<br>
                    Sie haben <b>keine</b> Adminrechte.</p> 
            </div>
        </div>
    </body>
</html>
