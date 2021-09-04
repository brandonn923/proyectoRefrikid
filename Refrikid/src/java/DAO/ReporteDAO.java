/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import VO.ReporteVO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.logging.*;
import modelo.Conexion;


/**
 *
 * @author FAMILIA NOVOA
 */
public class ReporteDAO extends Conexion{
    
    int edad;
    double peso;
    double estatura;
    String identificacion;
    String nombre; 
    
    private Connection cnn;
    private Statement sentencia;
    private boolean operacion=false;
    private ResultSet resultado;
    
    public ReporteDAO(ReporteVO reportevo){
        super();
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            estatura=reportevo.getEstatura();
            peso=reportevo.getPeso();
            edad=reportevo.getEdad();
            identificacion=reportevo.getIdentificacion();
        } catch (Exception ex) {
            Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    public int consultaredad(){
        int fecha=0;
        try {
            resultado=sentencia.executeQuery("SELECT n.fechaNacimiento FROM ninos n INNER JOIN crecimientoninos c  ON n.idninos=c.nino WHERE n.numeroDoc='"+identificacion+"'");
                while(resultado.next()){
                    fecha=resultado.getInt("fechaNacimiento");
                    System.out.println(fecha);
                }
        } catch (SQLException  e) {          
            Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,e);
        }
        return fecha;
    }
    
    public int consultargenero(){
        int genero=0;
            try {
                resultado=sentencia.executeQuery("SELECT n.genero FROM ninos n INNER JOIN crecimientoninos c ON n.idninos=c.nino WHERE n.numeroDoc='"+identificacion+"'");
                    while(resultado.next()){
                        genero=resultado.getInt("genero");
                        System.out.println(genero);
                    }
            } catch (SQLException  e) {
                Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        return genero;
    }
    
    public double consultarpeso(){
        double peso=0;
            try {
                resultado=sentencia.executeQuery("SELECT c.peso FROM ninos n INNER JOIN crecimientoninos c ON n.idninos=c.nino WHERE n.numeroDoc='"+identificacion+"'");
                    while(resultado.next()){
                        peso=resultado.getDouble("peso");
                        System.out.println(peso);
                    }
            } catch (SQLException  e) {
                Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        return peso;
    }
    
    public double consultartalla(){
        double talla=0;
            try {
                resultado=sentencia.executeQuery("SELECT c.talla FROM ninos n INNER JOIN crecimientoninos c  ON n.idninos=c.nino WHERE n.numeroDoc='"+identificacion+"'");
                    while(resultado.next()){
                        talla=resultado.getDouble("talla");
                        System.out.println(talla);
                    }
            } catch (SQLException  e) {
                Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        return talla;
    }
    
    public String consultarnombre(){
            try {
                resultado=sentencia.executeQuery("SELECT primerNombre FROM ninos n INNER JOIN crecimientoninos c  ON n.idninos=c.nino WHERE n.numeroDoc='"+identificacion+"'");
                    while(resultado.next()){
                        nombre=resultado.getString("primerNombre");
                        
                        System.out.println(nombre);
                    }
            } catch (SQLException  e) {
                Logger.getLogger(DAO.ReporteDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        return nombre;
    }
     

      
    
    
    
    
    
}
