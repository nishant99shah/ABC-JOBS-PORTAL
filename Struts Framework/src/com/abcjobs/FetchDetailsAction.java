package com.abcjobs;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FetchDetailsAction extends ActionSupport {

	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	UserBean bean = null;
	List<UserBean> beanList = null;
	UserDao user = new UserDao();
	private boolean noData = false;

	public String execute() throws Exception {

		HttpSession session = ServletActionContext.getRequest().getSession(false);
		if (session == null || session.getAttribute("login") == null) {
			return "error";
		}

		else {
			String uname = (String) session.getAttribute("UserName");
			try {
				beanList = new ArrayList<UserBean>();
				rs = user.fetchUserDetails(uname);
				int i = 0;
				if (rs != null) {
					while (rs.next()) {
						i++;
						bean = new UserBean();
						bean.setFname(rs.getString("FirstName"));
						bean.setLname(rs.getString("LastName"));
						bean.setUname(rs.getString("UserName"));
						bean.setPnum(rs.getString("PhoneNumber"));
						bean.setEml(rs.getString("Email"));
						beanList.add(bean);
					}
				}
				if (i == 0) {
					noData = false;
				} else {
					noData = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}

	}

	public List<UserBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<UserBean> beanList) {
		this.beanList = beanList;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

}
