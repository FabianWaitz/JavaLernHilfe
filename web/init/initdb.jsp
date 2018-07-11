
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<sql:update dataSource="jdbc/nutzer">
    CREATE TABLE JAVA_BEGRIFFE
    (JAVA_BEGRIFFE VARCHAR(255) NOT NULL,
    ERKLÄRUNG VARCHAR(255),
    PRÜFUNGSRELEVANT BOOLEAN)
</sql:update>

<sql:update dataSource="jdbc/javabegriffe">
    CREATE TABLE BENUTZER
    (BENUTZERNAME VARCHAR(255) NOT NULL,
     PASSWORT VARCHAR (255) 
     PRIMARY KEY (BENUTZERNAME))
</sql:update>

<sql:update dataSource="jdbc/javabegriffe">
    CREATE TABLE BENUTZERGRUPPE
    (BENUTZERNAME VARCHAR(255),
    GRUPPENNAME VARCHAR(255))
</sql:update>

<sql:update dataSource="jdbc/javabegriffe">
    INSERT INTO BENUTZER (BENUTZERNAME, PASSWORT) VALUES 
    ('student', '264c8c381bf16c982a4e59b0dd4c6f7808c51a05f64c35db42cc78a2a72875bb'),
    ('admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918')
</sql:update>


<sql:update dataSource="jdbc/javabegriffe">
    INSERT INTO BENUTZERGRUPPE (BENUTZERNAME, GRUPPENNAME) VALUES
    ('student', 'b_nutzer'),
    ('admin', 'a_nutzer')
</sql:update>

