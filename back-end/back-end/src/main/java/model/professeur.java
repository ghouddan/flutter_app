package model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class professeur extends user{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private String nom;
	private String prenom;
	@Column(name = "email", unique = true)
	private String email;
	private String pasword;
	private String adress;
	private double phone;
	
	
	
	
	public professeur(String nom, String prenom, String email, String pasword, String type, String adress, double phone) {
		super(email, pasword, type);
		this.nom = nom;
		this.prenom = prenom;
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
