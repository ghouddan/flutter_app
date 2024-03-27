package model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cours")
public class cours {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String nom;
	private int sale;
	private String date_debu;
	private String date_fin;
	private professeur professeur;
	private String filier;
	
	
	
	public cours(String nom, int sale, String date_debu, String date_fin, model.professeur professeur, String filier) {
		super();
		this.nom = nom;
		this.sale = sale;
		this.date_debu = date_debu;
		this.date_fin = date_fin;
		this.professeur = professeur;
		this.filier = filier;
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
