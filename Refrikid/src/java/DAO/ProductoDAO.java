/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import VO.ProductoVO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.*;
import modelo.Conexion;


/**
 *
 * @author FAMILIA NOVOA
 */
public class ProductoDAO extends Conexion {
    
    int idproducto;
    String nombreProducto;
    int idcategoria;
    double Calorias;
    double Hidratos;
    double Grasas;
    double Proteinas;
     private Connection cnn;
    private Statement sentencia;
    private ResultSet resultado;
    private boolean operacion=false;
    
    public ProductoDAO(ProductoVO productovo){
        super();
        try {
            cnn=this.obtenerconexion();
            sentencia=cnn.createStatement();
            idproducto=productovo.getIdproducto();
            nombreProducto=productovo.getNombreProducto();
            idcategoria=productovo.getIdcategoria();
            Calorias=productovo.getCalorias();
            Hidratos=productovo.getHidratos();
            Grasas=productovo.getGrasas();
            Proteinas=productovo.getProteinas();
        } catch (Exception ex) {
            Logger.getLogger(DAO.ProductoDAO.class.getName()).log(Level.SEVERE,null,ex);  
        }  
    }
    public ArrayList<ProductoVO> listarvegetales(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+1+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
    public ArrayList<ProductoVO> listarlegumbres(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+2+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
     public ArrayList<ProductoVO> listarfrutas(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+3+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
        public ArrayList<ProductoVO> listarcarnes(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+4+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
             public ArrayList<ProductoVO> listarlacteos(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+5+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
      public ArrayList<ProductoVO> listarpescado(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+6+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
        public ArrayList<ProductoVO> listarcereal(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+7+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }
                public ArrayList<ProductoVO> listarembutidos(){
    
        ArrayList<ProductoVO> lista=new ArrayList<ProductoVO>();
        try {
           
            cnn=this.obtenerconexion();
           resultado=sentencia.executeQuery("SELECT * FROM producto WHERE idcategoria='"+8+"' ");
            while (resultado.next()) {  
                 ProductoVO productovo=new ProductoVO();
                idproducto=resultado.getInt("idproducto");
                nombreProducto=resultado.getString("nombreProducto");
                Calorias=resultado.getDouble("Calorias");
                Hidratos=resultado.getDouble("Hidratos");
                Grasas=resultado.getDouble("Grasas");
                Proteinas=resultado.getDouble("Proteinas");
                productovo.setIdproducto(idproducto);
                productovo.setNombreProducto(nombreProducto);
                productovo.setCalorias(Calorias);
                productovo.setHidratos(Hidratos);
                productovo.setGrasas(Grasas);
                productovo.setProteinas(Proteinas);
                lista.add(productovo);
            }
        } catch (SQLException ex) {
             Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return lista;
    
    }

   
        
     
     
    
    
    
    
}
