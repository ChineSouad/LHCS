package modele;

import java.util.Date;
import java.util.List;

public class Tuteur {
	private long id,telephoneFixe, telephoneMobile;
	private String nom,prenom,email,adresse,profession,lieuProfession,identifiant;
	private Date dateNaissance;

	
	public Tuteur(){
		
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getTelephoneFixe() {
		return telephoneFixe;
	}
	public void setTelephoneFixe(long telephoneFixe) {
		this.telephoneFixe = telephoneFixe;
	}
	public long getTelephoneMobile() {
		return telephoneMobile;
	}
	public void setTelephoneMobile(long telephoneMobile) {
		this.telephoneMobile = telephoneMobile;
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
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getLieuProfession() {
		return lieuProfession;
	}
	public void setLieuProfession(String lieuProfession) {
		this.lieuProfession = lieuProfession;
	}
	public String getIdentifiant() {
		return identifiant;
	}
	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
	}
	
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date date) {
		this.dateNaissance =  date;
	}
	public Tuteur(long id, long telephoneFixe, long telephoneMobile,
			String nom, String prenom, String email, String adresse,
			String profession, String lieuProfession, String identifiant,
			 Date dateNaissance) {
		super();
		this.id = id;
		this.telephoneFixe = telephoneFixe;
		this.telephoneMobile = telephoneMobile;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.adresse = adresse;
		this.profession = profession;
		this.lieuProfession = lieuProfession;
		this.identifiant = identifiant;
		
	}
	
	
}
