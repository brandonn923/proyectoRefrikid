/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VO;

import java.sql.Date;

/**
 *
 * @author Aprendiz
 */

public class HistorialVO {
    
    private double peso;
    private double talla;
    private Date fecha;
    private int idninos;

    public HistorialVO() {
    }

    public HistorialVO(double peso, double talla, Date fecha) {
        this.peso = peso;
        this.talla = talla;
        this.fecha = fecha;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getTalla() {
        return talla;
    }

    public void setTalla(double talla) {
        this.talla = talla;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getIdninos() {
        return idninos;
    }

    public void setIdninos(int idninos) {
        this.idninos = idninos;
    }

    public HistorialVO(double peso, double talla, Date fecha, int idninos) {
        this.peso = peso;
        this.talla = talla;
        this.fecha = fecha;
        this.idninos = idninos;
    }
}
