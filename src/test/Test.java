package test;


import java.util.List;





import dao.IClient;
import dao.IClientImpl;
import dao.IVol;
import dao.IVolImpl;
import entities.Client;
import entities.Vol;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		IVol vdao = new IVolImpl(); 
		Vol v = new Vol("df5151","dakar","maroc","22/06/2017","15:20","17:15",150000,30) ;
		Vol v1 = new Vol("d14151","dakar","paris","23/06/2017","15:20","11:05",154000,35) ;
		Client cl = new Client(123456, "diop", "amadou", "22/06/1995");
		IClient cldao = new IClientImpl();
		cldao.ajouterClient(cl);
		//v.getPassagers().add(cl);
		vdao.ajouterVol(v);
		/*vdao.ajouterVol(v1);
		vdao.modifierVol(new Vol("d14151","bamako","paris","23/06/2017","15:20","11:05",154000,305));
		vdao.supprimerVol(v.getCodeVol());
		List<Vol> lvol = vdao.rechercheVol("");
		
		
		for (Vol vol : lvol) {
			System.out.println(vol.toString());
		}*/
		
		
	}

}
