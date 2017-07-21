package entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Reservation {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	private String typePaye;
	private Date dateReservation;
	private int montant;
	@ManyToOne
	@JoinColumn(name="idClient")
	private Client client;
	@ManyToOne
	@JoinColumn(name="idVol")
	private Vol vol;
	public Reservation(String typePaye, Date dateReservation, int montant,
			Client client, Vol vol) {
		super();
		this.typePaye = typePaye;
		this.dateReservation = dateReservation;
		this.montant = montant;
		this.client = client;
		this.vol = vol;
	}
	public Reservation() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTypePaye() {
		return typePaye;
	}
	public void setTypePaye(String typePaye) {
		this.typePaye = typePaye;
	}
	public Date getDateReservation() {
		return dateReservation;
	}
	public void setDateReservation(Date dateReservation) {
		this.dateReservation = dateReservation;
	}
	public int getMontant() {
		return montant;
	}
	public void setMontant(int montant) {
		this.montant = montant;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public Vol getVol() {
		return vol;
	}
	public void setVol(Vol vol) {
		this.vol = vol;
	}
	
	
	

}
