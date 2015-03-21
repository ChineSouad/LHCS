package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import modele.Medecin;

public class MedecinDao {
	public boolean ajout( Medecin m){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(m);
	
		session.getTransaction().commit();
		session.close();
		return true;
		
	}
	
	
	 public boolean IsIDUnique(String id)
	    {
		 Session session=HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			 Query query = session.createQuery("SELECT COUNT( * ) FROM Medecin WHERE identifiantPersonnel='"+id+"'");
			 int i=query.executeUpdate();
			 return i==0;
	    }
	
	public Medecin chercherId(long id){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Medecin where id='"+id+"'");
	     Medecin med = (Medecin) query.uniqueResult();
		 session.close();
		 return med;
		
	}
	public void update( Medecin m){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.update(m);
	
		session.getTransaction().commit();
		session.close();
		
		
	}
	
	
	public Medecin chercher(String mail, String password){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Medecin where email='"+mail+"'and password='"+password+"'");
	     Medecin medecin = (Medecin)query.uniqueResult();
		 session.close();
		 return medecin;
	}
	
	
	public Medecin chercherEmail(String mail){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		 Query query = session.createQuery("from Medecin where email='"+mail+"'");
	     Medecin medecin = (Medecin)query.uniqueResult();
		 session.close();
		 return medecin;
	}
	
	
	public ArrayList<String> getFrameWork(String frameWork) {
        ArrayList<String> list = new ArrayList<String>();
       
        try {
        	Session session=HibernateUtil.getSessionFactory().openSession();
    		session.beginTransaction();

    		Query query=session.createQuery("Select nom FROM Medecin  WHERE nom  LIKE :n");
			query.setParameter("n",frameWork + "%");
    	    list = (ArrayList<String>) query.list();
    	   
    		 session.close();
                
        } catch (Exception e) {
                System.out.println(e.getMessage());
        }
        System.out.println(list.get(0));
        return list;
}

}
