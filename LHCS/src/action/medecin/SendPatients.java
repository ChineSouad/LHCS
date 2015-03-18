package action.medecin;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import modele.Patient;
import dao.PatientDao;

public class SendPatients extends ActionSupport{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ArrayList<String> nomPatients=new ArrayList<>();
	public String execute(){
	PatientDao pdao=new PatientDao();
	List<Patient> patients=new ArrayList();
	patients=pdao.listePatients();

	//nomPatients.add("-- Patients --");
	for (int i=0;i<patients.size();i++){
	
		nomPatients.add(patients.get(i).getNom()+" "+patients.get(i).getPrenom());
		}
	
return SUCCESS;
}
	public ArrayList<String> getNomPatients() {
		return nomPatients;
	}
	public void setNomPatients(ArrayList<String> nomPatients) {
		this.nomPatients = nomPatients;
	}
	

}
