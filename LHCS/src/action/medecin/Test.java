package action.medecin;

import javax.mail.*;

import javax.mail.internet.*; 

import java.util.*; 
import java.io.*; 
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
public class Test { 

	 
	
	 
	    /**
	       Outgoing Mail (SMTP) Server
	       requires TLS or SSL: smtp.gmail.com (use authentication)
	       Use Authentication: Yes
	       Port for SSL: 465
	     */
	    public static void main(String[] args) {
	        final String fromEmail = "so.chine@logswep.com"; //requires valid gmail id
	        final String password = "1KwB7Zb57"; // correct password for gmail id
	        final String toEmail = "chine.souad@gmail.com"; // can be any email id 
	         
	        System.out.println("SSLEmail Start");
	        Properties props = new Properties();
	        props.put("mail.smtp.host", "mail.logswep.com"); //SMTP Host
	        props.put("mail.smtp.socketFactory.port", "465"); //SSL Port
	        props.put("mail.smtp.socketFactory.class",
	                "javax.net.ssl.SSLSocketFactory"); //SSL Factory Class
	        props.put("mail.smtp.auth", "true"); //Enabling SMTP Authentication
	        props.put("mail.smtp.port", "465"); //SMTP Port
	         
	        Authenticator auth = new Authenticator() {
	            //override the getPasswordAuthentication method
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(fromEmail, password);
	            }
	        };
	         
	        Session session = Session.getDefaultInstance(props, auth);
	        System.out.println("Session created");
	            EmailUtil.sendEmail(session, toEmail,"SSLEmail Testing Subject", "SSLEmail Testing Body");
	 
	           
	    }
	 
	}