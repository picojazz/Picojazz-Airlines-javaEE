package dao;



import java.util.List;

import entities.Client;
import entities.Vol;

public interface IVol {
	public Vol ajouterVol(Vol v);
	public List<Vol> rechercheVol(String motCle);
	public Vol modifierVol(Vol v);
	public void supprimerVol(String codeVol);
	public Vol chercherId(String codeVol);
	

}
