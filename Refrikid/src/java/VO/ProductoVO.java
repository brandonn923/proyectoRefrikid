/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VO;

/**
 *
 * @author FAMILIA NOVOA
 */
public class ProductoVO {
    int idproducto;
    String nombreProducto;
    int idcategoria;
    double Calorias;
    double Hidratos;
    double Grasas;
    double Proteinas;

     public ProductoVO() {
    }

    public ProductoVO(int idproducto, String nombreProducto, int idcategoria, double Calorias, double Hidratos, double Grasas, double Proteinas) {
        this.idproducto = idproducto;
        this.nombreProducto = nombreProducto;
        this.idcategoria = idcategoria;
        this.Calorias = Calorias;
        this.Hidratos = Hidratos;
        this.Grasas = Grasas;
        this.Proteinas = Proteinas;
    }
    
    
    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public double getCalorias() {
        return Calorias;
    }

    public void setCalorias(double Calorias) {
        this.Calorias = Calorias;
    }

    public double getHidratos() {
        return Hidratos;
    }

    public void setHidratos(double Hidratos) {
        this.Hidratos = Hidratos;
    }

    public double getGrasas() {
        return Grasas;
    }

    public void setGrasas(double Grasas) {
        this.Grasas = Grasas;
    }

    public double getProteinas() {
        return Proteinas;
    }

    public void setProteinas(double Proteinas) {
        this.Proteinas = Proteinas;
    }

   
    
    
    
    
    
}
