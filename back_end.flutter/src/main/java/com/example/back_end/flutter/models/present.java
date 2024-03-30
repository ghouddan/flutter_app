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

@Entity
public class present {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long present_id;
	
	@OneToOne(mappedBy = "present")
	private cours cour;
	
	@ManyToOne
	@JoinColumn(name = "etudiant_id")
	private etudiant etudiant;
	private boolean present;
	
	
	
	public present() {
	}


	public present(cours cour, etudiant etudiant, boolean present, QRcode Qrcode) {
		super();
		this.cour = cour;
		this.etudiant = etudiant;
		this.present = present;
	}


	public long getId() {
		return present_id;
	}


	public void setId(long id) {
		this.present_id = id;
	}


	public cours getCour() {
		return cour;
	}


	public void setCour(cours cour) {
		this.cour = cour;
	}


	public etudiant getEtudiant() {
		return etudiant;
	}


	public void setEtudiant(etudiant etudiant) {
		this.etudiant = etudiant;
	}


	public boolean isPresent() {
		return present;
	}


	public void setPresent(boolean present) {
		this.present = present;
	}

	
	
	
}
