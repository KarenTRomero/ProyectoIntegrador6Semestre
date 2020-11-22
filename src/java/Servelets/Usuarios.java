/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.sql.*;
import com.mysql.jdbc.Driver;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LAURA
 */
@WebServlet(name = "Usuarios", urlPatterns = {"/Usuarios"})
public class Usuarios extends HttpServlet {

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                st = con.createStatement();
                String query = "SELECT * FROM `usuario`";
                String where = " where 1=1";
                String busca = request.getParameter("txt_Buscar");
               
                if (busca != null) {
                    where = where + " and id_usuario='" + busca + "' or nombre='" + busca + "' or user='" + busca + "' ";
                   
                } 
                    
                query = query + where;
                rs = st.executeQuery(query);

                while (rs.next()) {
                    out.print("<tr>"
                            + "<th scope = \"row\" class=\"text-center\">" + rs.getString(1) + "</th>"
                            + "<td class=\"text-center\">" + rs.getString(2) + "</td>"
                            + "<td class=\"text-center\">" + rs.getString(3) + "</td>"
                            + "<td class=\"text-center\">" + rs.getString(4) + "</td>"
                            + "<td class=\"text-center\">" + rs.getString(5) + "</td>"
                            + " <td class=\"text-center\">" + rs.getString(6) + "</td>"
                            + "<td class=\"text-center\">"
                            + " <a href=\"Editar_Usuarios.jsp?id=" + rs.getString(1) + "&nombre=" + rs.getString(2) + "&correo=" + rs.getString(3) + "&telefono=" + rs.getString(4) + "&user=" + rs.getString(5) + "&pass=" + rs.getString(6) + "\" ><i class=\"fa fa-pencil fa-lg\" aria-hidden=\"true\"></i></a>"
                            + " <a href=\"Eliminar_Usuarios.jsp?id=" + rs.getString(1) + "\" class=\"ml-3\"> <i class=\"fa fa-trash fa-lg\" aria-hidden=\"true\"></i></a>"
                            + "</td>"
                            + "</tr>"
                    );
                }
            } catch (Exception e) {
                out.print("Error mysql" + e);

            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
