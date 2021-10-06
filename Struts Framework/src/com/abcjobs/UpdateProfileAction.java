package com.abcjobs;

import java.sql.*;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateProfileAction extends ActionSupport {

	private static final long serialVersionUID = -1905974197186620917L;
	private String fname;
	private String lname;
	private String uname;
	private String pnum;

	private String msg = "";
	ResultSet rs = null;
	UserDao userbean = new UserDao();
	String submitType;

	public String execute() throws SQLException, Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(false);

		if (session == null || session.getAttribute("login") == null) {
			return "Failure";

		}

		else {
			String uname = (String) session.getAttribute("UserName");

			UserDao userbean = new UserDao();
			int insert = userbean.updateUserDetails(fname, lname, pnum, uname);
			String msgs;
			if (insert > 0) {
				msgs = "Update Successfull";
			} else {
				msgs = "Some error";
			}
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

}
