/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.Usuario_DAO;

/**
 *
 * @author LAURA
 */
public class Controlador extends HttpServlet {

   /* Usuario_DAO dao=new Usuario_DAO();
    Usuario u=new Usuario();
    
    int r;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion=request.getParameter("accion");
        if(accion.equals("Ingresar")){
            String usu=request.getParameter("txt_User");
            String pass=request.getParameter("txt_Pass");
            u.setUser(usu);
            u.setPass(pass);
            r=dao.Validar(u);
            if(r==1){
                request.getSession().setAttribute("user", usu);
                request.getSession().setAttribute("pass", pass);
            request.getRequestDispatcher("Principal_Admin.jsp").forward(request, response);
            }else{
                 request.getRequestDispatcher("Login.jsp").forward(request, response);  
            
            }
        }else{
                request.getRequestDispatcher("Login.jsp").forward(request, response);  
                 
            
                    }*/
    
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
        processRequest(request, response);
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
        processRequest(request, response);
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
