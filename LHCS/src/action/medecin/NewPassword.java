package action.medecin;

import java.util.Map;

import modele.Medecin;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.MedecinDao;

public class NewPassword extends ActionSupport implements SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	Map <String,Object> session ;
	public String execute(){
		MedecinDao medecinDao=new MedecinDao();
		Medecin medecin=new Medecin();
		medecin=medecinDao.chercherEmail(getEmail());
		if(medecin!=null){
		
		MailValidation mail=new MailValidation();
		String corps=" Cher Medecin clique le lien ci dessous pour pouvoir reinitialiser votre mot de passe oublié \n http://localhost:9199/LHCS/shownewpwd.action";
		mail.send(getEmail(), "", "Réinitialiser mot de passe -LHCS", corps);
		
		session.put("mail", getEmail());
		addActionMessage("Email envoyé avec succés!");
		return SUCCESS;
		}
		else return "error";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public void setSession(Map<String, Object> session) {
	this.session=session;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	

	
	
}
