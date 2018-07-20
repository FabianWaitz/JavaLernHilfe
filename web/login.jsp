<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Loginformular</title>
    </head>

    <!--    Diese Seite ist für den Login zuständig - und zwar sowohl für den Nutzer als auch den Admin Login gleichermaßen.-->

    <body>

        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        <div class="container">

            <!--            Sollten die eingegeben Daten fehlerhaft sein, erfolgt eine Ausgabe "Loginfehler - bitte nochmal"-->

            <%
                if (request.getParameter("Retry") != null) {
                    out.println("<h1 class=\"error\">Loginfehler - bitte nochmal</h1>");
                }
            %>

            <!--            In diesem Formular wird der Login geregelt. Voraussetzung für einen erfolgreichen Login ist natürlich
                        ein Eintrag in der Datenbank DBADMIN.BENUTZER. Der eingegebene Benutzername und das Passwort muss mit
                        einem dieser Einträge übereinstimmen.
                        Erklärung: Der Nutzer stellt eine Anfrage an den Server und erbittet Zugang zum Bereich "Benutzer". 
                        Der Server gewährt in diesem, sofern er sich erfolgreich eingeloggt hat, ansonten wird er an eine ERROR Page verwiesen.
            -->        

            <div class="formular">
                <form method="post" action="j_security_check">
                    <fieldset id="logindaten">
                        <h2>Login</h2>
                        <div class="form-group">

                            <input type="text" class="form-control" name="j_username"  placeholder="Benutzername">
                        </div>
                        <div class="form-group">

                            <input type="password" class="form-control" name="j_password"  placeholder="Passwort">
                        </div>
                        <input type="submit" class ="btn btn-danger" value="Einloggen" />
                        <input type="reset" class="btn btn-danger" value="Zurücksetzen">
                    </fieldset>
                </form>
            </div>
            <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 


        </div>
    </body>
</html>