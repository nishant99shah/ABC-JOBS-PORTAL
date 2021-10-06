package com.abcjobs;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 2139116285823340125L;
	private String fname, lname, uname, pnum, eml, psd;
	private String msg = "";
	UserDao user = null;
	int ctr = 0;

	public String execute() throws Exception {
		user = new UserDao();
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
			ctr = user.registerUser(fname, lname, uname, pnum, eml, psd);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("unknownabcjobs@gmail.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Confirmation Email");
			message.setText(
					"Welcome to Abc jobs pvt. ltd., you have been successfully registered on the portal. Now you can login into your account.");
			Transport.send(message);
			
			if (ctr > 0) {
				msg = "Registration Successfull";
				
			} else {
				msg = "Error found";
				return "error";
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		} 
		return "success";
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getEml() {
		return eml;
	}

	public void setEml(String eml) {
		this.eml = eml;
	}

	public String getPsd() {
		return psd;
	}

	public void setPsd(String psd) {
		this.psd = psd;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

}
