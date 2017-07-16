package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entities.Vol;

public class IVolImpl implements IVol{
	EntityManager em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
	EntityTransaction et = em.getTransaction();

	@Override
	public Vol ajouterVol(Vol v) {
		et.begin();
		em.persist(v);
		et.commit();
		return v;
	}

	@Override
	public List<Vol> rechercheVol(String motCle) {
		Query req = em.createQuery("select v from Vol v where v.codeVol like :x");
		req.setParameter("x", "%"+motCle+"%");
		return req.getResultList();
	}

	@Override
	public Vol modifierVol(Vol v) {
		et.begin();
		em.merge(v);
		et.commit();
		return v;
	}

	@Override
	public void supprimerVol(String codeVol) {
		et.begin();
		Vol v = em.find(Vol.class, codeVol);
		em.remove(v);
		et.commit();
		
	}

}
