package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Place;

public class PlaceDAO {
	private Connection conn;
	public PlaceDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addPlace(Place p) {
		 boolean f = false;
			try {
				
				String sql= "insert into placegt(name,email,placex,price) values(?,?,?,?)";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, p.getName());
				
				ps.setString(2, p.getEmail());
				ps.setString(3, p.getPlacex());
				ps.setString(4, p.getPrice());
				int i = ps.executeUpdate();
				if(i==1) {
					f= true;
				}
				
				
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			return f;
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
