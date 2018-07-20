<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!--Erweiterung der Erklärung aus Source Packages/benutzerdatenpackage/BenutzerdatenBean.java: 

Nach dem die Daten nun erfasst, verschlüsselt und übermittelt wurde, sind beide sql-update Methoden
dafür zuständig, den Nutzer erfolgreich anzulegen. Es wird für jeden registrierten Nutzer ein Benutzername,
Passwort und eine zugeordnete Nutzergruppe (in diesem Fall b_nutzer) angelegt.

Nun haben Sie bereits zwei der insgesammt drei angelegten Datenbanktabellen kennengelernt.
DBADMIN.BENUTZER: Beinhaltet den Benutzernamen und das Passwort
DBADMIN.BENUTZERGRUPPE: Ordnet jedem Benutzernamen eine Nutzergruppe zu. Entweder b_nutzer (Nutzer) oder a_nutzer (admin)-->

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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    </head>
    
<!--    Nach dem im Hintergrund nun nach erfolgreicher Eingabe der Daten, diese erfasst, verschlüsselt und im besten Fall
        auch in die Datenbank eingetragen wurden, erhält der Nutzer nun auch eine Bestätigung über seine
        erfolgreiche Registrierung. Der zuvor eingegebene Benutzername wird hier in einem kurzen Bestätigungstext ausgegeben-->

    <body> 
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h2>Herzlich willkommen!</h2>
        <p><b>Sie wurden erfolgreich unter dem Namen <span style="color:red;"> <c:out value="${userData.benutzername}" /></span> registriert</b></p>         

        </div>
    </body>
</html>

</body>
</html>
