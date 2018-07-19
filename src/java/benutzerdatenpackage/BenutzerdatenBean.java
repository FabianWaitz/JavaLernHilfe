//Diese Seite ist für das erfolgreiche Transferieren der eingegeben Registrierungsdaten zuständig.
//Die Daten  werden - nach dem Erfassen und auswerten - in die setBeanProperty Funktion (zu finden unter: registrierung.jsp )übermittelt
//und anschließend in eine sql-update Funktion eingebaut. Somit werden die Daten erfolgreich in die Datenbank
//übertragen. Es wird außerdem automatisch jedem neuen Nutzer die Nutzergruppe "b_nutzer" (normale Nutzerrechte) zugewiesen.


package benutzerdatenpackage;

public class BenutzerdatenBean {
   
    private String benutzername;
    private String passwort;
    
    public String getPasswortHash(){
        return HashEncode.sha256encode(getPasswort());
    }

    public String getBenutzername() {
        return benutzername;
    }

    public void setBenutzername(String benutzername) {
        this.benutzername = benutzername;
    }

    public String getPasswort() {
        return passwort;
    }

    public void setPasswort(String passwort) {
        this.passwort = passwort;
    }  
    
}
