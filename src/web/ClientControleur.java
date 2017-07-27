package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IClient;
import dao.IClientImpl;
import dao.IVol;
import dao.IVolImpl;
import entities.Client;

@WebServlet(name="cc", urlPatterns={ "/client" })
public class ClientControleur extends HttpServlet{
	private IClient cldao;
	private ListeClientsModele Lcl;
	private ListeVolsModele lv;
	private IVol vdao;
	
	@Override
	public void init() throws ServletException {
		cldao = new IClientImpl();
		Lcl = new ListeClientsModele();
		lv = new ListeVolsModele();
		vdao = new IVolImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null){
			if(action.equals("ajouter")){
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				String dateNaiss = request.getParameter("dateNaiss");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				Client cl = new Client(numeroPassport, nom, prenom, dateNaiss);
				cldao.ajouterClient(cl);
				request.setAttribute("cl", cl);
				request.getRequestDispatcher("ClientViews/confirmationClient.jsp").forward(request, response);
			}else if(action.equals("rechercher")){
				String motCle = request.getParameter("motCle");
				Lcl.setMotCle(motCle);
				Lcl.setClients(cldao.rechercheClient(motCle));
				request.setAttribute("Lcl", Lcl);
				request.getRequestDispatcher("ClientViews/client.jsp").forward(request, response);
			}else if(action.equals("supp")){
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				cldao.supprimerClient(numeroPassport);
				response.sendRedirect("client?motCle=&action=rechercher");
			}else if(action.equals("modif")){
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				Client cl = cldao.rechercherId(numeroPassport);
				request.setAttribute("cl", cl);
				request.getRequestDispatcher("ClientViews/editionClient.jsp").forward(request, response);
			}else if(action.equals("modifier")){
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				String dateNaiss = request.getParameter("dateNaiss");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				Client cl = new Client(numeroPassport, nom, prenom, dateNaiss);
				
				request.setAttribute("cl",cldao.modifierClient(cl) );
				request.getRequestDispatcher("ClientViews/confirmationClient.jsp").forward(request, response);
			}else if(action.equals("voir")){
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				request.setAttribute("cl",cldao.rechercherId(numeroPassport));
				lv.setListes(vdao.rechercheVol(""));
				request.setAttribute("lv", lv);
				request.getRequestDispatcher("ClientViews/clientDetails.jsp").forward(request, response);
			}
			
			
		}else{
			response.sendRedirect("client?motCle=&action=rechercher");
		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
