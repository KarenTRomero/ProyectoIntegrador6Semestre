/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Interfaces.CRUD_Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LAURA
 */
public class Usuario_DAO_CRUD implements CRUD_Usuarios{

    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario usu=new Usuario();
    @Override
    public List listar() {
        
      ArrayList<Usuario>list=new ArrayList<>(); 
      String sql="select * from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            Usuario usu=new Usuario();
            usu.setId_usuario(rs.getInt("id_usuario"));
            usu.setNombre(rs.getString("nombre"));
            usu.setCorreo(rs.getString("correo"));
            usu.setTelefono(rs.getString("telefono"));
            usu.setUser(rs.getString("user"));
            usu.setPass(rs.getString("pass"));
            list.add(usu);
            
            }
        } catch (Exception e) {
        }
        return list;
 
    }

    @Override
    public Usuario list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Usuario usu) {
      String sql="INSERT INTO usuario(nombre,correo,telefono,user,pass) VALUES(?,?,?,?,?)";
        try {
             con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("no se pudo");
        }
        return false;
    }

    @Override
    public boolean edit(Usuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List buscar(String texto) {
     List<Usuario> lista=new ArrayList<>();
     String sql;
     sql="SELECT * FROM usuario where id_usuario like '%"+texto+"%' or nombre like '%"+texto+"%' or correo like '%"+texto+"%' or telefono like '%"+texto+"%' or user like '%"+texto+"%'";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
             Usuario usu=new Usuario();
            usu.setId_usuario(rs.getInt("id_usuario"));
            usu.setNombre(rs.getString("nombre"));
            usu.setCorreo(rs.getString("correo"));
            usu.setTelefono(rs.getString("telefono"));
            usu.setUser(rs.getString("user"));
            usu.setPass(rs.getString("pass"));
            lista.add(usu);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
}
