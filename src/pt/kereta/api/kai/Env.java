/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pt.kereta.api.kai;

/**
 *
 * @author rangga darmajati 
 * @email rangga.darmajati@wgs.co.id
 * @gitlab @ranggadj
 * @whatsapp 085721731478
 *
 */
public class Env {
    // Config for Connect to your Database
    private static String host     = "localhost";
    private static String database = "uts_vispro_tiket";
    private static String username = "root";
    private static String password = "openmyway21";
    
    public static String getHost(){
        return host;
    }
    
    public static String getDatabase(){
        return database;
    }
    
    public static String getUsername(){
        return username;
    }
    
    public static String getPassword(){
        return password;
    }
}
