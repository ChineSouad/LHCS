package modele;

public class Ville {
	private long id;
	private String nom;
	private Pays pays;
	public Ville(String nom, Pays pays) {
		super();
	
		this.nom = nom;
		this.pays = pays;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Pays getPays() {
		return pays;
	}
	public void setPays(Pays pays) {
		this.pays = pays;
	}
	
	

}
