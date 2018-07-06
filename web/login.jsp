<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Loginformular</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <%
            if(request.getParameter("Retry") != null)
                out.println("<h1 class=\"error\">Loginfehler - bitte nochmal</h1>");
        %>
        <form method="post" action="j_security_check">
            <fieldset id="logindaten">
                <legend>Login</legend>
                <ol>
                    <li>
                        <label for="j_nutzername">Benutzername</label>
                        <input type="text" name="j_username" autofocus>
                    </li>
                    <li>
                        <label for="j_password">Passwort</label>
                        <input type="password" name="j_password">
                    </li>
                    <li>
                        <input type="submit" value="Einloggen">
                        <input type="reset" value="Zurücksetzen">
                    </li>
                </ol>
            </fieldset>
        </form>

      

    </body>
</html>