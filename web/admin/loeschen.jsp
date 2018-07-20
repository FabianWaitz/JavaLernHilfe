
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


        <!--        Die If-Funktion überprüft im Zusammenhang mit der Delete Funktion ob ein Benutzer gelöscht werden
                    kann. Ist dies möglich, wird der Benutzer sowohl aus der Datenbanktabelle BENUTZER als auch aus BENUTZERGRUPPE
                    und somit endgültig gelöscht-->

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

        <!--        Folgendes Query gibt die Daten der Datenbanktabelle Benutzergruppe aus.-->

        <sql:query var="result" dataSource="jdbc/nutzer">
            SELECT * from DBADMIN.BENUTZERGRUPPE
        </sql:query>


        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 
        <div class="container">

            <h2 class="okay">Sie können nun alle Benutzer verwalten!</h2>
            <h3><b>Wichtig:</b></h3><p>Lösche unter keinen Umständen den Nutzer "admin", da 
                es ansonsten keine Möglichkeiten mehr gibt, den Adminbereich zu verwalten. Das Löschen der einzelnen Nutzer
                entfernt ihre Daten endgültig!</p>

            <!--        Diese Tabelle liefert einen Überblick über bereits angelegte Nutzer oder Admins. 
                        Das Prinzip ist bereits unter nutzer/index.jsp bekannt. 
                        Ebenso durchläuft eine forEach Funktion die einzelnen Zeilen und gibt den Benutzernamen und
                        die Nutzergruppe (Gruppenname) der Datenbanktabelle aus. -->

            <table class="table table-hover datenbankadmin" border="1">
                <thead class="thead-dark">
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

                            <td><a  class="xclassadmin" href="loeschen.jsp?delete=${benutzer.benutzername}">X</a> </td>

                        </tr>

                    </c:forEach>



                </tbody>
            </table>
            <div class="nutzerinfo">
                <p>b_nutzer = Benutzer</p><p>a_nutzer = Admin</p>
                <a class="btn btn-danger" href="index.jsp">Zurück</a>
            </div>
            <footer>
                <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
            </footer>
        </div>
    </body>
</html>
