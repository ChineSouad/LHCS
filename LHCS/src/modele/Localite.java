package modele;

public class Localite {
	private long id;
	private String nom;
private Delegation delegation;
public Localite(String nom, Delegation delegation) {
	super();
	this.nom = nom;
	this.delegation = delegation;
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
public Delegation getDelegation() {
	return delegation;
}
public void setDelegation(Delegation delegation) {
	this.delegation = delegation;
}


}
