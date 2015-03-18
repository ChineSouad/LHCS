package modele;

import java.util.Date;

public class OrdonnanceDetail {
	private long id;
	private Date date;
	private String maladie;
	private String medecinResponsable;
	public OrdonnanceDetail(long id, Date date, String maladie,
			String medecinResponsable) {
		super();
		this.id = id;
		this.date = date;
		this.maladie = maladie;
		this.medecinResponsable = medecinResponsable;
	}
	
	public OrdonnanceDetail(){
		
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
	public String getMedecinResponsable() {
		return medecinResponsable;
	}
	public void setMedecinResponsable(String medecinResponsable) {
		this.medecinResponsable = medecinResponsable;
	}
	
	

}
