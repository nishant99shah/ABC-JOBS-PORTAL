package com.abcjobs;

import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminSelectAction {

	ResultSet rs = null;
	UserBean bean = null;
	private boolean noData = false;
	ArrayList<UserBean> beanList = null;
	UserDao admin = new UserDao();

	public String execute() throws Exception {

		rs = admin.viewUsers();
		int i = 0;
		beanList = new ArrayList<UserBean>();
		if (rs != null) {
			while (rs.next()) {
				i++;
				bean = new UserBean();
				bean.setID(rs.getString("ID"));
				bean.setFname(rs.getString("FirstName"));
				bean.setLname(rs.getString("LastName"));
				bean.setUname(rs.getString("UserName"));
				bean.setPnum(rs.getString("PhoneNumber"));
				bean.setEml(rs.getString("Email"));
				beanList.add(bean);
			}

			if (i == 0) {
				setNoData(false);
			} else {
				setNoData(true);
			}
		}
		return "success";
	}

	public ArrayList<UserBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserBean> beanList) {
		this.beanList = beanList;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

}
