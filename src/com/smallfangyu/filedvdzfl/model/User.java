package com.smallfangyu.filedvdzfl.model;
import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	
	//public User(){
		//username="user";//用户名赋值
		//password="123";//密码赋值
	//}
	public  User(String username,String password) {
		super();
		this.username=username;
		this.password=password;
	}


    public String getUsername() {

		return username;
      }

    public void setUsername(String username) {

		this.username=username;
    }
    
    public String getPassword() {
    	return password;
      }
    public void setPassword(String password) {

		this.password=password;
    }
	
}
