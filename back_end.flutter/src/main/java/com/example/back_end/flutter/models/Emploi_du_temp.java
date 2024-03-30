package com.example.back_end.flutter.models;

import jakarta.persistence.Access;


import jakarta.persistence.AccessType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Emploi_du_temp {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String filier;
	private String emploi;
	
	
	
	public Emploi_du_temp() {
	}


	public Emploi_du_temp(String filier, String emploi) {
		this.filier = filier;
		this.emploi = emploi;
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getFilier() {
		return filier;
	}


	public void setFilier(String filier) {
		this.filier = filier;
	}


	public String getEmploi() {
		return emploi;
	}


	public void setEmploi(String emploi) {
		this.emploi = emploi;
	}
	
	
	
	
}
