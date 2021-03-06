    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        
<!--        Diese Seite dient als kleines Gadget und bietet eine Statusübersicht über die aktuelle Session an-->
        
        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 
        <div class="container">


            <div id="sessioninfo">
                <strong>Sessioninformationen</strong>
                <table>
                    <tr>
                        <td>URL der Seite</td>
                        <td><%= request.getRequestURL()%></td>
                    </tr>
                    <tr>            
                        <td>ID der Session</td>
                        <td><%= session.getId()%></td>
                    </tr>
                    <tr>
                        <td>Die Session ist</td>
                        <td><%= session.isNew() ? "neu" : "nicht neu"%></td>
                    </tr>
                    <tr>
                        <td>Session erzeugt am</td>
                        <td>
                            <%  SimpleDateFormat df = new SimpleDateFormat("dd.MM.yy HH:mm:ss");
                                out.println(df.format(new Date(session.getCreationTime())));%>
                        </td>
                    </tr>
                    <tr>
                        <td>Letzter Zugriff</td>
                        <td>
                            <%= df.format(new Date(session.getLastAccessedTime()))%>
                        </td>
                    </tr>
                    <tr>
                        <td>Session ungültig nach</td>
                        <td>
                            <%= session.getMaxInactiveInterval() + " Sekunden"%>
                        </td>
                    </tr>       
                    <tr>
                        <td>Eingeloggt als</td>
                        <td><%=  request.getRemoteUser()%></td>
                    </tr>
                </table>
            </div>

            <a class="btn btn-danger" href="index.jsp">Zurück</a>
            <footer>
                <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
            </footer>
        </div>
    </body>
</html>
