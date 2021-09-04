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
public class ReporteVO {
    
   int edad;
   double peso;
   double estatura;
   String identificacion;
   String nombre;
   
    public ReporteVO() {
    }

    public ReporteVO(String identificacion) {
        this.identificacion = identificacion;
    }

    public ReporteVO(int edad, double peso, double estatura, String identificacion, String nombre) {
        this.edad = edad;
        this.peso = peso;
        this.estatura = estatura;
        this.identificacion = identificacion;
        this.nombre = nombre;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getEstatura() {
        return estatura;
    }

    public void setEstatura(double estatura) {
        this.estatura = estatura;
    }
   
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }  
}
