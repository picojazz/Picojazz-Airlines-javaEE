package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entities.Client;
import entities.Reservation;
import entities.Vol;

public class IReservationImpl implements IReservation{
	EntityManager em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
	EntityTransaction et = em.getTransaction();
	

	@Override
	public Reservation addReservation(Reservation r) {
		et.begin();
		
		IVol vdao = new IVolImpl();
		Client cl = r.getClient();
		Vol v = r.getVol();
		List<Client> cls = new ArrayList<Client>();
		if (v.getPassagers() !=null) {
			cls = v.getPassagers();
		}
		cls.add(cl);
		v.setPassagers(cls);
		
		vdao.modifierVol(v);
		em.persist(r);
		et.commit();
		
		
		
		return r;
	}

	@Override
	public Reservation modifier(Reservation r) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void supprimer(long id) {
		et.begin();
		Reservation r = em.find(Reservation.class, id);
		em.remove(r);
		et.commit();
		
	}

	@Override
	public Reservation rechercherId(long id) {
		Reservation r = em.find(Reservation.class, id);
		return r;
	}

	@Override
	public List<Reservation> listeReservationClient(long passPort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Reservation> rechercher(String motCle) {
		Long mot;
		if(motCle.equalsIgnoreCase("")){
			Query req = em.createQuery("select r from Reservation r ");
			
			return req.getResultList();
		}else{
		 mot = Long.parseLong(motCle);
		 Query req = em.createQuery("select r from Reservation cl where r.id  = :x");
		req.setParameter("x", mot);
		return req.getResultList();
		
		}

	}
	
	
}
