package modele;

import java.util.Date;

public class Ordonnance {
	private long id;
	private Date date;
	private String maladie;
	private Medecin medecinResponsable;
	
	public Ordonnance(){
		
	}
	public Ordonnance(long id, Date date, String maladie,
			Medecin medecinResponsable) {
		super();
		this.id = id;
		this.date = date;
		this.maladie = maladie;
		this.medecinResponsable = medecinResponsable;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getMaladie() {
		return maladie;
	}
	public void setMaladie(String maladie) {
		this.maladie = maladie;
	}
	public Medecin getMedecinResponsable() {
		return medecinResponsable;
	}
	public void setMedecinResponsable(Medecin medecinResponsable) {
		this.medecinResponsable = medecinResponsable;
	}
	
	

}
