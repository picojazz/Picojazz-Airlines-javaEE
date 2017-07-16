package entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
@Entity
public class Client {
	@Id
	private long numeroPassport;
	private String nom;
	private String prenom;
	private String dateNaiss;
	@ManyToMany(mappedBy="passagers")
	private List<Vol> vols;
	public Client(long numeroPassport, String nom, String prenom,
			String dateNaiss) {
		super();
		this.numeroPassport = numeroPassport;
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaiss = dateNaiss;
	}
	public Client() {
		super();
	}
	public long getNumeroPassport() {
		return numeroPassport;
	}
	public void setNumeroPassport(long numeroPassport) {
		this.numeroPassport = numeroPassport;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getDateNaiss() {
		return dateNaiss;
	}
	public void setDateNaiss(String dateNaiss) {
		this.dateNaiss = dateNaiss;
	}
	public List<Vol> getVols() {
		return vols;
	}
	public void setVols(List<Vol> vols) {
		this.vols = vols;
	}
	@Override
	public String toString() {
		return "Client [numeroPassport=" + numeroPassport + ", nom=" + nom
				+ ", prenom=" + prenom + ", dateNaiss=" + dateNaiss + ", vols="
				+ vols + "]";
	}
	

}
