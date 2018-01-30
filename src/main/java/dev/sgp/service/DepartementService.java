package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;


import dev.sgp.entite.Departement;


public class DepartementService {
	
	
	Departement depCompta = new Departement(0,"Comptabilité");
	Departement depRH = new Departement(1,"Ressources Humaines");
	Departement depInfo = new Departement(2,"Informatique");
	Departement depAdmin = new Departement(3,"Administratif");

	
	List<Departement>listeDepartement = new ArrayList<>();
	
	

	public List<Departement> listerDepartements() {
		return listeDepartement;
	}

	public void sauvegarderCollaborateur(Departement depart) {
		listeDepartement.add(depart);
	}
}