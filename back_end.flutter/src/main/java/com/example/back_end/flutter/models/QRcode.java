package com.example.back_end.flutter.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class QRcode {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String date;
	private String professeur;
	private String filier;
	private String module;
	private byte[] QRode;
	
	
	
	
	public QRcode(String date, String professeur, String filier, String module, byte[] qRode) {
		super();
		this.date = date;
		this.professeur = professeur;
		this.filier = filier;
		this.module = module;
		QRode = qRode;
	}
	
	public double getId() {
		return id;
	}
	public void setId(double id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getProfesseur() {
		return professeur;
	}
	public void setProfesseur(String professeur) {
		this.professeur = professeur;
	}
	public String getFilier() {
		return filier;
	}
	public void setFilier(String filier) {
		this.filier = filier;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public byte[] getQRode() {
		return QRode;
	}
	public void setQRode(byte[] qRode) {
		QRode = qRode;
	}
	
	
}
