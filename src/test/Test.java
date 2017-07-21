package test;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;












import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dao.IClient;
import dao.IClientImpl;
import dao.IReservation;
import dao.IReservationImpl;
import dao.IVol;
import dao.IVolImpl;
import entities.Client;
import entities.Reservation;
import entities.Vol;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//EntityManager em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
		//EntityTransaction et = em.getTransaction();
		//et.begin();
		
		/*IVol vdao = new IVolImpl(); 
		IClient cldao = new IClientImpl();
		Vol v = new Vol("df5151","dakar","maroc","22/06/2017","15:20","17:15",150000,30) ;
		Vol v1 = new Vol("d14151","dakar","paris","23/06/2017","15:20","11:05",154000,35) ;
		Client cl = new Client(123456, "diop", "amadou", "22/06/1995");
		Client cl1 = new Client(14578, "wele", "madicke", "12/03/1995");*/
		//cldao.ajouterClient(cl1);
		//cldao.ajouterClient(cl);
		//List<Client> cls = new ArrayList<Client>();
		/*cls.add(cl);
		
		v1.setPassagers(cls);
		vdao.modifierVol(v1);*/
		/*if(v1.getPassagers() != null){
		 cls =v1.getPassagers();
		}
		cls.add(cl1);
		v1.setPassagers(cls);
		*/
		//vdao.modifierVol(v);	
		
	/*	IReservation rdao = new IReservationImpl();
		Reservation r = new Reservation("espece", new Date(), 150000, cl, v);
		rdao.addReservation(r);*/
		//et.commit();
		
		/*Vol vol = vdao.chercherId("df5151");
		System.out.println(vol.toString());*/
		/*for (Client c : vol.getPassagers()) {
			System.out.println(c.toString());
		}
		*/
	
	}

}
