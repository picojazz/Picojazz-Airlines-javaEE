package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IReservation;
import dao.IReservationImpl;
import entities.Reservation;
import entities.Vol;


@WebServlet(name="rc",urlPatterns={ "/reservation"})
public class ResevationControleur extends HttpServlet{
	private IReservation rdao;
	private ListeReservationModele lr;
	
	
	@Override
	public void init() throws ServletException {
		rdao = new IReservationImpl();
		lr = new ListeReservationModele();
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action =request.getParameter("action");
		if (action != null) {
			if(action.equals("rechercher")){
				String motCle = request.getParameter("motCle");
				lr.setMotCle(motCle);
				lr.setReservations(rdao.rechercher(motCle));
				request.setAttribute("lr", lr);
				request.getRequestDispatcher("ReservationViews/reservation.jsp").forward(request, response);
				
				
			}else if(action.equals("Ajouter")){
				
				
			}else if(action.equals("supp")){
				
			}else if(action.equals("modif")){
				
			}else if(action.equals("modifier")){
				
			}else if(action.equals("voir")){
				long id = Long.parseLong(request.getParameter("id"));
				Reservation r = rdao.rechercherId(id);
				request.setAttribute("r", r);
				request.getRequestDispatcher("ReservationViews/reservationDetails.jsp").forward(request, response);
				
			}
			
		}else{
		
			response.sendRedirect("reservation?motCle=&action=rechercher");
		}
		
	}

}
