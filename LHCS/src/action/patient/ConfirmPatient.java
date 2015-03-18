package action.patient;

import java.util.Map;






import modele.Medecin;
import modele.Patient;

import org.apache.struts2.interceptor.SessionAware;

import action.medecin.Cryptage;

import com.opensymphony.xwork2.ActionSupport;

import dao.MedecinDao;
import dao.PatientDao;

public class ConfirmPatient extends ActionSupport implements SessionAware{
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
	PatientDao patientDao=new PatientDao();
	 Patient patient=new Patient();
	patient= patientDao.chercher(session.get("mail").toString(),session.get("password").toString());
		
System.out.println("//////"+ patient.getAdresse());
	 if(getCode().equals(patient.getCode())){
		 patient.setValide(true);
		 patientDao.update(patient);
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
