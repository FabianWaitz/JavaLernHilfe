<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<jsp:useBean id="userData" scope="page" class="benutzerdatenpackage.BenutzerdatenBean" />
<jsp:setProperty name="userData" property="*" />

<sql:update var="result" dataSource="jdbc/nutzer">
    INSERT INTO DBADMIN.BENUTZER (BENUTZERNAME, PASSWORT) 
    VALUES ('${userData.benutzername}', '${userData.getPasswortHash()}')
</sql:update>
<sql:update var="result" dataSource="jdbc/nutzer">
    INSERT INTO DBADMIN.BENUTZERGRUPPE (BENUTZERNAME, GRUPPENNAME) 
    VALUES ('${userData.benutzername}', 'b_nutzer')
</sql:update>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Registrierungsbestätigung</title>
        <link href="styles.css" rel="stylesheet" type="text/css" />
    </head>

    <body> 
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h1>Herzlich willkommen!</h1>
        <p>Sie wurden unter dem Namen <c:out value="${userData.benutzername}" /> registriert </p>         


    </body>
</html>

</body>
</html>
