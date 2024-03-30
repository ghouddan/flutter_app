package com.example.back_end.flutter.models;

import jakarta.persistence.Access;

import jakarta.persistence.AccessType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class QRcode {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String date;
	private String professeur;
	private String filier;
	private String module;
	private String QRode;
	
	
	
	
	
	public QRcode() {
	}

	public QRcode(String date, String professeur, String filier, String module, String qRode) {
		super();
		this.date = date;
		this.professeur = professeur;
		this.filier = filier;
		this.module = module;
		QRode = qRode;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public String getQRode() {
		return QRode;
	}
	public void setQRode(String qRode) {
		QRode = qRode;
	}
	
	
}
