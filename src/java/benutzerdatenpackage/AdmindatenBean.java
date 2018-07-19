////Ausführliche Erklärung unter BenutzerdatenBean.java 
////=> Diese Funktion unterscheidet sich lediglich darin, dass kein Benutzer registriert wird sondern ein Admin.
////Der Ablauf ist identisch zu BenutzerdatenBean, am Ende wird jedoch der registrierte Admin der Nutzergruppe a_nutzer 
//(admin) zugewiesen.

package benutzerdatenpackage;


public class AdmindatenBean {
       
    private String admin;
    private String passwort;
    
    public String getPasswortHash(){
        return HashEncode.sha256encode(getPasswort());
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getPasswort() {
        return passwort;
    }

    public void setPasswort(String passwort) {
        this.passwort = passwort;
    }  
    
}

