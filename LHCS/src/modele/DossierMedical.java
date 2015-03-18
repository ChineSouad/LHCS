package modele;

import java.util.Date;

public class DossierMedical {
	
	private long id;
	private Patient patient;
	private Medecin medecin;
	private Date dateCreation;
	
	
	public DossierMedical(){
		
	}
	public DossierMedical(long id, Patient patient, Medecin medecin, Date dateCreation) {
		super();
		this.id = id;
		this.patient = patient;
		this.medecin = medecin;
		this.dateCreation=dateCreation;
	}
	
	
	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Medecin getMedecin() {
		return medecin;
	}
	public void setMedecin(Medecin medecin) {
		this.medecin = medecin;
	}
	
	

}
