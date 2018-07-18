
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
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h2>Herzlich Willkommen!</h2>
        <p>
            <b>Wir hoffen, dass Ihr viel Spaß mit unserem Programm haben werdet.
                <br>Solltet ihr bereits registriert sein, könnt ihr euch einfach im Benutzerbereich anmelden.<br>
                Alle neuen Nutzer müssen sich bitte erst noch registrieren.</b><br>
        </p>

        <h2 style="color:#dc3545;" class="register">Bitte registrieren Sie sich</h2>


        <div class="formular">
            <form action="registrierung.jsp" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="benutzername" aria-describedby="emailHelp" placeholder="Benutzername">
                    <small id="emailHelp" class="form-text text-muted">Bitte keine Umlaute verwenden</small>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="passwort" placeholder="Passwort">
                </div>
                <input type="submit" class ="btn btn-danger" value="Registrieren" />
                <input type="reset" class="btn btn-danger" value="Zurücksetzen">

            </form>
        </div>

      
       
        <footer>
            <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
        </footer>
         </div>
    </body>
    
</html>
