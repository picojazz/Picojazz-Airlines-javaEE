package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Client rechercherId(long numeroPasseport) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Client> rechercheClient(String motCle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void supprimerClient(long numeroPasseport) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Vol> listeVolClient(long numeroPasseport) {
		// TODO Auto-generated method stub
		return null;
	}

}
