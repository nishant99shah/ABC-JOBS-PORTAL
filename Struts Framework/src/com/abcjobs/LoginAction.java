package com.abcjobs;

import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 2139116285823340125L;
	private String uname;
	private String psd;
	private SessionMap<String, Object> sessionMap;

	public String execute() throws SQLException, Exception {
		if (uname != null) {
			sessionMap.put("login", "true");
			sessionMap.put("UserName", uname);
			UserDao ben = new UserDao();
			boolean check = ben.checkLogin(uname, psd);

			if (check == true) {

				return "success";
			} else {

				return "error";

			}
		}

		return "success";

	}

	public String logout() {
		if (sessionMap != null) {
			sessionMap.invalidate();

		}
		return "logout";
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPsd() {
		return psd;
	}

	public void setPsd(String psd) {
		this.psd = psd;
	}

	public SessionMap<String, Object> getSessionMap() {
		return sessionMap;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMap = (SessionMap<String, Object>) map;
	}

}
