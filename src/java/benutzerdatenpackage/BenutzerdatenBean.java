
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
