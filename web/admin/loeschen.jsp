
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Benutzer löschen</title>
    </head>
    <body>
        <div class="container">

            <c:if test="${not empty param.delete}">

                <sql:update var="result" dataSource="jdbc/nutzer">
                    DELETE FROM DBADMIN.BENUTZERGRUPPE
                    WHERE BENUTZERNAME = '${param.delete}' 
                </sql:update> 
                <sql:update var="result" dataSource="jdbc/nutzer">
                    DELETE FROM DBADMIN.BENUTZER
                    WHERE BENUTZERNAME = '${param.delete}' 
                </sql:update> 

            </c:if> 


            <sql:query var="result" dataSource="jdbc/nutzer">
                SELECT * from DBADMIN.BENUTZERGRUPPE
            </sql:query>


            <%@ include file="/WEB-INF/jspf/navi.jspf"%> 

            <h2 class="okay">Sie können nun alle Benutzer verwalten!</h2>
            <h3><b>Wichtig:</b></h3><p>Lösche unter keinen Umständen den Nutzer "admin", da 
                es ansonsten keine Möglichkeiten mehr gibt, den Adminbereich zu verwalten. Das Löschen der Nutzer
                entfernt ihre Daten endgültig!</p>

            <table class="table table-hover table-dark datenbank">
                <thead>
                    <tr>
                        <th scope="col">Benutzername</th>
                        <th scope="col">Benutzergruppe</th>
                        <th scope="col">Benutzergruppe</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="benutzer" items="${result.rows}">


                        <tr>
                            <td>${benutzer.BENUTZERNAME}</td>
                            <td>${benutzer.GRUPPENNAME}</td>

                            <td><a href="loeschen.jsp?delete=${benutzer.benutzername}">X</a> </td>

                        </tr>

                    </c:forEach>


                </tbody>
            </table>
            <a class="btn btn-danger" href="index.jsp">Zurück</a>
            <footer>
                <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
            </footer>
        </div>
    </body>
</html>
