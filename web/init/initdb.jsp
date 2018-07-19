
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--Ausführung in der Browserleiste Projektname/init/initdb.jsp-->

<sql:update dataSource="jdbc/nutzer">
    CREATE TABLE JAVA_BEGRIFFE
    (JAVA_BEGRIFFE VARCHAR(255) NOT NULL,
    ERKLÄRUNG VARCHAR(255),
    PRÜFUNGSRELEVANT BOOLEAN)
</sql:update>

<sql:update dataSource="jdbc/nutzer">
    CREATE TABLE BENUTZER
    (BENUTZERNAME VARCHAR(255) NOT NULL, PRIMARY KEY (BENUTZERNAME), PASSWORT VARCHAR (255))
</sql:update>

<sql:update dataSource="jdbc/nutzer">
    CREATE TABLE BENUTZERGRUPPE
    (BENUTZERNAME VARCHAR(255), GRUPPENNAME VARCHAR(255))
</sql:update>

<sql:update dataSource="jdbc/nutzer">
    INSERT INTO BENUTZER (BENUTZERNAME, PASSWORT) VALUES 
    ('student', '264c8c381bf16c982a4e59b0dd4c6f7808c51a05f64c35db42cc78a2a72875bb'),
    ('admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918')
</sql:update>

<sql:update dataSource="jdbc/nutzer">
    INSERT INTO BENUTZERGRUPPE (BENUTZERNAME, GRUPPENNAME) VALUES
    ('student', 'b_nutzer'),
    ('admin', 'a_nutzer')
</sql:update>

<sql:update dataSource="jdbc/nutzer">
    INSERT INTO JAVA_BEGRIFFE (JAVA_BEGRIFFE, ERKLÄRUNG, PRÜFUNGSRELEVANT) VALUES
    ('Klasse', 'Die Klassen sind die Basis in JAVA. Jede Klasse ist ein Objekttyp z.B. eine Farbe. Alles was ich in JAVA verwenden möchte, muß in irgendwelchen Klassen stehen.', 'false'),
    ('Objekt', 'JAVA ist objektorientiert. Aus den meisten Klassen können Objekte abgeleitet werden. Im Prinzip kann man alles ein Objekt nennen, was mit Objekttyp Objektname = new Objekttyp() definiert wird.', 'true'),
    ('Constructor', 'Der Constructor legt fest, wie ein Objekt implementiert (eingebunden) werden muß. Dabei werden alle notwendigen Werte angegeben, die dafür benötigt werden.', 'true'),
    ('Methode', 'Die Methoden sind die Funktionen, die mir zur Verfügung stehen, um mit den Objekten arbeiten zu können. Sie sind in den entsprechenden Klassen enthalten.', 'false')
    
</sql:update>

