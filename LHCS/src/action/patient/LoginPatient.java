package action.patient;


import java.util.Map;

import modele.Patient;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.interceptor.SessionAware;

import action.medecin.Cryptage;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

import dao.PatientDao;

public class LoginPatient extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String password;
	Patient patient=new Patient();
	PatientDao patientDao=new PatientDao();
	Cryptage c=new Cryptage();
	Map <String,Object> session;

	public String execute(){  
		patient=patientDao.chercher(getEmail(),c.encrypt(getPassword()));
		//patient=patientDao.chercher(getEmail(),getPassword());
		session.put("mail", getEmail());
		
	    if(patient!=null){
	    	if(patient.isValide()){
	    		
	    		 session.put("password", patient.getPassword());
	    		 session.put("id", patient.getId());
	    		 session.put("patient", patient.getNom()+" "+patient.getPrenom());
	    	
	            return SUCCESS;  
	           
	                }  
	            else {
	            	 System.out.println("invalide");
	    	    return "invalide";}}
	    else return "error";
	    
	}



	public String getEmail() {
		return email;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "Email is a required field")
	@StringLengthFieldValidator(type = ValidatorType.FIELD, maxLength = "30", minLength = "6", message = "Email must be of length between 6 and 30")
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	@RequiredStringValidator(type = ValidatorType.FIELD, message = "Password is a required field")
	@StringLengthFieldValidator(type = ValidatorType.FIELD, maxLength = "12", minLength = "6", message = "Password must be of length between 6 and 12")
	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}



	public Map<String, Object> getSession() {
		return session;
	}

	
	
}

/*  */
