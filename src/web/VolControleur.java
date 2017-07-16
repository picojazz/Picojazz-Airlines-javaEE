package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IVol;
import dao.IVolImpl;
import entities.Vol;
@WebServlet(name="vc",urlPatterns={"/vol"})
public class VolControleur extends HttpServlet{
	private IVol volDao;
	private ListeVolsModele Lvol;
	@Override
	public void init() throws ServletException {
		volDao =new IVolImpl();
		Lvol = new ListeVolsModele();
	}
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action =request.getParameter("action");
		if (action != null) {
			if(action.equals("rechercher")){
				String motCle = request.getParameter("motCle");
				Lvol.setMotCle(motCle);
				Lvol.setListes(volDao.rechercheVol(motCle));
				request.setAttribute("Lvol", Lvol);
				request.getRequestDispatcher("vol.jsp").forward(request, response);
			}else if(action.equals("Ajouter")){
				String codeVol = request.getParameter("codeVol");
				String vDepart = request.getParameter("vdepart");
				String vArrivee = request.getParameter("vArrivee");
				String dateVol = request.getParameter("dateVol");
				String hDepart = request.getParameter("hDepart");
				String hArrivee = request.getParameter("hArrivee");
				float tarif = Float.parseFloat(request.getParameter("tarif"));
				int nbPassagers = Integer.parseInt(request.getParameter("nbPassagers"));
				Vol v = new Vol(codeVol,vDepart,vArrivee,dateVol,hDepart,hArrivee,tarif,nbPassagers);
				request.setAttribute("vol", volDao.ajouterVol(v));
				request.getRequestDispatcher("confirmationVol.jsp").forward(request, response);
				
			}else if(action.equals("supp")){
				String codeVol = request.getParameter("codeVol");
				volDao.supprimerVol(codeVol);
				response.sendRedirect("vol?motCle=&action=rechercher");
			}
			
		}else{
		
			response.sendRedirect("vol?motCle=&action=rechercher");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
