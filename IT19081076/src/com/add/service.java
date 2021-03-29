package com.add;

public class service {

	private int id;
	private String name;
	private String pname;
	private String Discription;
	private String phone;
	
	
	
	public service(int id, String name,String pname, String discription,String phone) {
		
		this.id = id;
		this.name = name;
		this.pname = pname;
		Discription = discription;
		this.phone = phone;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getpname() {
		return pname;
	}


	public String getDiscription() {
		return Discription;
	}

	public String getphone() {
		return phone;
	}

		
	
}
