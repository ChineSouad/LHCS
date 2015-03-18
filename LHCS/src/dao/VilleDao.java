package dao;

import java.util.List;

import modele.Ville;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;

public class VilleDao {
	
	public List<Ville> chercherName(String countryName){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Ville where pays='"+countryName+"'");
	    List <Ville> ville = query.list();
		 session.close();
		 return ville;
	}

}
