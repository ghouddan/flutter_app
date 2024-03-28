package com.example.back_end.flutter.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Emploi_du_temp {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String filier;
	private Byte[] emploi;
	
	
	public Emploi_du_temp(String filier, Byte[] emploi) {
		this.filier = filier;
		this.emploi = emploi;
	}


	public double getId() {
		return id;
	}


	public void setId(double id) {
		this.id = id;
	}


	public String getFilier() {
		return filier;
	}


	public void setFilier(String filier) {
		this.filier = filier;
	}


	public Byte[] getEmploi() {
		return emploi;
	}


	public void setEmploi(Byte[] emploi) {
		this.emploi = emploi;
	}
	
	
	
	
}
