package modele;

import java.util.Date;

public class Patient {
	private long id, telephoneFixe,telephonePortable;
	private String nom, prenom,email,password, lieuNaissance, adresse, prenomPere, identifiant, prenomMere, 
	nomMere,sexe,nationalite,profession,adresseProfession,civilite,lienFamilialTuteur,prenomEpoux,typeSang,code ;
    


	private float poids;
    private Date dateNaissance;
    private boolean fumeur,beneficiaireCNAM,valide;
    private Tuteur tuteur;
  
    
    


public Patient(){
	
}
public Patient(long id, long telephoneFixe, long telephonePortable,
		String identifiant, String nom, String prenom, String email,
		String password, String lieuNaissance, String adresse, String prenomPere,
		String prenomMere, String nomMere, String sexe, String nationalite,
		String profession, String adresseProfession, String civilite,
		String lienFamilialTuteur, String nomEpoux, String typeSang,
		float poids, Date dateNaissance, boolean fumeur,
		boolean beneficiaireCNAM, Tuteur tuteur) {
	super();
	this.id = id;
	this.telephoneFixe = telephoneFixe;
	this.telephonePortable = telephonePortable;
	this.identifiant = identifiant;
	this.nom = nom;
	this.prenom = prenom;
	this.email = email;
	this.password = password;
	this.lieuNaissance = lieuNaissance;
	this.adresse = adresse;
	this.prenomPere = prenomPere;
	this.prenomMere = prenomMere;
	this.nomMere = nomMere;
	this.sexe = sexe;
	this.nationalite = nationalite;
	this.profession = profession;
	this.adresseProfession = adresseProfession;
	this.civilite = civilite;
	this.lienFamilialTuteur = lienFamilialTuteur;
	this.prenomEpoux = nomEpoux;
	this.typeSang = typeSang;
	this.poids = poids;
	this.dateNaissance = dateNaissance;
	this.fumeur = fumeur;
	this.beneficiaireCNAM = beneficiaireCNAM;
	this.tuteur = tuteur;


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


public long getTelephonePortable() {
	return telephonePortable;
}


public void setTelephonePortable(long telephonePortable) {
	this.telephonePortable = telephonePortable;
}


public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public boolean isValide() {
	return valide;
}
public void setValide(boolean valide) {
	this.valide = valide;
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


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public String getLieuNaissance() {
	return lieuNaissance;
}


public void setLieuNaissance(String lieuNaissance) {
	this.lieuNaissance = lieuNaissance;
}


public String getAdresse() {
	return adresse;
}


public void setAdresse(String adresse) {
	this.adresse = adresse;
}


public String getPrenomPere() {
	return prenomPere;
}


public void setPrenomPere(String prenomPere) {
	this.prenomPere = prenomPere;
}


public String getPrenomMere() {
	return prenomMere;
}


public void setPrenomMere(String prenomMere) {
	this.prenomMere = prenomMere;
}


public String getNomMere() {
	return nomMere;
}


public void setNomMere(String nomMere) {
	this.nomMere = nomMere;
}


public String getSexe() {
	return sexe;
}


public void setSexe(String sexe) {
	this.sexe = sexe;
}


public String getNationalite() {
	return nationalite;
}


public void setNationalite(String nationalite) {
	this.nationalite = nationalite;
}


public String getProfession() {
	return profession;
}


public void setProfession(String profession) {
	this.profession = profession;
}


public String getAdresseProfession() {
	return adresseProfession;
}


public void setAdresseProfession(String adresseProfession) {
	this.adresseProfession = adresseProfession;
}


public String getCivilite() {
	return civilite;
}


public void setCivilite(String civilite) {
	this.civilite = civilite;
}


public String getLienFamilialTuteur() {
	return lienFamilialTuteur;
}


public void setLienFamilialTuteur(String lienFamilialTuteur) {
	this.lienFamilialTuteur = lienFamilialTuteur;
}


public String getPrenomEpoux() {
	return prenomEpoux;
}


public void setPrenomEpoux(String prenomEpoux) {
	this.prenomEpoux = prenomEpoux;
}


public String getTypeSang() {
	return typeSang;
}


public void setTypeSang(String typeSang) {
	this.typeSang = typeSang;
}


public float getPoids() {
	return poids;
}


public void setPoids(float poids) {
	this.poids = poids;
}


public Date getDateNaissance() {
	return dateNaissance;
}


public void setDateNaissance(Date dateNaissance) {
	this.dateNaissance = dateNaissance;
}


public boolean isFumeur() {
	return fumeur;
}


public void setFumeur(boolean fumeur) {
	this.fumeur = fumeur;
}


public boolean isBeneficiaireCNAM() {
	return beneficiaireCNAM;
}


public void setBeneficiaireCNAM(boolean beneficiaireCNAM) {
	this.beneficiaireCNAM = beneficiaireCNAM;
}


public Tuteur getTuteur() {
	return tuteur;
}


public void setTuteur(Tuteur tuteur) {
	this.tuteur = tuteur;
}



  
  
}
