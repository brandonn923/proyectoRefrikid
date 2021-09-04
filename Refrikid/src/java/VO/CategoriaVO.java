/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VO;

/**
 *
 * @author a
 */
public class CategoriaVO {
    
    String nombrecategoria;
    String descripcion;

    public CategoriaVO() {
    }

    public CategoriaVO(String nombrecategoria, String descripcion) {
        this.nombrecategoria = nombrecategoria;
        this.descripcion = descripcion;
    }

    public String getNombrecategoria() {
        return nombrecategoria;
    }

    public void setNombrecategoria(String nombrecategoria) {
        this.nombrecategoria = nombrecategoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
}
