/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author FAMILIA NOVOA
 */
public class SugerenciaDAO {
    
    boolean enviado=false;
    public boolean enviarcorreo(String de,String para,String clave,String contenido){
        try {
         String host="smtp.gmail.com";   
    Properties prop=System.getProperties();
    
   
       prop.put("mail.smtp.starttls.enable","true");
    prop.put("mail.smtp.host",host);
   prop.put("mail.smtp.user",de);
   prop.put("mail.smtp.password",clave);
   prop.put("mail.smtp.port",587);
   prop.put("mail.smtp.aunth","true");
   
        Session sesion=Session.getDefaultInstance(prop,null);
        MimeMessage mensaje=new MimeMessage(sesion);
        mensaje.setFrom(new InternetAddress(de));
        mensaje.setRecipient(Message.RecipientType.TO, new InternetAddress(para));
        mensaje.setSubject("Sugerencia");
        mensaje.setText(contenido);
        Transport t=sesion.getTransport("smtp");
        t.connect(host,de,clave);
        t.sendMessage(mensaje, mensaje.getAllRecipients());
        t.close();
       enviado=true;
      
        
//        MimeMessage mensaje=new MimeMessage(sesion);
//        mensaje.setFrom(new InternetAddress(de));
//        mensaje.setRecipient(Message.RecipientType.TO,new InternetAddress(para));
//        mensaje.setSubject("Sugerencia");
//        mensaje.setText(contenido);
//        Transport transport =sesion.getTransport("smtp");
//        transport.connect(host,de,clave);
//        transport.sendMessage(mensaje,mensaje.getAllRecipients());
//        transport.close();
        
        } catch (Exception e) {
            System.out.println("No se pudo enviar"+ e);
            e.printStackTrace();
        }
    return enviado;
    }
    
    
    
}
