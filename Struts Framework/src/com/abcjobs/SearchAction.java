package com.abcjobs;

import java.sql.ResultSet;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {

	private static final long serialVersionUID = -1905974197186620917L;
	ResultSet rs = null;
	UserBean bean = null;
	ArrayList<UserBean> beanList = null;
	UserDao user = null;
	private boolean noData = false;
	private String search;

	public String execute() throws Exception {

		try {
			user = new UserDao();
			beanList = new ArrayList<UserBean>();
			rs = user.search(search);
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new UserBean();
					bean.setFname(rs.getString("FirstName"));
					bean.setLname(rs.getString("LastName"));
					bean.setEml(rs.getString("Email"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
				System.out.println("Error");
			} else {
				noData = true;
				System.out.println("Search is working");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public ArrayList<UserBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserBean> beanList) {
		this.beanList = beanList;
	}

}
