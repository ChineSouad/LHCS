package action.medecin;

import java.util.Date;


import modele.Medecin;
import modele.Ordonnance;
import modele.Patient;
import modele.Tuteur;



import dao.MedecinDao;
import dao.OrdonnanceDao;


public class AddOrd {
	public static void main(String []args){
		Tuteur tuteur= new Tuteur(12,75698999,98787656,"","","","","","","",new Date());
	Medecin medecin = new Medecin(34,656576,8776,67687,65656,"","","","","","","","","","","","d","", false,false,new Date());
	Patient patient=new Patient(4,22,44,"","","","","","","","","","","","","","","","","","",67,new Date(),true,true,tuteur);
	MedecinDao med=new MedecinDao();
	
	med.ajout(medecin);
	Ordonnance ord=new Ordonnance(3,new Date(),"grippe",medecin,patient);
	OrdonnanceDao ordonnanceDao = new OrdonnanceDao();
	ordonnanceDao.ajout(ord); 
	
	
		
		}
	}