/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author LAURA
 */
public class Conexion {
    Connection con;
    public Connection getConnection(){

          try {
            Class.forName("com.mysql.jdbc.Driver");
            con =  (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind","root","");
            System.out.print("Conexion establecida");
            //JOptionPane.showMessageDialog(null,"Conexion establecida");
        } catch (Exception e) {
            System.out.println("ERROR EN LA CONEXION"+e.getMessage());
        }
        return con;
    }
}
