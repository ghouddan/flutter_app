package com.example.back_end.flutter.models;

import jakarta.persistence.Access;


import jakarta.persistence.AccessType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity

public class cours {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nom;
	private int sale;
	private String date_debu;
	private String date_fin;
	
	@ManyToOne
	private professeur professeur;
	private String filier;
	
	@OneToOne
	@JoinColumn(name = "present_id")
	private present present;
	
	
	public cours() {
	}
	
	public cours(String nom, int sale, String date_debu, String date_fin, professeur professeur, String filier) {
		super();
		this.nom = nom;
		this.sale = sale;
		this.date_debu = date_debu;
		this.date_fin = date_fin;
		this.professeur = professeur;
		this.filier = filier;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getDate_debu() {
		return date_debu;
	}
	public void setDate_debu(String date_debu) {
		this.date_debu = date_debu;
	}
	public String getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(String date_fin) {
		this.date_fin = date_fin;
	}
	public professeur getProfesseur() {
		return professeur;
	}
	public void setProfesseur(professeur professeur) {
		this.professeur = professeur;
	}
	public String getFilier() {
		return filier;
	}
	public void setFilier(String filier) {
		this.filier = filier;
	}
	
	
	
}
