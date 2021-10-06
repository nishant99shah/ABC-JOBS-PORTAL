package com.abcjobs;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OtpVerifyAction extends ActionSupport {

	private static final long serialVersionUID = 7091825633312754489L;
	UserBean user = null;
	int ctr = 0;
	String msgotp;

	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		if (session == null || session.getAttribute("mail") == null) {
			return "Failure";
		}

		int otp = (Integer) session.getAttribute("otp");
		System.out.println(user.getOtpvalue());

		if (otp == user.getOtpvalue()) {

			System.out.println("Otp matches");
		}

		else {
			msgotp = "Otp entered is not correct";
			System.out.println("opt does not match");
			return "error";
		}

		return "OtpProceed";
	}

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

	public String getMsgotp() {
		return msgotp;
	}

	public void setMsgotp(String msgotp) {
		this.msgotp = msgotp;
	}

}
