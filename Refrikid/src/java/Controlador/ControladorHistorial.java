/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.HistorialDao;
import DAO.UsuarioDao;
import VO.HistorialVO;
import VO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aprendiz
 */
@WebServlet(name = "ControladorHistorial", urlPatterns = {"/Historial"})
public class ControladorHistorial extends HttpServlet {

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
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    
        double talla = Double.parseDouble(request.getParameter("talla"));
        double peso = Double.parseDouble(request.getParameter("peso"));
         Date fecha = Date.valueOf(request.getParameter("fechaNacimiento"));
        int opcion = Integer.parseInt(request.getParameter("opcion"));
         //System.out.println(talla+""+peso+""+fecha);
        HistorialVO vo = new HistorialVO(peso, talla, fecha);
        HistorialDao dao = new HistorialDao(vo);
           
        switch(opcion){
            case 1:
                if(dao.ingresar() ){
                    request.getRequestDispatcher("usuario.jsp").forward(request, response);
                    request.setAttribute("exito","<script>alert('El historial clínico fue satisfactoriamente registrado')</script>");
                }else{
                    request.getRequestDispatcher("registroHistorial.jsp").forward(request, response);
                    request.setAttribute("error","<script>alert('El historial clínico no fue satisfactoriamente registrado')</script>");
                }
            break;
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
