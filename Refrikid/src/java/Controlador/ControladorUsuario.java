/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.MenuDAO;
import DAO.UsuarioDao;
import VO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aprendiz
 */
@WebServlet(name = "ControladorUsuario", urlPatterns = {"/Usuario"})
public class ControladorUsuario extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String correologin=request.getParameter("correo");
            String password=request.getParameter("password");
            String primernombre=request.getParameter("primernombre");
            String segundonombre=request.getParameter("segundonombre");
            String primerapellido=request.getParameter("primerapellido");
            String segundoapellido=request.getParameter("segundoapellido");
            String documentoacu=request.getParameter("documentoacu");
            String numerodocumento=request.getParameter("numerodocumento");
            String nombreusuario=request.getParameter("nombreusuario");
            String clave=request.getParameter("clave");
             String primernombrebeneficiario=request.getParameter("primernombrebeneficiario");
            String segundonombrebeneficiario=request.getParameter("segundonombrebeneficiario");
            String primerapellidobeneficiario=request.getParameter("primerapellidobeneficiario");
            String segundoapellidobeneficiario=request.getParameter("segundoapellidobeneficiario");
            String documentoben=request.getParameter("documentoben");
            String numerodocumentoben=request.getParameter("numerodocumentoben");
            String genero=request.getParameter("genero");
            int coduser=2;
            int opcion=Integer.parseInt(request.getParameter("opcion"));
            String direccion=request.getParameter("direccion");
            String rh = request.getParameter("rh");
            
            switch(opcion){
            case 1://registra datos del padre
                Date fechanacimiento=Date.valueOf(request.getParameter("fechanacimiento"));
                 int gen;
            int telefono=Integer.parseInt(request.getParameter("telefono"));
                UsuarioVO usarvo=new UsuarioVO(primernombre, segundonombre, primerapellido, segundoapellido, documentoacu, numerodocumento, nombreusuario, clave, primernombrebeneficiario, segundonombrebeneficiario, primerapellidobeneficiario, segundoapellidobeneficiario, documentoben, numerodocumentoben, genero, fechanacimiento, telefono, direccion,rh);
                UsuarioDao usardao=new UsuarioDao(usarvo);
                // registra beneficiario
                String generobd=usardao.validargenero();
                if(generobd.equals("Masculino")){
                gen=1;
                 usardao.agregarben(gen);
                    //System.out.println("fullhijo"); 
                }else{
                    gen=2;
                usardao.agregarben(gen);
                //System.out.println("fullhija");  
                }
                if(usardao.agregar()){
                  //  System.out.println("full papa");
                }
                //registra usuario
                usardao.agregaruser(coduser);
                request.getRequestDispatcher("ingresar.jsp").forward(request, response);
                break;
                case 2:
                UsuarioVO usuariovo=new UsuarioVO(correologin, password);
                UsuarioDao usuariodao=new UsuarioDao();
                   
                if(usuariodao.ingresar(correologin,password)){
                    
                  HttpSession sesion=request.getSession(true);
                  sesion.setAttribute("datos",usuariovo);
                   
                  if(usuariodao.validarrol(correologin,password)==1 ){
                  request.getRequestDispatcher("administrador.jsp").forward(request, response);
                  }else
                  request.getRequestDispatcher("usuario.jsp").forward(request, response); 
              
                }
                else {
                request.getRequestDispatcher("ingresar.jsp").forward(request, response);
                }
                break;
                case 3:
                   HttpSession sesion=(HttpSession)request.getSession();
                   sesion.removeAttribute("datos");
                  
                   request.getSession(false);
                   sesion.invalidate();
                   
                   request.getRequestDispatcher("ingresar.jsp").forward(request, response);
                    break;
                    case 4:
                   try {
                       MenuDAO menudao=new MenuDAO();
                      Date menu=Date.valueOf(request.getParameter("date"));
                        String menus=new SimpleDateFormat("yyyy-MM-dd").format(menu);
                       menudao.all(menus);
                        request.setAttribute("date",request.getParameter("date"));
                        request.getRequestDispatcher("calendario.jsp").forward(request, response);  
                   } catch (Exception e) {
                       e.printStackTrace();
                   }
                   break;
                
            }
            
            
             

             
             
             
             
//             switch(opcion){
//                 case 1:
//                 int telefono=Integer.parseInt(request.getParameter("telefono"));
//                 int numerodocumento=Integer.parseInt(request.getParameter("numerodocumento"));
//                 Date fechanacimiento=Date.valueOf(request.getParameter("fecha"));
//                 UsuarioVO usarvo=new UsuarioVO(nombreacudiente, telefono, nombrebeneficiario, apellidobeneficiario, genero, fechanacimiento, numerodocumento, nombreusuario, clave);
//                 UsuarioDao usardao=new UsuarioDao(usarvo);
//                if(usardao.agregaruser()){
//                if(usardao.agregar()){
//                if(usardao.agregarben()){
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Registro satisfactorio');");
//                out.println("</script>");
//                request.getRequestDispatcher("ingresar.html").forward(request, response);
//                break;
//                }else{
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Registro no exitoso');");
//                out.println("</script>");
//                break;
//                }
//                }}
//                case 2:
//                UsuarioVO usuariovo=new UsuarioVO(correologin, clavelogin);
//                UsuarioDao userdao=new UsuarioDao(usuariovo);
//                if(userdao.validar(correologin,clavelogin)){
//                request.getRequestDispatcher("plantilla.jsp").forward(request, response);
//                break;
//                }
//                else{
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Contraseña y usuario incorrectos');");
//                out.println("</script>");
//                break;
//                }
//            }
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
        } catch (Exception ex) {
            Logger.getLogger(ControladorUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(ControladorUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
