package entities;



import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
@Entity
public class Vol {
	@Id
	private String codeVol;
	private String villeDepart;
	private String villeArrivee;
	private String dateVol;
	private String heureDepart;
	private String heureArrivee;
	private float tarif;
	private int nbPassagers;
	@ManyToMany
	@JoinTable(name="volPassager",joinColumns={ @JoinColumn(name="idVol") },inverseJoinColumns={ @JoinColumn(name="idClient") })
	private List<Client> passagers;
	public Vol(String codeVol, String villeDepart, String villeArrivee,
			String dateVol, String heureDepart, String heureArrivee,
			float tarif, int nbPassagers) {
		super();
		this.codeVol = codeVol;
		this.villeDepart = villeDepart;
		this.villeArrivee = villeArrivee;
		this.dateVol = dateVol;
		this.heureDepart = heureDepart;
		this.heureArrivee = heureArrivee;
		this.tarif = tarif;
		this.nbPassagers = nbPassagers;
	}
	public Vol() {
		super();
	}
	public String getCodeVol() {
		return codeVol;
	}
	public void setCodeVol(String codeVol) {
		this.codeVol = codeVol;
	}
	public String getVilleDepart() {
		return villeDepart;
	}
	public void setVilleDepart(String villeDepart) {
		this.villeDepart = villeDepart;
	}
	public String getVilleArrivee() {
		return villeArrivee;
	}
	public void setVilleArrivee(String villeArrivee) {
		this.villeArrivee = villeArrivee;
	}
	public String getDateVol() {
		return dateVol;
	}
	public void setDateVol(String dateVol) {
		this.dateVol = dateVol;
	}
	public String getHeureDepart() {
		return heureDepart;
	}
	public void setHeureDepart(String heureDepart) {
		this.heureDepart = heureDepart;
	}
	public String getHeureArrivee() {
		return heureArrivee;
	}
	public void setHeureArrivee(String heureArrivee) {
		this.heureArrivee = heureArrivee;
	}
	public float getTarif() {
		return tarif;
	}
	public void setTarif(float tarif) {
		this.tarif = tarif;
	}
	public int getNbPassagers() {
		return nbPassagers;
	}
	public void setNbPassagers(int nbPassagers) {
		this.nbPassagers = nbPassagers;
	}
	
	public List<Client> getPassagers() {
		return passagers;
	}
	public void setPassagers(List<Client> passagers) {
		this.passagers = passagers;
	}
	@Override
	public String toString() {
		return "Vol [codeVol=" + codeVol + ", villeDepart=" + villeDepart
				+ ", villeArrivee=" + villeArrivee + ", dateVol=" + dateVol
				+ ", heureDepart=" + heureDepart + ", heureArrivee="
				+ heureArrivee + ", tarif=" + tarif + ", nbPassagers="
				+ nbPassagers + "]";
	}
	
	
}
