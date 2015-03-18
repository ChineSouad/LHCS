package modele;

public class Delegation {
	private long id;
	private String nom;
	private Ville ville;
	public Delegation(String nom, Ville ville) {
		super();
		
		this.nom = nom;
		this.ville = ville;
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
	public Ville getVille() {
		return ville;
	}
	public void setVille(Ville ville) {
		this.ville = ville;
	}
	
	

}
