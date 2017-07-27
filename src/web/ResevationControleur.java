package web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import dao.IClient;
import dao.IClientImpl;
import dao.IReservation;
import dao.IReservationImpl;
import dao.IVol;
import dao.IVolImpl;
import entities.Reservation;
import entities.Vol;


@WebServlet(name="rc",urlPatterns={ "/reservation"})
public class ResevationControleur extends HttpServlet{ 
	private IReservation rdao;
	private ListeReservationModele lr;
	private IVol vdao;
	private IClient cldao;
	
	
	@Override
	public void init() throws ServletException {
		//rdao = new IReservationImpl();
		lr = new ListeReservationModele();
		//vdao = new IVolImpl();
		//cldao = new IClientImpl();
		ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext()); 
		vdao = ctx.getBean(IVol.class);
		cldao = ctx.getBean(IClient.class);
		rdao = ctx.getBean(IReservation.class);
		
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
				String codeVol = request.getParameter("vol");
				String typePaye = request.getParameter("typePaye");
				long numeroPassport = Long.parseLong(request.getParameter("numeroPassport"));
				Vol v =  vdao.chercherId(codeVol);
				Reservation r = new Reservation(typePaye, new Date(), v.getTarif(), 
						cldao.rechercherId(numeroPassport),v);
				request.setAttribute("r", rdao.addReservation(r));
				request.getRequestDispatcher("ReservationViews/reservationDetails.jsp").forward(request, response);
				
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
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
