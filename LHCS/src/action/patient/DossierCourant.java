package action.patient;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import modele.Medecin;
import modele.Ordonnance;
import modele.OrdonnanceDetail;
import dao.MedecinDao;
import dao.OrdonnanceDao;

public class DossierCourant extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	OrdonnanceDao ordonnanceDao = new OrdonnanceDao();
	
	List <Ordonnance> listeOrdonnances=new ArrayList<Ordonnance>();
	List <OrdonnanceDetail>listeOrdo=new ArrayList<OrdonnanceDetail>();
	MedecinDao medecinDao=new MedecinDao();
	Medecin medecin =new Medecin();
	public String execute(){
		listeOrdonnances =ordonnanceDao.listeOrdonnances();
		for (int i=0;i<listeOrdonnances.size();i++){
			medecin=medecinDao.chercherId((listeOrdonnances.get(i).getMedecinResponsable().getId()));
			OrdonnanceDetail ordonnanceD=new OrdonnanceDetail(listeOrdonnances.get(i).getId(),listeOrdonnances.get(i).getDate(),listeOrdonnances.get(i).getMaladie(),medecin.getNom()+" "+medecin.getPrenom());
			
			listeOrdo.add(ordonnanceD);
		}
	return SUCCESS;
	}
	public List<OrdonnanceDetail> getListeOrdo() {
		return listeOrdo;
	}
	public void setListeOrdo(List<OrdonnanceDetail> listeOrdo) {
		this.listeOrdo = listeOrdo;
	}
	
	
	
	

}
