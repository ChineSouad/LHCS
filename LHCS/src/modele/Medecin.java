package modele;

import java.util.Date;
import java.util.List;

public class Medecin {
	private long id, numOrdre, phoneFixe,phoneMobile,fax;
	private String nom,prenom,email,code,password,identifiantPersonnel, civilite,specialite,lieuPrestation,adresse,etablissementEtude,modeExercice,titre;
	private Date dateNaissance;
	private boolean valide,adherentCnam ;
	
	
	
	
	public Medecin(){
		
	}
	
	public Medecin(long id, long numOrdre, long phoneFixe, long phoneMobile,
			long fax, String nom, String prenom, String email, String code,
			String password, String civilite, String specialite,
			String lieuPrestation, String adresse, String etablissementEtude,
			String modeExercice, String titre,String identifiantPersonnel, boolean valide,
			boolean adherentCnam, Date dateNaissance) {
		super();
		this.id = id;
		this.numOrdre = numOrdre;
		this.phoneFixe = phoneFixe;
		this.phoneMobile = phoneMobile;
		this.fax = fax;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.code = code;
		this.password = password;
		this.civilite = civilite;
		this.specialite = specialite;
		this.lieuPrestation = lieuPrestation;
		this.adresse = adresse;
		this.etablissementEtude = etablissementEtude;
		this.modeExercice = modeExercice;
		this.titre = titre;
		this.dateNaissance = dateNaissance;
		this.valide = valide;
		this.adherentCnam = adherentCnam;
		this.identifiantPersonnel=identifiantPersonnel;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getNumOrdre() {
		return numOrdre;
	}
	public void setNumOrdre(long numOrdre) {
		this.numOrdre = numOrdre;
	}
	public long getPhoneFixe() {
		return phoneFixe;
	}
	public void setPhoneFixe(long phoneFixe) {
		this.phoneFixe = phoneFixe;
	}
	public long getPhoneMobile() {
		return phoneMobile;
	}
	public void setPhoneMobile(long phoneMobile) {
		this.phoneMobile = phoneMobile;
	}
	public long getFax() {
		return fax;
	}
	public void setFax(long fax) {
		this.fax = fax;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCivilite() {
		return civilite;
	}
	public void setCivilite(String civilite) {
		this.civilite = civilite;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getLieuPrestation() {
		return lieuPrestation;
	}
	public void setLieuPrestation(String lieuPrestation) {
		this.lieuPrestation = lieuPrestation;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEtablissementEtude() {
		return etablissementEtude;
	}
	public void setEtablissementEtude(String etablissementEtude) {
		this.etablissementEtude = etablissementEtude;
	}
	public String getModeExercice() {
		return modeExercice;
	}
	public void setModeExercice(String modeExercice) {
		this.modeExercice = modeExercice;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public boolean isValide() {
		return valide;
	}
	public void setValide(boolean valide) {
		this.valide = valide;
	}
	public boolean isAdherentCnam() {
		return adherentCnam;
	}
	public void setAdherentCnam(boolean adherentCnam) {
		this.adherentCnam = adherentCnam;
	}

	public String getIdentifiantPersonnel() {
		return identifiantPersonnel;
	}

	public void setIdentifiantPersonnel(String identifiantPersonnel) {
		this.identifiantPersonnel = identifiantPersonnel;
	}
	
	
	
}