package edu.ndsu.csci717.dnamjo;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.*;
import javax.net.*;
import com.sun.mail.util.*;
import javax.mail.internet.MimeMessage;

public class SecureMail {
    
   static  public boolean send(String to,String mailcontent)
    {
         boolean flag=false;
        try {
                   
                        final String username = "madhutechskills16@gmail.com";
			final String password = "kveninar";
                        Properties props = new Properties();
                        MailSSLSocketFactory sf = new MailSSLSocketFactory();
                        sf.setTrustAllHosts(true);
                        props.put("mail.smtp.ssl.socketFactory", sf);
  
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
                        //props.put("mail.smtp.port", "465");
		
			Session session1 = Session.getInstance(props,new Authenticator()
									{	
										protected PasswordAuthentication getPasswordAuthentication()
										{
										return new PasswordAuthentication(username, password);
										}
		  							}
							);
                        //DAO d=new DAO();
                        System.out.println("\t"+to);
                        Message message =new MimeMessage(session1);
                        message.setFrom(new InternetAddress("karthiksecure99@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
                        message.setSubject("GOV.Tenders");
                        message.setText(mailcontent);  
                        Transport.send(message);
                        flag=true;
			}catch(Exception ex)
			{
				System.out.println("ERROR....."+ex);
			}
                    return flag;
    }
    public static void main(String args[])
    {
        send("madhutechskills09@gmail.com","Hai................");
        System.out.println("Send completed");
    }
}
