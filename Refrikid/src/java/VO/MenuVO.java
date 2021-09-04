/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VO;

import java.sql.Date;

/**
 *
 * @author a
 */
public class MenuVO {
    
    int idmenu;
    String fecha;
    int idproducto;

    public MenuVO(int idmenu, String fecha) {
        this.idmenu = idmenu;
        this.fecha = fecha;
    }

    public MenuVO() {
        
    }

    public MenuVO(int idmenu, String fecha, int idproducto) {
        this.idmenu = idmenu;
        this.fecha = fecha;
        this.idproducto = idproducto;
    }

    public int getIdmenu() {
        return idmenu;
    }

    public void setIdmenu(int idmenu) {
        this.idmenu = idmenu;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }
    
    
    
}
