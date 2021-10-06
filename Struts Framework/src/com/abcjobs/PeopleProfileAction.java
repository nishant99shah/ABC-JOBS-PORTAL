package com.abcjobs;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class PeopleProfileAction extends ActionSupport {

	private static final long serialVersionUID = 2815030337808610365L;
	private String eml;
	ArrayList<UserBean> beanL = null;
	UserDao mao = null;
	UserBean bean = null;
	ResultSet rs = null;

	public String getEml() {
		return eml;
	}

	public void setEml(String eml) {
		this.eml = eml;
	}

	public String execute() throws SQLException, Exception {
		if (eml != null) {

			mao = new UserDao();
			beanL = new ArrayList<UserBean>();
			rs = mao.SearchView(eml);

			int i = 0;

			while (rs.next()) {
				i++;
				bean = new UserBean();
				bean.setFname(rs.getString("FirstName"));
				bean.setLname(rs.getString("LastName"));
				bean.setUname(rs.getString("UserName"));
				bean.setEml(rs.getString("Email"));

				beanL.add(bean);

			}

			if (i == 0) {
				System.out.println("error");
				return "error";
			} else {
				System.out.println("Success");
			}

		}
		return "searchsuccess";
	}

	public ArrayList<UserBean> getBeanL() {
		return beanL;
	}

	public void setBeanL(ArrayList<UserBean> beanL) {
		this.beanL = beanL;
	}

}
