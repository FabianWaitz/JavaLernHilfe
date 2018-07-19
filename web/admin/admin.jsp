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
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h2 style="color:#dc3545;">Bitte registriere einen Admin:</h2>
       
        
        <div class="formularadmin">
    <form action="adminreg.jsp" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="admin" aria-describedby="emailHelp" placeholder="Admin">
            <small id="emailHelp" class="form-text text-muted">Ihre Daten unterliegen unserem Datenschutz</small>
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

