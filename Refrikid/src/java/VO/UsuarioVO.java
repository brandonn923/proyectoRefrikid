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
public class UsuarioVO {
   String primernombre;
   String segundonombre;
   String primerapellido;
   String segundoapellido;
   String documentoacu;
   String numerodocumento;
   String nombreusuario;
   String clave;
    String primernombrebeneficiario;
   String segundonombrebeneficiario;
   String primerapellidobeneficiario;
   String segundoapellidobeneficiario;
    String documentoben;
    String numerodocumentoben;
    String genero;
    Date fechanacimiento;
    int telefono;
    String direccion;
    String rh;
    String correologin;
    String password;
    int rol;

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
    
    public UsuarioVO(String correologin, String password) {
        this.correologin = correologin;
        this.password = password;
    }
    

    public String getRh() {
        return rh;
    }

    public void setRh(String rh) {
        this.rh = rh;
    }
    
    public UsuarioVO() {
    }

    public UsuarioVO(String primernombre, String segundonombre, String primerapellido,String segundoapellido, String documentoacu, String numerodocumento, String nombreusuario, String clave, String primernombrebeneficiario, String segundonombrebeneficiario,String primerapellidobeneficiario, String segundoapellidobeneficiario, String documentoben, String numerodocumentoben, String genero, Date fechanacimiento, int telefono, String direccion,String rh) {
        this.primernombre = primernombre;
        this.segundonombre=segundonombre;
        this.primerapellido=primerapellido;
        this.segundoapellido=segundoapellido;
        this.documentoacu = documentoacu;
        this.numerodocumento = numerodocumento;
        this.nombreusuario = nombreusuario;
        this.clave = clave;
        this.primernombrebeneficiario=primernombrebeneficiario;
        this.segundonombrebeneficiario=segundonombrebeneficiario;
        this.primerapellidobeneficiario=primerapellidobeneficiario;
        this.segundoapellidobeneficiario=segundoapellidobeneficiario;
        this.documentoben = documentoben;
        this.numerodocumentoben = numerodocumentoben;
        this.genero = genero;
        this.fechanacimiento = fechanacimiento;
        this.telefono = telefono;
        this.direccion = direccion;
        this.rh=rh;
      
    }

    public String getPrimernombre() {
        return primernombre;
    }

    public void setPrimernombre(String primernombre) {
        this.primernombre = primernombre;
    }

    public String getSegundonombre() {
        return segundonombre;
    }

    public void setSegundonombre(String segundonombre) {
        this.segundonombre = segundonombre;
    }

    public String getPrimerapellido() {
        return primerapellido;
    }

    public void setPrimerapellido(String primerapellido) {
        this.primerapellido = primerapellido;
    }

    public String getSegundoapellido() {
        return segundoapellido;
    }

    public void setSegundoapellido(String segundoapellido) {
        this.segundoapellido = segundoapellido;
    }

   

    public String getDocumentoacu() {
        return documentoacu;
    }

    public void setDocumentoacu(String documentoacu) {
        this.documentoacu = documentoacu;
    }

    public String getNumerodocumento() {
        return numerodocumento;
    }

    public void setNumerodocumento(String numerodocumento) {
        this.numerodocumento = numerodocumento;
    }

    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPrimernombrebeneficiario() {
        return primernombrebeneficiario;
    }

    public void setPrimernombrebeneficiario(String primernombrebeneficiario) {
        this.primernombrebeneficiario = primernombrebeneficiario;
    }

    public String getSegundonombrebeneficiario() {
        return segundonombrebeneficiario;
    }

    public void setSegundonombrebeneficiario(String segundonombrebeneficiario) {
        this.segundonombrebeneficiario = segundonombrebeneficiario;
    }

    public String getPrimerapellidobeneficiario() {
        return primerapellidobeneficiario;
    }

    public void setPrimerapellidobeneficiario(String primerapellidobeneficiario) {
        this.primerapellidobeneficiario = primerapellidobeneficiario;
    }

    public String getSegundoapellidobeneficiario() {
        return segundoapellidobeneficiario;
    }

    public void setSegundoapellidobeneficiario(String segundoapellidobeneficiario) {
        this.segundoapellidobeneficiario = segundoapellidobeneficiario;
    }

 

    public String getDocumentoben() {
        return documentoben;
    }

    public void setDocumentoben(String documentoben) {
        this.documentoben = documentoben;
    }

    public String getNumerodocumentoben() {
        return numerodocumentoben;
    }

    public void setNumerodocumentoben(String numerodocumentoben) {
        this.numerodocumentoben = numerodocumentoben;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Date getFechanacimiento() {
        return fechanacimiento;
    }

    public void setFechanacimiento(Date fechanacimiento) {
        this.fechanacimiento = fechanacimiento;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreologin() {
        return correologin;
    }

    public void setCorreologin(String correologin) {
        this.correologin = correologin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
