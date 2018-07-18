
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


        <h1 class="okay">Willkommen!</h1>
        <p>Um diese Seite zu erreichen, muss man als Benutzer eingeloggt sein.</p>


        <table border="1">
            <thead>
                <tr>
                    <th>Java Begriff</th>
                    <th>Erklärung</th>
                    <th>Prüfungsrelevant</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="aktuellerBegriff" items="${result.rows}">


                    <tr>
                        <td>${aktuellerBegriff.Java_Begriffe}</td>
                        <td>${aktuellerBegriff.Erklärung}</td>
                        <td> <c:if test="${aktuellerBegriff.Prüfungsrelevant}">Ja</c:if>
                            <c:if test="${!aktuellerBegriff.Prüfungsrelevant}">Nein</c:if> </td>
                        <td><a href="index.jsp?delete=${aktuellerBegriff.Java_Begriffe}">X</a> </td>

                    </tr>

                </c:forEach>

            </tbody>
        </table>

        <br>
        <h1>Neue Begriffe hinzufügen:</h1>
        <form method="post" id="hinzufügen" name="Begriffe hinzufügen" action="">
            <table border="1">
                <thead>
                    <tr>
                        <th>Java Begriff</th>
                        <th>Erklärung</th>
                        <th>Prüfungsrelevant</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="begriff" value="" placeholder="Ein Java Begriff"/></td>
                        <td><input type="text" name="erklaerung" value="" placeholder="Eine Beschreibung"/></td>
                        <td><input type="checkbox" name="pruefungsrelevant" value="true" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Hinzufügen" name="hinzufügen" />
        </form>


    </body>
</html>
