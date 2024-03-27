package model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class present {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private double id;
	private cours cour;
	private etudiant etudiant;
	private boolean present;
	private QRcode qrcode;
	
	
	public present(cours cour, model.etudiant etudiant, boolean present, QRcode Qrcode) {
		super();
		this.cour = cour;
		this.etudiant = etudiant;
		this.present = present;
		this.qrcode = Qrcode;
	}


	public double getId() {
		return id;
	}


	public void setId(double id) {
		this.id = id;
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


	public QRcode getQrcode() {
		return qrcode;
	}


	public void setQrcode(QRcode qrcode) {
		this.qrcode = qrcode;
	}
	
	
	
	
	
	
	
}
