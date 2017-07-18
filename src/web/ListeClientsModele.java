package web;

import java.util.List;

import entities.Client;

public class ListeClientsModele {
	private String motCle;
	private List<Client> clients;
	public ListeClientsModele(String motCle, List<Client> clients) {
		super();
		this.motCle = motCle;
		this.clients = clients;
	}
	public ListeClientsModele() {
		super();
	}
	public String getMotCle() {
		return motCle;
	}
	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Client> getClients() {
		return clients;
	}
	public void setClients(List<Client> clients) {
		this.clients = clients;
	}
	
}
