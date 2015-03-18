package modele;

public class CodePostal {
	private long id;
	private long code;
private Localite localite;
public CodePostal(long code, Localite localite) {
	super();
	this.code = code;
	this.localite = localite;
}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getCode() {
	return code;
}
public void setCode(long code) {
	this.code = code;
}
public Localite getLocalite() {
	return localite;
}
public void setLocalite(Localite localite) {
	this.localite = localite;
}


}
