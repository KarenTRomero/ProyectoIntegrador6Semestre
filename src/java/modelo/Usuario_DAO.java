/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Interfaces.Validar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author LAURA
 */
public class Usuario_DAO implements Validar{
Connection con;
Conexion cn=new Conexion();
PreparedStatement ps;
ResultSet rs;

    @Override
    public int Validar(Usuario usu) {
        int r=0;
        String sql="Select * from usuario where user=? and pass=?";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1,usu.getUser());
            ps.setString(2,usu.getPass());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                usu.setUser(rs.getString("user"));
                usu.setPass(rs.getString("pass"));
            }
            if(r==1){
                return 1;
              
            }else{
            return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    }
    
}
