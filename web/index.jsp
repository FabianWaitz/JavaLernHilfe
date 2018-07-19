
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
    <head> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" type="text/css"/>
        <title>Startseite</title>
    </head>
    
<!--    Diese Seite stellt die Startseite des Projekts dar und ist unterteilt in 2 Bereiche:
    Es gibt zunächst einen Willkommenstext, welcher dem Nutzer die Anmeldeoptionen aufzeigt.
    Im zweiten Teil der Seite befindet sich ein Formular (Design => Bootstrap), welches einen
    neuen Nutzer registriert. Weiteres dazu in registrierung.jsp und BenutzerdatenBean.java 
    Grundätzlich funktioniert der Registrierungsablauf über ein normales Formular mit einem submit Button.

    Anmerkung: Die Eingliederung der navi.jspf ist in allen angelegten Seiten Standard. 
    Ebenso wird eine Sessioninfo (sessioninfo.jspf) ausgegeben, sodass der Nutzer weiß unter welchem Namen
    er angemeldet ist. Eventuell vergisst er bei so viel Java-Lernen ja mal seinen Nutzernamen -->

    <body>
        <div class="container">
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h2>Herzlich Willkommen!</h2>
        <p>
            <b>Wir hoffen, dass Ihr viel Spaß mit unserem Programm haben werdet.
                <br>Solltet Ihr bereits registriert sein, könnt Ihr euch einfach im Benutzerbereich anmelden.<br>
                Alle neuen Nutzer müssen sich bitte erst noch registrieren.</b><br>
        </p>

        <h2 style="color:#dc3545;" class="register">Bitte registrieren Sie sich:</h2>


        <div class="formular">
            <form action="registrierung.jsp" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="benutzername" aria-describedby="info" placeholder="Benutzername">
                    <small id="info" class="form-text text-muted">Ihre Daten unterliegen unserem Datenschutz</small>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="passwort" placeholder="Passwort">
                </div>
                <input type="submit" class ="btn btn-danger" value="Registrieren" />
                <input type="reset" class="btn btn-danger" value="Zurücksetzen">

            </form>
        </div>

      
       
        <footer>
            <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
        </footer>
         </div>
    </body>
    
</html>
