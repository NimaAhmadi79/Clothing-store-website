import com.sun.mail.smtp.SMTPTransport;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;
public class SendMail {
    private static final String SMTP_SERVER = "smtp server ";
    private static final String USERNAME = "";
    private static final String PASSWORD = "";

    private static final String EMAIL_FROM = "From@gmail.com";
    private static final String EMAIL_TO = "Nima87760@gmail.com";
    private static final String EMAIL_TO_CC = "";

    private static final String EMAIL_SUBJECT = "servlet";
    private String EMAIL_TEXT;
    public void setText(String EMAIL_TEXT){

        this.EMAIL_TEXT=EMAIL_TEXT;
    }


    public void send() {
                Properties prop = System.getProperties();
                prop.put("mail.smtp.host", SMTP_SERVER);
                prop.put("mail.smtp.auth", "true");
                prop.put("mail.smtp.port", "25");

                Session session = Session.getInstance(prop, null);
                Message msg = new MimeMessage(session);

                try {


                    msg.setFrom(new InternetAddress(EMAIL_FROM));
                    msg.setRecipients(Message.RecipientType.TO,
                            InternetAddress.parse(EMAIL_TO, false));
                    msg.setRecipients(Message.RecipientType.CC,
                            InternetAddress.parse(EMAIL_TO_CC, false));
                    msg.setSubject(EMAIL_SUBJECT);
                    msg.setText(EMAIL_TEXT);
                    msg.setSentDate(new Date());
                    SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
                    t.connect(SMTP_SERVER, USERNAME, PASSWORD);
                    t.sendMessage(msg, msg.getAllRecipients());
                    System.out.println("Response: " + t.getLastServerResponse());
                    t.close();

                } catch (MessagingException e) {
                    e.printStackTrace();
                }



        }


    }

