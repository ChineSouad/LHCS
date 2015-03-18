package dao;


import modele.Tuteur;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;

public class TuteurDao {
	public boolean ajout( Tuteur t){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(t);
	
		session.getTransaction().commit();
		session.close();
		return true;
		
	}
	
	public Tuteur chercher(String nom, String prenom){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Tuteur where nom='"+nom+"'and prenom='"+prenom+"'");
	     Tuteur tuteur = (Tuteur)query.uniqueResult();
		 session.close();
		 return tuteur;
	}

}
