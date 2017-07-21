package dao;

import java.util.List;

import entities.Reservation;

public interface IReservation {
	public Reservation addReservation(Reservation r);
	public Reservation modifier(Reservation r);
	public void supprimer(long id);
	public Reservation rechercherId(long id);
	public List<Reservation> rechercher(String motCle);
	public List<Reservation> listeReservationClient(long passPort);
}
