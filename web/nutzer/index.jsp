
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>

        <title>Datenbankseite</title>
    </head>
    <body>
        <div class="container">
        <c:if test="${not empty param.begriff or not empty param.erklaerung or not empty param.pruefungsrelevant}">


            <sql:update var="result" dataSource="jdbc/nutzer">
                INSERT INTO DBADMIN.JAVA_BEGRIFFE (JAVA_BEGRIFFE, ERKLÄRUNG, PRÜFUNGSRELEVANT)
                VALUES ('${param.begriff}', '${param.erklaerung}', ${param.pruefungsrelevant} <c:if test="${!param.pruefungsrelevant}">false</c:if>)
            </sql:update>

        </c:if>
        <c:if test="${not empty param.delete}">

            <sql:update var="result" dataSource="jdbc/nutzer">
                DELETE FROM DBADMIN.JAVA_BEGRIFFE
                WHERE JAVA_BEGRIFFE = '${param.delete}' 
            </sql:update> 

        </c:if> 
        <sql:query var="result" dataSource="jdbc/nutzer">
            SELECT Java_Begriffe, Erklärung, Prüfungsrelevant from DBADMIN.JAVA_BEGRIFFE FETCH FIRST 100 ROWS ONLY
        </sql:query>

        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 


        <h2>Willkommen im Java-Lernbereich.</h2>
        <p><b>Es ist dir möglich, in diesem Bereich Lernbegriffe anzulegen und diese gegebenfalls mit einer Erklärung zu erweitern.
              Außerdem kannst du (falls nötig) die Begriffe als "prüfungsrelevant" kennzeichnen.
              Alle Begriffe können jederzeit gelöscht werden.</b></p><br>
        

        
        <h2 style="color:#dc3545;">Neue Begriffe hinzufügen:</h2>
        <form method="post" id="hinzufügen" name="Begriffe hinzufügen" action="">
            <table class="table add" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Java Begriff</th>
                        <th scope="col">Erklärung</th>
                        <th scope="col">Prüfungsrelevant</th>
                    </tr>
                </thead>
                <tbody class="add-weiß">
                    <tr>
                        <td><input  class="form-control" required type="text" name="begriff" value="" placeholder="Ein Java Begriff"/></td>
                        <td><textarea class="form-control" name="erklaerung" maxinput="250" placeholder="Eine Beschreibung"></textarea></td>
                        <td><input class="form-control" type="checkbox" name="pruefungsrelevant" value="true" /></td>
                    </tr>
                </tbody>
            </table>
            <input class="btn btn-danger hinzufügen" type="submit" value="Hinzufügen" name="hinzufügen" />
        </form>


        <table class="table table-hover table-dark datenbank">
            <thead>
                <tr>
                    <th scope="col">Java Begriff</th>
                    <th class="maxbreite" scope="col">Erklärung</th>
                    <th scope="col">Prüfungsrelevant</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="aktuellerBegriff" items="${result.rows}">


                    <tr>
                        <td>${aktuellerBegriff.Java_Begriffe}</td>
                        <td>${aktuellerBegriff.Erklärung}</td>
                        <td> <c:if test="${aktuellerBegriff.Prüfungsrelevant}">Ja</c:if>
                            <c:if test="${!aktuellerBegriff.Prüfungsrelevant}">Nein</c:if> </td>
                        <td><a class="xclass" href="index.jsp?delete=${aktuellerBegriff.Java_Begriffe}">X</a> </td>

                    </tr>

                </c:forEach>
            </tbody>
        </table>

        <br>
        <footer>
            <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
        </footer>
        </div>
    </body>
</html>
