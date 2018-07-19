<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <title>Benutzerregistrierung</title>
    </head>
    <body>
        
<!--    Die Registrierung eines Admins funktioniert identisch wie die eines Nutzers. 
        Unterschied: Anstatt "benutzername" wird nun "admin" an die Bean übermittelt.
        Ebenso werden die Daten des registrierten Admins in die Datenbanktabelle Benutzer hinzugefügt, 
        die Benutzergruppe ändert sich jedoch auf a_nutzer (Adminrechte). Somit wird gewährleistet, dass der 
        Admin auch Adminrechte besitzt, da a_nutzer im Gegensatz zu b_nutzer keine Einschränkungen beinhaltet. -->
        
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h2 style="color:#dc3545;">Bitte registriere einen Admin:</h2>
       
        
        <div class="formularadmin">
    <form action="adminreg.jsp" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="admin" aria-describedby="info" placeholder="Admin">
            <small id="info" class="form-text text-muted">Ihre Daten unterliegen unserem Datenschutz</small>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="passwort" placeholder="Passwort">
        </div>
        <input type="submit" class ="btn btn-danger" value="Registrieren" />
        <input type="reset" class="btn btn-danger" value="Zurücksetzen">
        <a class="btn btn-danger" href="index.jsp">Zurück</a>

    </form>
</div>
        <footer>
            <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
        </footer>
        </div>     
    </body>
</html>

