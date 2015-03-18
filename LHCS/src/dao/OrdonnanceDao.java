package dao;

import java.util.Date;
import java.util.List;

import modele.Medecin;
import modele.Ordonnance;



import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;

public class OrdonnanceDao {
	
	public  boolean ajout( Ordonnance o){
		Session session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(o);
	
		session.getTransaction().commit();
		session.close();
		return true;
}
	
	
	 public List<Ordonnance> listeOrdonnances()
		{
		 Session session=HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();

				Query query=session.createQuery("from modele.Ordonnance");
				
			    List <Ordonnance>ordonnances=query.list();
			    session.close();
			    return ordonnances;
		}
	

}
