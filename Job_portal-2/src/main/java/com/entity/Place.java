package com.entity;

public class Place {
 private int id;
 private String name;
 private String email;
 private String placex;
 private String price;
 
 
 
 
 
 
 
 
 
 
 
 

public Place(String name, String email, String placex, String price) {
	super();
	this.name = name;
	this.email = email;
	this.placex = placex;
	this.price = price;
}




	
public Place() {
	super();
	// TODO Auto-generated constructor stub
}





public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPlacex() {
	return placex;
}
public void setPlacex(String placex) {
	this.placex = placex;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
 
 
}
