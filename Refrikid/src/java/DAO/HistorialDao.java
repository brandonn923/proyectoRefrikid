/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import VO.HistorialVO;
import java.sql.*;
import java.util.logging.*;
import modelo.Conexion;

/**
 *
 * @author Aprendiz
 */
public class HistorialDao extends Conexion {
    
     double talla;
    double peso;
    Date  fecha;
    int idninos;
    private Connection cnn;
    private Statement sentencia;
    private ResultSet resultado;
   private Statement agregarsql;
   
    private boolean operacion=false;
    public HistorialDao(HistorialVO historialvo){
    super();
        try {
          cnn=this.obtenerconexion();
          sentencia=cnn.createStatement();
        
    talla=historialvo.getTalla();
    peso=historialvo.getPeso();
    fecha=historialvo.getFecha();
    idninos=historialvo.getIdninos();
  
        } catch (Exception ex) {
            Logger.getLogger(DAO.HistorialDao.class.getName()).log(Level.SEVERE,null,ex);
        }
    
    }
    public  boolean ingresar(){
        try {
            
            cnn=this.obtenerconexion();
            agregarsql=cnn.createStatement();
            resultado=agregarsql.executeQuery("SELECT MAX(idninos) FROM  ninos");
           while(resultado.next()){
           idninos=resultado.getInt(1);
               System.out.println(idninos);
           }
            sentencia.executeUpdate("INSERT INTO crecimientoninos(peso,talla,fecha,nino) VALUES('"+peso+"','"+talla+"','"+fecha+"','"+idninos+"')");
            operacion=true;
            agregarsql.close();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.HistorialDao.class.getName()).log(Level.SEVERE,null,ex);
        }
       
    return operacion;
    
    }

    }
    
    

