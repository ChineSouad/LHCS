package action.medecin;

import modele.Medecin;

import org.apache.struts2.convention.annotation.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

import dao.MedecinDao;

public class LoginMedecin extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String password;
	Medecin medecin=new Medecin();
	MedecinDao medecinDao=new MedecinDao();
	Cryptage c=new Cryptage();

	public String execute(){  
		medecin=medecinDao.chercher(getEmail(),c.encrypt(getPassword()));
		//medecin=medecinDao.chercher(getEmail(),getPassword());
	    if(medecin!=null){
	    	if (medecin.isValide())
	    	 {return SUCCESS; } 
	       else  {
	            	 System.out.println("invalide");
	    	    return "invalide";}}
	     else 
	            	return "error";
	
	           
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

}

/*  */
