package com.abcjobs;

import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UpdatePasswordAction extends ActionSupport {

	private static final long serialVersionUID = 2675732503808798947L;
	private String psd;

	public String execute() throws SQLException, Exception {

		HttpSession session = ServletActionContext.getRequest().getSession(false);

		if (session == null || session.getAttribute("mail") == null) {
			return "Failure";
		}

		else {
			String eml = (String) session.getAttribute("Email");
			UserDao user = new UserDao();
			int insert = user.updatePass(eml, psd);
			String msgs;
			if (insert > 0) {
				msgs = "Update Successfull";
			} else {
				msgs = "Some error";
			}
		}
		return "updatepass";

	}

	public String getPsd() {
		return psd;
	}

	public void setPsd(String psd) {
		this.psd = psd;
	}

}
