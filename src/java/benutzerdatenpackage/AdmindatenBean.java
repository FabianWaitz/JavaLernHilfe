
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

