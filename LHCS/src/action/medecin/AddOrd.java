package action.medecin;

import java.util.Date;

import modele.Medecin;
import modele.Ordonnance;

import org.hibernate.Session;

import dao.MedecinDao;
import dao.OrdonnanceDao;
import util.HibernateUtil;

public class AddOrd {
	public static void main(String []args){
	Medecin medecin = new Medecin(34,656576,8776,67687,65656,"","","","","","","","","","","","d", false,false,new Date());
	MedecinDao med=new MedecinDao();
	med.ajout(medecin);
	Ordonnance ord=new Ordonnance(3,new Date(),"ppp",medecin);
	OrdonnanceDao ordonnanceDao = new OrdonnanceDao();
	ordonnanceDao.ajout(ord); 
	
	
		
		}
	}