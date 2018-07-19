//Diese Bean ist für den HashEncode - SHA256 zuständig.
//Registriert sich ein Nutzer erfolgreich, wird sein Passwort in einen Hashcode umgewandelt und somit verschlüsselt

package benutzerdatenpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class HashEncode {
    
      public static String sha256encode(String passwort) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(HashEncode.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        }
        md.update(passwort.getBytes());
        byte[] hashcode = md.digest();
        String hexResult = bytesToHex(hashcode);
        System.out.println("Passwort: " + passwort + " => " + hexResult);
        return hexResult;
    }

    public static String bytesToHex(byte[] hashcode) {
        final StringBuilder builder = new StringBuilder();
        for (byte b : hashcode) {
            builder.append(String.format("%02x", b));
        }
        return builder.toString();
    }
    
    
}
