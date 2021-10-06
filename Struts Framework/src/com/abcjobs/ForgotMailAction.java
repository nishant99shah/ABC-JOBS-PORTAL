package com.abcjobs;

import javax.mail.*;
import java.util.Random;
import java.util.Map;
import java.util.Properties;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.ResultSet;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

public class ForgotMailAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 2675732503808798947L;
	private String eml;
	private boolean noData = false;
	private SessionMap<String, Object> sessionMaps;

	public String execute() throws Exception {
		if (eml != null) {
			UserDao usr = new UserDao();
			ResultSet rs = usr.report(eml);
			int i = 0;
			if (rs != null)
				while (rs.next()) {
					i++;
					Random rand = new Random();
					int otp = rand.nextInt(900000) + 100000;

					String to = getEml();
					Properties properties = new Properties();
					properties.put("mail.smtp.host", "smtp.gmail.com");
					properties.put("mail.smtp.socketFactory.port", "465");
					properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
					properties.put("mail.smtp.auth", "true");
					properties.put("mail.smtp.port", "465");

					Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("unknownabcjobs@gmail.com", "Abc@123jobs");
						}
					});

					try {
						MimeMessage message = new MimeMessage(session);
						message.setFrom(new InternetAddress("unknownabcjobs@gmail.com"));
						message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
						message.setSubject("OTP Code");
						message.setText("The otp is  " + otp);
						Transport.send(message);
						System.out.println("message sent to " + getEml());
					} catch (MessagingException e) {
						throw new RuntimeException(e);
					}

					sessionMaps.put("mail", "true");
					sessionMaps.put("otp", otp);
					sessionMaps.put("Email", eml);

				}

			if (i == 0) {
				noData = false;
				System.out.println("Invalid Email Address!");
			} else {
				noData = true;
				System.out.println("Correct Email Address!");
			}

		}
		return "success";
	}

	public String getEml() {
		return eml;
	}

	public void setEml(String eml) {
		this.eml = eml;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMaps = (SessionMap<String, Object>) map;
	}

}
