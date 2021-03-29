package com.javaClass;

public class admin {
	
	private int idadmin;
	private String name;
	private String nic;
	private String email;
	private String phone;
	private String adminusername;
	private String password;
	public admin(int idadmin, String name, String nic, String email, String phone, String adminusername,
			String password) {
		this.idadmin = idadmin;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.adminusername = adminusername;
		this.password = password;
	}
	public int getIdadmin() {
		return idadmin;
	}
	
	public String getName() {
		return name;
	}
	
	public String getNic() {
		return nic;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getAdminusername() {
		return adminusername;
	}
	
	public String getPassword() {
		return password;
	}
	

}
