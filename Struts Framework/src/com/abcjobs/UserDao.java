package com.abcjobs;

import java.sql.*;

public class UserDao {
	
			//connect to database
			public static Connection getConnection() throws Exception {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					return DriverManager.getConnection("jdbc:mysql://localhost:3306/in0719a22h", "IN0719A22H","0x4UfEs8Y");
				} catch (Exception e) {
					e.printStackTrace();
					return null;
				}
			}
			
			//save user data in database
			public int registerUser(String fname, String lname, String uname, String pnum, String eml, String psd) throws Exception {
				int i = 0;
				try {
					String sql = "INSERT INTO users(FirstName, LastName, UserName, PhoneNumber, Email, Password) VALUES (?,?,?,?,?,?)";
					PreparedStatement ps = getConnection().prepareStatement(sql);
					ps.setString(1, fname);
					ps.setString(2, lname);
					ps.setString(3, uname);				
					ps.setString(4, pnum);
					ps.setString(5, eml);
					ps.setString(6, psd);
					i = ps.executeUpdate();
					return i;
				} catch (Exception e) {
					e.printStackTrace();
					return i;
				} finally {
					if (getConnection() != null) {
						     getConnection().close();
					}
				}
			}
		
			//fetch old data 
			public ResultSet fetchUserDetails(String uname) throws SQLException, 
			Exception {
				ResultSet rs = null;
				try {
					String sql = "SELECT * FROM users WHERE UserName = ?";
					PreparedStatement ps = getConnection().prepareStatement(sql);
					ps.setString(1, uname);
					rs = ps.executeQuery();
					return rs;
				} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
					if (getConnection() != null) {
						     getConnection().close();
				}
		   }
			
			}		
			//Login code	
			public boolean checkLogin(String uname, String psd) throws Exception	{
				boolean check = false;
				
				try {
					String sql = "Select * from users where UserName = ? and Password = ?";
				
					PreparedStatement ps = getConnection().prepareStatement(sql);
					ps.setString(1, uname);
					ps.setString(2, psd);
					ResultSet rs = ps.executeQuery();
					check = rs.next();
				} catch(Exception e) {
					e.printStackTrace();
				}		
				
				return check;
			
			}
			
			//update code
			public int updateUserDetails(String fname, String lname, String pnum, String uname) throws SQLException, Exception {
				
				int i = 0;
				try {
					String sql = "UPDATE users SET FirstName=?,LastName=?,PhoneNumber=? WHERE UserName=?";
					PreparedStatement ps = getConnection().prepareStatement(sql);
					ps.setString(1, fname);
					ps.setString(2, lname);
					ps.setString(3, pnum);
					ps.setString(4, uname);
					i = ps.executeUpdate();
					return i;
				} catch (Exception e) {
					e.printStackTrace();
					return 0;
				} finally {
					if (getConnection() != null) {
						getConnection().close();
					}
				}
				
			}
			
			//search code
			public ResultSet search(String search) throws SQLException,Exception{
		        ResultSet rs = null;
		        try {
		            String sql = "SELECT * FROM users WHERE FirstName like ? OR LastName like ?";
		            PreparedStatement ps = getConnection().prepareStatement(sql);
		            ps.setString(1, "%"+search+"%");
		            ps.setString(2, "%"+search+"%");
		            rs = ps.executeQuery();

		        } catch (Exception e) {
		            e.printStackTrace();
		            return null;
		        } finally {
		            if  (getConnection() != null) {
		                getConnection().close();
		            }
		        }

		        return rs;
		        }
			
			//forgot & email code
			public ResultSet report(String eml) throws SQLException, Exception {
		        ResultSet rs = null;
		        try {
		            String sql = "SELECT * FROM users where Email = ?";
		            PreparedStatement ps = getConnection().prepareStatement(sql);
		            ps.setString(1, eml);
		            
		            rs = ps.executeQuery();
		            return rs;
		        } catch (Exception e) {
		            e.printStackTrace();
		            return null;
		        } finally {
		            if (getConnection() != null) {
		                getConnection().close();
		            }
		        }
		    }

			//UpdatePass
			public int updatePass(String eml, String psd) throws SQLException, Exception {
			int i = 0;
			try {
			 String sql = "Update users set Password = ? where Email = ?";
			 PreparedStatement ps = getConnection().prepareStatement(sql);
			 ps.setString(1, psd);
			 ps.setString(2, eml);
			 i = ps.executeUpdate();
			} catch(SQLException e) {
				e.printStackTrace();
				} catch(Exception f) {
					f.printStackTrace();
				}
				return i;
			}
			
			
			//SearchProfile
			public ResultSet SearchView(String eml) throws SQLException, Exception {
				
	            ResultSet rs = null;
	            try {
	            	
	                String sql = "SELECT * FROM users where Email = ?";
	                PreparedStatement ps = getConnection().prepareStatement(sql);	               
	                ps.setString(1, eml);
	                rs = ps.executeQuery();

	            } catch (Exception e) {
	                e.printStackTrace();

	            } finally {
	                if (getConnection() != null) {
	                    getConnection().close();
	                }
	            }
	            return rs;
	    }
			
			//AdminLogin
			 public boolean adminLogin(String uname, String password) throws Exception {
			        boolean check = false;

			        try {
			            String sqls = "Select * from admin where UserName =? and Password = ?";

			            PreparedStatement ps = getConnection().prepareStatement(sqls);
			            ps.setString(1, uname);
			            ps.setString(2, password);
			            ResultSet rs = ps.executeQuery();
			            check = rs.next();
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }

			        return check;
			    }
			 

			
			//AdminView
			public ResultSet viewUsers() throws SQLException, Exception {
		        ResultSet rs = null;
		        try {
		            String sql = "SELECT * FROM users ORDER BY ID";
		            PreparedStatement ps = getConnection().prepareStatement(sql);
		            rs = ps.executeQuery();

		        } catch (Exception e) {
		            e.printStackTrace();

		        } finally {
		            if (getConnection() != null) {
		                getConnection().close();
		            }
		        }
		        return rs;
		    }
			
			//AdminDelete
			 public int deleteUserDetails(UserBean bean) throws SQLException, Exception {
			        int i = 0;
			        try {
			            String sql = "DELETE FROM users where Email = ?";
			            PreparedStatement ps = getConnection().prepareStatement(sql);
			            ps.setString(1, bean.getEml());
			            i = ps.executeUpdate();
			            return i;
			        } catch (Exception e) {
			            e.printStackTrace();
			            return 0;
			        } finally {
			            if (getConnection() != null) {
			                getConnection().close();
			            }
			        }
			 }
	}