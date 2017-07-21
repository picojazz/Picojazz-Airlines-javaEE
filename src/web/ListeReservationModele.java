package web;

import java.util.List;

import entities.Reservation;

public class ListeReservationModele {
	private String motCle;
	private List<Reservation> reservations;
	public ListeReservationModele(String motCle, List<Reservation> reservations) {
		super();
		this.motCle = motCle;
		this.reservations = reservations;
	}
	public ListeReservationModele() {
		super();
	}
	public String getMotCle() {
		return motCle;
	}
	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Reservation> getReservations() {
		return reservations;
	}
	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}
	
}
