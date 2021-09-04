/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.MenuDAO;
import VO.MenuVO;
import VO.ProductoVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author a
 */
@WebServlet(name = "ControladorProducto", urlPatterns = {"/Menu"})
public class ControladorMenu extends HttpServlet {
 int contador=0;
 int acu;
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
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String vegetal=request.getParameter("vegetal");
           System.out.println(vegetal);
           String legumbre=request.getParameter("legumbre");
           String fruta=request.getParameter("fruta");
           String carne=request.getParameter("carne");
           String lacteo=request.getParameter("lacteo");
           String pescado=request.getParameter("pescado");
           String cereal=request.getParameter("cereal");
           String embutido=request.getParameter("embutido");
           int opcion=Integer.parseInt(request.getParameter("opcion"));
         
            
           MenuVO menuvo=new MenuVO();
           MenuDAO menudao=new MenuDAO(menuvo);
           switch(opcion){
               case 1:
           request.setAttribute("vegetalmenu", vegetal);
           request.setAttribute("legumbremenu",legumbre);
           request.setAttribute("frutamenu",fruta);
           request.setAttribute("carnemenu",carne);
           request.setAttribute("lacteomenu",lacteo);
           request.setAttribute("pescadomenu",pescado);
           request.setAttribute("cerealmenu",cereal);
           request.setAttribute("embutidomenu", embutido);
           request.getRequestDispatcher("menu.jsp").forward(request, response);
           break;
               case 2:
           Date fecha=new Date();
           String fechactual= new SimpleDateFormat("yyyy-MM-dd").format(fecha);
                    String vegetaltext=request.getParameter("vegetalmenu");
                    String legumbretext=request.getParameter("legumbremenu");
                    String frutatext=request.getParameter("frutamenu");
                    String carnetext=request.getParameter("carnemenu");
                    String lacteotext=request.getParameter("lacteomenu");
                    String pescadotext=request.getParameter("pescadomenu");
                    String cerealtext=request.getParameter("cerealmenu");
                    String embutidotext=request.getParameter("embutidomenu");
               contador=contador+1;     
         if(menudao.consultarid(vegetaltext,legumbretext,frutatext,carnetext,lacteotext,pescadotext,cerealtext,embutidotext,contador,fechactual));
           request.getRequestDispatcher("administrador.jsp").forward(request, response);
         break;     
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
