package com.abcjobs;

import com.opensymphony.xwork2.ActionSupport;

public class AdminDeleteAction extends ActionSupport {

	private static final long serialVersionUID = 7789977831340637290L;
	UserBean bean = new UserBean();
	UserDao dao = new UserDao();

	public String execute() throws Exception {
		System.out.println(bean.getEml());
		int i = dao.deleteUserDetails(bean);
		try {
			if (i > 0) {
				System.out.println("user deleted");
			} else {
				System.out.println("user not deleted");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public UserBean getBean() {
		return bean;
	}

	public void setBean(UserBean bean) {
		this.bean = bean;
	}

}
