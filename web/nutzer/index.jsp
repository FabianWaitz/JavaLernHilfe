<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>

        <title>Datenbankseite</title>
    </head>
    <body>

        <sql:query var="result" dataSource="jdbc/javabegriffe">
            SELECT Java_Begriffe, Erklärung, Prüfungsrelevant from JADMIN.JAVA_BEGRIFFE FETCH FIRST 100 ROWS ONLY
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
                    </tr>
                </c:forEach>




            </tbody>
        </table>


    </body>
</html>
