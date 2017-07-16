package web;

import java.util.List;

import entities.Vol;

public class ListeVolsModele {
	private String motCle;
	private List<Vol> listes;
	public ListeVolsModele(String motCle, List<Vol> listes) {
		super();
		this.motCle = motCle;
		this.listes = listes;
	}
	public ListeVolsModele() {
		super();
	}
	public String getMotCle() {
		return motCle;
	}
	public void setMotCle(String motCle) {
		this.motCle = motCle;
	}
	public List<Vol> getListes() {
		return listes;
	}
	public void setListes(List<Vol> listes) {
		this.listes = listes;
	}
	
	

}
