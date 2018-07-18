
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
    <head> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" type="text/css"/>
        <title>Startseite</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h1>Startseite</h1>
        <p>Auf diese Seite kann jeder kommen!</p>

        <h1>Bitte registrieren Sie sich</h1>
        <form action="registrierung.jsp" method="post">
            <fieldset>
                <legend>Registrierung</legend>  
                <ol>
                    <li>
                        <label for="benutzername">Benutzername</label>
                        <input type="text" name="benutzername" autofocus>
                    </li>
                    <li>
                        <label for="passwort">Passwort</label>
                        <input type="password" name="passwort">
                    </li>

                    <li>
                        <input type="submit" value="Registrieren" />
                        <input type="reset" value="Zurücksetzen">
                    </li>
                </ol>
            </fieldset>
        </form>


        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 


    </body>
</html>
