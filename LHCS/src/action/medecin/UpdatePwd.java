package action.medecin;

import java.util.Map;

import modele.Medecin;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.MedecinDao;

public class UpdatePwd extends ActionSupport implements SessionAware{
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
Map <String,Object>	session;
	
	private String password, confirmPasswordInput;
	Cryptage c=new Cryptage();
	public String execute(){
		MedecinDao medecinDao=new MedecinDao();
	    Medecin medecin =new Medecin();
	    medecin=medecinDao.chercherEmail(session.get("mail").toString());
	    medecin.setPassword(c.encrypt(getPassword()));
	    medecinDao.update(medecin);
	    return SUCCESS;
	
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPasswordInput() {
		return confirmPasswordInput;
	}

	public void setConfirmPasswordInput(String confirmPasswordInput) {
		this.confirmPasswordInput = confirmPasswordInput;
	}
	
	
	
	
	

}
