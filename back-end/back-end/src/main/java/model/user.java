package model;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class user {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String email;
	private String pasword;
	private String type;
	
	public user(String email, String pasword, String type) {
		super();
		this.email = email;
		this.pasword = pasword;
		this.type = type;
	}

	public double getId() {
		return id;
	}

	public void setId(double id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPasword() {
		return pasword;
	}

	public void setPasword(String pasword) {
		this.pasword = pasword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
	
	
	
}
