<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!--Erweiterung der Erklärung aus Source Packages/benutzerdatenpackage/BenutzerdatenBean.java: 

Nach dem die Daten nun erfasst, verschlüsselt und übermittelt wurde, sind beide sql-update Methoden
dafür zuständig, den Admin erfolgreich anzulegen. Es wird für jeden registrierten Admin ein Benutzername,
Passwort und eine zugeordnete Nutzergruppe (in diesem Fall a_nutzer) angelegt.
a_nutzer verspricht uneingeschränkten Zugang des Programmes.

-->

<jsp:useBean id="userData" scope="page" class="benutzerdatenpackage.AdmindatenBean" />
<jsp:setProperty name="userData" property="*" />

<sql:update var="result" dataSource="jdbc/nutzer">
    INSERT INTO DBADMIN.BENUTZER (BENUTZERNAME, PASSWORT) 
    VALUES ('${userData.admin}', '${userData.getPasswortHash()}')
</sql:update>
<sql:update var="result" dataSource="jdbc/nutzer">
    INSERT INTO DBADMIN.BENUTZERGRUPPE (BENUTZERNAME, GRUPPENNAME) 
    VALUES ('${userData.admin}', 'a_nutzer')
</sql:update>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Registrierungsbestätigung</title>
        <link href="styles.css" rel="stylesheet" type="text/css" />
    </head>

    <!--    Nach dem im Hintergrund nun nach erfolgreicher Eingabe der Daten, diese erfasst, verschlüsselt und im besten Fall
            auch in die Datenbank eingetragen wurden, erhält der Admin nun auch eine Bestätigung über seine
            erfolgreiche Registrierung. Der zuvor eingegebene Benutzername des Admins wird hier in einem kurzen Bestätigungstext ausgegeben-->

    <body> 
        <div class="container">
            <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

            <p><b>Sie haben den Admin unter dem Nutzernamen:<span style="color:red;"> <c:out value="${userData.admin}" /></span> angelegt </b></p>         

        </div>
    </body>
</html>

</body>
</html>