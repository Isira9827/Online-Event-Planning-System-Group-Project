package com.javaClass;

public class event {

	private int idevent;
	private String eventname;
	private String category;
	private String description;
	private String location;
	public void setIdevent(int idevent) {
		this.idevent = idevent;
	}
	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public event(int idevent, String eventname, String category, String description, String location) {
		
		this.idevent = idevent;
		this.eventname = eventname;
		this.category = category;
		this.description = description;
		this.location = location;
	}
	public event() {
		// TODO Auto-generated constructor stub
	}
	public int getIdevent() {
		return idevent;
	}

	public String getEventname() {
		return eventname;
	}
	
	public String getCategory() {
		return category;
	}

	public String getDescription() {
		return description;
	}

	public String getLocation() {
		return location;
	}


	
}
