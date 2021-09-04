package modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author FAMILIA NOVOA
 */
public class Conexion {
    public String driver,url,user,password,bd;
    public Connection cnn;
    
    
    public Conexion(){
    driver="com.mysql.jdbc.Driver";
    user="root";
    password="";
    bd="refrikid";
    url="jdbc:mysql://localhost:3306/"+bd;
        try {
            Class.forName(driver).newInstance();
            cnn=DriverManager.getConnection(url, user, password);
            System.out.println("CONEXION OK ");
        } catch (Exception e) {
            System.out.println("ERROR AL CONECTAR" + e);
        }
    
    }
    
//    public static Connection conectar() throws Exception {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto", "root","");
//            return cnn;
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
//           throw new Exception("Error al Conectar a base de datos");
//        }
//    }
    public Connection obtenerconexion(){
      return cnn;
    }
    public Connection cerrarconexion() throws SQLException{
        cnn.close();
        cnn=null;
        return cnn;
    }
    public static void main(String[] args) {
       new Conexion();
    }
 
}
