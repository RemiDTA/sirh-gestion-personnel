package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String mat = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		
		if (mat==null || titre==null || nom==null || prenom==null)
		{
			resp.sendError(400, "Il manque des paramètres !");
		}
		else {
			resp.getWriter().write("<h1>Edition de collaborateur</h1> <h4>Creation d’un collaborateur avec les informations suivantes :</h4> matricule " + mat+  " nom "+ nom + " prenom " + prenom + " titre " + titre);
		}
		
		
	}
}