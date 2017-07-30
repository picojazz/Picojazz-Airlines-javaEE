package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entities.Client;
import entities.Vol;

public class IClientImpl implements IClient{
	EntityManager em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
	EntityTransaction et = em.getTransaction();

	@Override
	public Client ajouterClient(Client cl) {
		et.begin();
		em.persist(cl);
		et.commit();
		return null;
	}

	@Override
	public Client modifierClient(Client cl) {
		et.begin();
		em.merge(cl);
		et.commit();
		return cl;
	}

	@Override
	public Client rechercherId(long numeroPasseport) {
		
		Client cl = em.find(Client.class, numeroPasseport);
		Query q = this.em.createQuery("SELECT r FROM Reservation r join  r.client cl WHERE cl.numeroPassport = :id");
		q.setParameter("id", numeroPasseport);
		cl.setReservations(q.getResultList());
		return cl;
	}

	@Override
	public List<Client> rechercheClient(String motCle) {
		Long mot;
		if(motCle.equalsIgnoreCase("")){
			Query req = em.createQuery("select cl from Client cl ");
			
			return req.getResultList();
		}else{
		 mot = Long.parseLong(motCle);
		 Query req = em.createQuery("select cl from Client cl where cl.numeroPassport  = :x");
		req.setParameter("x", mot);
		return req.getResultList();
		}
		
	}

	@Override
	public void supprimerClient(long numeroPasseport) {
		et.begin();
		Client cl = em.find(Client.class, numeroPasseport);
		em.remove(cl);
		et.commit();
		
	}

	@Override
	public List<Vol> listeVolClient(long numeroPasseport) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vol> listeVols(long numeroPasseport) {
		
		return null;
	}
	public void init(){
		System.out.println("initialisation...................");
	}

}
