package action.patient;

import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import action.medecin.Cryptage;
import action.medecin.MailValidation;

import com.opensymphony.xwork2.ActionSupport;

import dao.PatientDao;
import dao.TuteurDao;
import modele.Patient;
import modele.Tuteur;

public class InscriptionPatient extends ActionSupport implements SessionAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long telephoneFixe,telephonePortable;
	private String nom, prenom,email,code,password,confirmPasswordInput, lieuNaissance, adresse, prenomPere, identifiant, prenomMere, 
	nomMere,sexe,nationalite,profession,adresseProfession,civilite,lienFamilialTuteur,prenomEpoux,typeSang,nomTuteur,prenomTuteur ;
	Map<String, Object> session;
    public String getNomTuteur() {
		return nomTuteur;
	}


	public void setNomTuteur(String nomTuteur) {
		this.nomTuteur = nomTuteur;
	}


	public String getPrenomTuteur() {
		return prenomTuteur;
	}


	public void setPrenomTuteur(String prenomTuteur) {
		this.prenomTuteur = prenomTuteur;
	}
	private float poids;
    private Date dateNaissance;
    private boolean fumeur,beneficiaireCNAM,valide;
    Tuteur tuteur=new Tuteur();
     TuteurDao tDao=new TuteurDao();
     Cryptage c=new Cryptage();
    public String execute(){
    	 code=java.util.UUID.randomUUID().toString();
    	tuteur=tDao.chercher(getNomTuteur(), getPrenomTuteur());
    	Patient patient= new Patient();
    	patient.setAdresse(getAdresse());
    	patient.setBeneficiaireCNAM(isBeneficiaireCNAM());
    	patient.setCivilite(getCivilite());
    	patient.setDateNaissance(getDateNaissance());
    	patient.setCode(code);
    	patient.setEmail(getEmail());
    	patient.setValide(false);
    	patient.setFumeur(isFumeur());
    	patient.setIdentifiant(getIdentifiant());
    	patient.setLienFamilialTuteur(getLienFamilialTuteur());
    	patient.setLieuNaissance(getLieuNaissance());
    	patient.setAdresseProfession(getAdresseProfession());
    	patient.setAdresseProfession(getAdresseProfession());
    	patient.setTuteur(tuteur);
    	patient.setNationalite(getNationalite());
    	patient.setProfession(getProfession());
    	patient.setNom(getNom());
    	patient.setPrenom(getPrenom());
    	patient.setPrenomEpoux(getPrenomEpoux());
    	patient.setNomMere(getNomMere());
    	patient.setPrenomPere(getPrenomPere());
    	patient.setPassword(c.encrypt(getPassword()));
    	patient.setEmail(getEmail());
    	patient.setPrenomMere(getPrenomMere());
    	patient.setTelephoneFixe(getTelephoneFixe());
    	patient.setTelephonePortable(getTelephonePortable());
    	patient.setTypeSang(getTypeSang());
    	patient.setPoids(getPoids());
    	patient.setSexe(getSexe());
    	PatientDao pDao=new PatientDao();
    	if(pDao.ajout(patient)){
    		MailValidation validation=new MailValidation();
    		String corp=" Bienvenue cher "+patient.getNom()+" "+patient.getPrenom()+", Merci d'avoir choisi LHCS, la dernière étape pour terminer la procédure de votre inscription est d'activer "
    					+"votre compte en saisissant le code d'activation \n Ce sont les détails de l'activation de votre compte: \n votre email :"+
    				"     "+patient.getEmail()+" \n votre code d'activation : "+ code;
    				
    		validation.send(patient.getEmail(), patient.getNom(),"Activation de compte - LHCS",corp);
    		
    		session.put("mail", patient.getEmail());
    		session.put("password",patient.getPassword());
    		return SUCCESS;
    	}
    	else return "error";
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
	public String getIdentifiant() {
		return identifiant;
	}
	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
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
	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getConfirmPasswordInput() {
		return confirmPasswordInput;
	}


	public void setConfirmPasswordInput(String confirmPasswordInput) {
		this.confirmPasswordInput = confirmPasswordInput;
	}
    

}
