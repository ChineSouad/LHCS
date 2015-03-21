package action.patient;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import modele.Medecin;
import modele.Ordonnance;
import modele.OrdonnanceDetail;
import modele.Patient;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.MedecinDao;
import dao.OrdonnanceDao;
import dao.PatientDao;

public class ProfilePatient extends ActionSupport implements SessionAware{
	Patient patient=new Patient();
	Map <String,Object> session;
	String adresse;
	OrdonnanceDao ordonnanceDao = new OrdonnanceDao();
	
	List <Ordonnance> listeOrdonnances=new ArrayList<Ordonnance>();
	List <OrdonnanceDetail>listeOrdo=new ArrayList<OrdonnanceDetail>();
	MedecinDao medecinDao=new MedecinDao();
	Medecin medecin =new Medecin();
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
		 
		 listeOrdonnances =ordonnanceDao.listeOrdonnances();
			for (int i=0;i<listeOrdonnances.size();i++){
				medecin=medecinDao.chercherId((listeOrdonnances.get(i).getMedecinResponsable().getId()));
				OrdonnanceDetail ordonnanceD=new OrdonnanceDetail(listeOrdonnances.get(i).getId(),listeOrdonnances.get(i).getDate(),listeOrdonnances.get(i).getMaladie(),medecin.getNom()+" "+medecin.getPrenom());
				
				listeOrdo.add(ordonnanceD);
		 
		
	}
			return SUCCESS;}

	
	
	public List<OrdonnanceDetail> getListeOrdo() {
		return listeOrdo;
	}
	public void setListeOrdo(List<OrdonnanceDetail> listeOrdo) {
		this.listeOrdo = listeOrdo;
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
