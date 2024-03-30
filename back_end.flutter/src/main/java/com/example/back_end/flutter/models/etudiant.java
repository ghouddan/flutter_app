package com.example.back_end.flutter.models;

import io.micrometer.common.lang.NonNull;

import jakarta.persistence.Access;
import jakarta.persistence.AccessType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
public class etudiant{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long etudiant_id;
	private String nom;
	private String prenom;
	private String flilier;
	private String Apoger;
	private String ecole;
	private String adress;
	private double phone;
	private String email;
	
	
	public etudiant() {
	}
	
	
	public etudiant(String email,String nom, String prenom, String flilier, String apoger,
			String ecole, String adress, double phone) {
		this.email = email;
		this.nom = nom;
		this.prenom = prenom;
		this.flilier = flilier;
		Apoger = apoger;
		this.ecole = ecole;
		this.adress = adress;
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public long getId() {
		return etudiant_id;
	}
	public void setId(long id) {
		this.etudiant_id = id;
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
