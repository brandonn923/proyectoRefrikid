/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import VO.MenuVO;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import modelo.Conexion;
import modelo.Crud;


/**
 *
 * @author a
 */
public class MenuDAO extends Conexion {
    
    int idmenu;
    int idproducto;
    String fecha;
    int numemenu;
    private Connection cnn;
    private Statement sentencia;
    private ResultSet resultado;
    private ResultSet rs;
    private Statement agregar;
    private boolean operacion=false;
      

    public MenuDAO() {
    }
      
      
     public MenuDAO(MenuVO menuvo){
        super();
        try {
            cnn=this.obtenerconexion();
           sentencia=cnn.createStatement();
           agregar=cnn.createStatement();
           idmenu=menuvo.getIdmenu();
           idproducto=menuvo.getIdproducto();
        } catch (Exception ex) {
            Logger.getLogger(DAO.MenuDAO.class.getName()).log(Level.SEVERE,null,ex);  
        }  
    }
     public ArrayList all(String menus){
         ArrayList lista=new ArrayList<>();
         ArrayList busqueda=new ArrayList();
         
         try {  
             cnn=this.obtenerconexion();
             sentencia=cnn.createStatement();
             resultado=sentencia.executeQuery("SELECT * FROM menu WHERE fecha='"+menus+"'");
             while(resultado.next()){
                 busqueda.add(resultado.getInt("idproducto"));
                 numemenu=resultado.getInt("nummenu");
                 lista.add(numemenu);
             }
             for(int i=0;i<busqueda.size();i++){
             resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idproducto='"+busqueda.get(i)+"'");
             while(resultado.next()){
             lista.add(resultado.getString("nombreProducto"));
               }
             }
      
         } catch (Exception e) {
              Logger.getLogger(DAO.MenuDAO.class.getName()).log(Level.SEVERE,null,e);
         }
         return lista;
     }

    public  boolean consultarid(String vegetal,String legumbre,String fruta,String carne,String lacteo,String pescado,String cereal,String embutido,int idmenu,String fechaactual){
        try {
         int[] lista=new int[8];
            cnn=this.obtenerconexion();
            resultado=sentencia.executeQuery("SELECT idproducto FROM producto WHERE nombreProducto='"+vegetal+"' OR nombreProducto='"+legumbre+"' OR nombreProducto='"+fruta+"' OR nombreProducto='"+carne+"' OR nombreProducto='"+lacteo+"' OR nombreProducto='"+pescado+"' OR nombreProducto='"+cereal+"' OR nombreProducto='"+embutido+"' ");
            while(resultado.next()){
                for (int i = 0; i < lista.length; i++) {
                    lista[i]=resultado.getInt("idproducto");
                    operacion=true;
                    
                }
                for (int i = 0; i < 1; i++) {
                agregar.executeUpdate("INSERT INTO menu(fecha,nummenu,idproducto) VALUES('"+fechaactual+"','"+idmenu+"','"+lista[i]+"')");    
                }  
            }
           
        } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
       return operacion;
    }
    
}
