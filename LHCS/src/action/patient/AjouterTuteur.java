package action.patient;

import java.util.Date;

import dao.TuteurDao;
import modele.Tuteur;

public class AjouterTuteur {
	private String identifiant,nom,prenom, adresse, profession,lieuProfession,email;
	private long telephoneMobile, telephoneFixe;
	private Date dateNaissance;
	

	public void execute(){
		Tuteur tuteur=new Tuteur();
		tuteur.setIdentifiant(getIdentifiant());
		tuteur.setNom(getNom());
		tuteur.setPrenom(getPrenom());
		tuteur.setAdresse(getAdresse());
		tuteur.setProfession(getProfession());
		tuteur.setLieuProfession(getLieuProfession());
		tuteur.setDateNaissance(getDateNaissance());
		tuteur.setEmail(getEmail());
		tuteur.setTelephoneFixe(getTelephoneFixe());
		tuteur.setTelephoneMobile(getTelephoneMobile());
		TuteurDao tDao=new TuteurDao();
		tDao.ajout(tuteur);
		
	}


	public String getIdentifiant() {
		return identifiant;
	}


	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public long getTelephoneMobile() {
		return telephoneMobile;
	}


	public void setTelephoneMobile(long telephoneMobile) {
		this.telephoneMobile = telephoneMobile;
	}


	public long getTelephoneFixe() {
		return telephoneFixe;
	}


	public void setTelephoneFixe(long telephoneFixe) {
		this.telephoneFixe = telephoneFixe;
	}


	public Date getDateNaissance() {
		return dateNaissance;
	}


	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	
	
	
}
