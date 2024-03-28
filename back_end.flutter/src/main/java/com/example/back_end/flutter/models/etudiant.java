package com.example.back_end.flutter.models;

import io.micrometer.common.lang.NonNull;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name = "etudiant")
public class etudiant extends user{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String nom;
	private String prenom;
	@Column(name = "email", unique = true)
	private String flilier;
	@NonNull
	@Column(name = "email", unique = true)
	private String Apoger;
	private String ecole;
	private String adress;
	private double phone;
	
	
	
	
	
	public etudiant(String email, String pasword, String type, String nom, String prenom, String flilier, String apoger,
			String ecole, String adress, double phone) {
		super(email, pasword, type);
		this.nom = nom;
		this.prenom = prenom;
		this.flilier = flilier;
		Apoger = apoger;
		this.ecole = ecole;
		this.adress = adress;
		this.phone = phone;
	}
	
	public double getId() {
		return id;
	}
	public void setId(double id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getFlilier() {
		return flilier;
	}
	public void setFlilier(String flilier) {
		this.flilier = flilier;
	}
	public String getApoger() {
		return Apoger;
	}
	public void setApoger(String apoger) {
		Apoger = apoger;
	}
	public String getEcole() {
		return ecole;
	}
	public void setEcole(String ecole) {
		this.ecole = ecole;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public double getPhone() {
		return phone;
	}
	public void setPhone(double phone) {
		this.phone = phone;
	}
	
	
	
	
	
	
}
