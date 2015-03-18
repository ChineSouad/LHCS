package dao;


import java.util.List;

import modele.Patient;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;

public class PatientDao {
	
	public boolean ajout(Patient p){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(p);
	
		session.getTransaction().commit();
		session.close();
		return true;
		
	}
	
	public Patient chercher(String mail, String password){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Patient where email='"+mail+"'and password='"+password+"'");
	     Patient patient = (Patient)query.uniqueResult();
		 session.close();
		 return patient;
	}
	
	public Patient chercherById(long id){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Patient where id='"+id+"'");
	     Patient patient = (Patient)query.uniqueResult();
		 session.close();
		 return patient;
	}
	
	public void update(Patient p){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.update(p);
	
		session.getTransaction().commit();
		session.close();
		
		
	}
	 public List<Patient> listePatients()
		{
		 Session session=HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();

				Query query=session.createQuery("from modele.Patient");
				
			    List <Patient>patients=query.list();
			    session.close();
			    return patients;
		}

}
