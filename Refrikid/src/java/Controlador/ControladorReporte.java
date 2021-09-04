/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.ReporteDAO;
import VO.ReporteVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author FAMILIA NOVOA
 */
@WebServlet(name = "reporte", urlPatterns = {"/Reporte"})
public class ControladorReporte extends HttpServlet {

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
        String identificacion=request.getParameter("identificacion");
        ReporteVO reportevo=new ReporteVO(identificacion);
        ReporteDAO reportedao=new ReporteDAO(reportevo);
        Calendar fecha = Calendar.getInstance();
        int actualyear=fecha.get(Calendar.YEAR);
        int year=reportedao.consultaredad();
        String nombre = reportedao.consultarnombre();
        int edad=actualyear-year;
        int genero=reportedao.consultargenero();
        double peso=reportedao.consultarpeso();
        double talla=reportedao.consultartalla();

        if(edad<=5 && genero==1){
            request.setAttribute("edad",edad);
            request.setAttribute("genero",genero);
            request.setAttribute("peso",peso);
            request.setAttribute("talla",talla);
            request.setAttribute("nombre",nombre);
            request.getRequestDispatcher("reporte0a5ninos.jsp").forward(request, response);
        }
        if(edad>5 && genero==1){
            request.setAttribute("edad",edad);
            request.setAttribute("genero",genero);
            request.setAttribute("peso",peso);
            request.setAttribute("talla",talla);
            request.setAttribute("nombre",nombre);
            request.getRequestDispatcher("reporteninosmax5.jsp").forward(request, response);
        }
        if(edad<=5 && genero==2){
            request.setAttribute("edad",edad);
            request.setAttribute("genero",genero);
            request.setAttribute("peso",peso);
            request.setAttribute("talla",talla);
            request.setAttribute("nombre",nombre);
            request.getRequestDispatcher("reporte0a5ninas.jsp").forward(request, response);
        }
        if(edad>5 && genero==2){
            request.setAttribute("edad",edad);
            request.setAttribute("genero",genero);
            request.setAttribute("peso",peso);
            request.setAttribute("talla",talla);
            request.setAttribute("nombre",nombre);
            request.getRequestDispatcher("reporteninasmax.jsp").forward(request, response);
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
