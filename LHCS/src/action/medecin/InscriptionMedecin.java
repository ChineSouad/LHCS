package action.medecin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import modele.Medecin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;



import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.*;

import dao.MedecinDao;

@SuppressWarnings("serial")
public class InscriptionMedecin extends ActionSupport implements SessionAware {

	
	private String password,nom,prenom,email,titre,civilite,specialite,
	lieuPrestation,adresse,modeExercice,etablissementEtude;
	private String confirmPasswordInput;
	private long numOrdre,phoneFixe,phoneMobile,fax;
	private boolean adherentCnam;
	private Date dateNaissance;
	Map<String, Object> session;
Cryptage c=new Cryptage();
	public String execute() {
		String code=java.util.UUID.randomUUID().toString();
		
		Medecin med=new Medecin();
		med.setNom(getNom());
		med.setPrenom(getPrenom());
		med.setEmail(getEmail());
		med.setNumOrdre(getNumOrdre());
		med.setDateNaissance(getDateNaissance());
		med.setValide(false);
		med.setDateNaissance(getDateNaissance());
		med.setAdresse(getAdresse());
		med.setCivilite(getCivilite());
		med.setEtablissementEtude(getEtablissementEtude());
		med.setFax(getFax());
		med.setLieuPrestation(getLieuPrestation());
		med.setModeExercice(getModeExercice());
		med.setTitre(getTitre());
		med.setPhoneFixe(getPhoneFixe());
		med.setSpecialite(getSpecialite());
		med.setPhoneMobile(getPhoneMobile());
		med.setAdherentCnam(isAdherentCnam());
		med.setPassword(c.encrypt(getPassword()));
		//med.setPassword(getPassword());
		med.setCode(code);
		MedecinDao medecinDao=new MedecinDao();
	if(medecinDao.ajout(med))
		
	{
		MailValidation validation=new MailValidation();
		String corp=" Bienvenue cher "+med.getNom()+", Merci d'avoir choisi LHCS, la dernière étape pour terminer la procédure de votre inscription est d'activer "
					+"votre compte en saisissant le code d'activation \n Ce sont les détails de l'activation de votre compte: \n votre email :"+
				"     "+med.getEmail()+" \n votre code d'activation : "+ code;
				
		validation.send(med.getEmail(), med.getNom(),"Activation de compte - LHCS",corp);
		
		session.put("mail", med.getEmail());
		session.put("password",med.getPassword());
		return SUCCESS;}
	else return "failure";
		
	}

	

	public String getConfirmPasswordInput() {
		return confirmPasswordInput;
	}


	public void setConfirmPasswordInput(String confirmPasswordInput) {
		this.confirmPasswordInput = confirmPasswordInput;
	}


	public String getPassword() {
		return password;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "Password is a required field")
	@StringLengthFieldValidator(type = ValidatorType.FIELD, maxLength = "25", minLength = "6", message = "Password must be of length between 6 and 25")
	public void setPassword(String password) {
		this.password = password;
	}

	public String getNom() {
		return nom;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "FirstName is a required field")
	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "LastName is a required field")
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "EmailAddress is a required field")
	@EmailValidator(type = ValidatorType.FIELD, message = "Email Address must be valid")
	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDateNaissance() {
		return dateNaissance;
	}



	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}



	public String getTitre() {
		return titre;
	}



	public void setTitre(String titre) {
		this.titre = titre;
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



	public String getModeExercice() {
		return modeExercice;
	}



	public void setModeExercice(String modeExercice) {
		this.modeExercice = modeExercice;
	}



	public String getEtablissementEtude() {
		return etablissementEtude;
	}



	public void setEtablissementEtude(String etablissementEtude) {
		this.etablissementEtude = etablissementEtude;
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



	public boolean isAdherentCnam() {
		return adherentCnam;
	}



	public void setAdherentCnam(boolean adherentCnam) {
		this.adherentCnam = adherentCnam;
	}



	public Map<String, Object> getSession() {
		return session;
	}
}
