/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pt.kereta.api.kai;

/**
 *
 * @author rangga
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author rangga darmajati 
 * @email rangga.darmajati@wgs.co.id
 * @gitlab @ranggadj
 * @whatsapp 085721731478
 *
 */
public class ConnectionDB {

    // get data from environment class
    String host     = Env.getHost();
    String database = Env.getDatabase();
    String username = Env.getUsername();
    String password = Env.getPassword();
    
    // Declare Connection, Statement and Prepared Statement 
    Connection con;
    Statement stm;
    PreparedStatement pst;
    public void config(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://"+host+"/"+database+"", ""+username+"", ""+password+"");
            stm = con.createStatement();
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "koneksi gagal "+e.getMessage());
            System.exit(0);
        }
    }
}
