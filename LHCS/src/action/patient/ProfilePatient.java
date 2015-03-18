package action.patient;

import java.util.Map;

import modele.Patient;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.PatientDao;

public class ProfilePatient extends ActionSupport implements SessionAware{
	Patient patient=new Patient();
	Map <String,Object> session;
	String adresse;
	public String execute(){
		PatientDao patientDao=new PatientDao();
		patient=patientDao.chercherById(Long.parseLong(session.get("id").toString()));
		
		 session.put("adresse", patient.getAdresse());
		 session.put("mobile", patient.getTelephonePortable());
		 session.put("fixe", patient.getTelephoneFixe());
		 session.put("dateNaissance", patient.getDateNaissance());
		 session.put("lieuNaissance", patient.getLieuNaissance());
	
		// session.put("tuteur", tuteur);
		 session.put("lienTuteur", patient.getLienFamilialTuteur());
		 
		return SUCCESS;
	}

	
	

	public String getAdresse() {
		return adresse;
	}




	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}




	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	public Map<String, Object> getSession() {
		return session;
	}
	
	
	

}
