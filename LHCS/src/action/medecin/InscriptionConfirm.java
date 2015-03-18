package action.medecin;

import java.util.Map;


import modele.Medecin;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.MedecinDao;

public class InscriptionConfirm extends ActionSupport implements SessionAware{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
Map<String,Object> session;
String code;
Cryptage c =new Cryptage();
public String getCode() {
return code;
}

public void setCode(String code) {
this.code = code;
}
 public String execute(){
	 MedecinDao medecinDao=new MedecinDao();
	 Medecin medecin=new Medecin();
	medecin= medecinDao.chercher(session.get("mail").toString(),session.get("password").toString());
		//medecin= medecinDao.chercher(session.get("mail").toString(),session.get("password").toString());

	 if(getCode().equals(medecin.getCode())){
		 medecin.setValide(true);
		 medecinDao.update(medecin);
		 return SUCCESS;	 
	 }
	 else 
	 return "ERROR";
 }




public Map<String, Object> getSession() {
	return session;
}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}

}
