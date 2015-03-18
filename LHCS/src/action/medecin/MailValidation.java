package action.medecin;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailValidation {

    /**
     * @param args
     */
    public void send(String mail,String nom,String objet,String corps) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "mail.logswep.com");
// this mandates authentication at the mailserver
        props.put("mail.smtp.auth", "true");
// this is for printing debugs

        props.put("mail.debug", "true");


        Session session = Session.getDefaultInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("so.chine@logswep.com","1KwB7Zb57");
                }
            });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("so.chine@logswep.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(mail));
            message.setSubject(objet);
            message.setText(corps);
  
            Transport.send(message);
            System.out.println("c bonnnn");



        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}