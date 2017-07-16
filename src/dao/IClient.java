package dao;

import java.util.List;

import entities.Client;
import entities.Vol;



public interface IClient {
	public Client ajouterClient(Client cl);
	public Client modifierClient(Client cl);
	public Client rechercherId(long numeroPasseport);
	public List<Client> rechercheClient(String motCle);
	public void supprimerClient(long numeroPasseport);
	public List<Vol> listeVolClient(long numeroPasseport);
	

}
