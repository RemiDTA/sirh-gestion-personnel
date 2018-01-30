package dev.sgp.web;

import java.io.IOException;
import java.time.ZonedDateTime;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class InsererCollaborateurController extends HttpServlet {
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	ResourceBundle bundle = ResourceBundle.getBundle("parametre");

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/collab/insererCollaborateur.jsp").forward(req, resp);

	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();

		String numSS = req.getParameter("numSS");
		if (numSS.length()!=15) {
			resp.sendError(400, "Le num SS a mal été rempli !");
		} else {
			String nom = req.getParameter("nom");
			String prenom = req.getParameter("prenom");
			String adresse = req.getParameter("ville") + ", " + req.getParameter("adresse");
			String mail = prenom + "." + nom + bundle.getString("suffixe");
			String matricule = Integer.toString(collaborateurs.size());

			Collaborateur col = new Collaborateur();
			col.setActif(true);
			col.setAdresse(adresse);
			col.setDateHeureCreation(ZonedDateTime.now());
			col.setEmailPro(mail);
			col.setMatricule(matricule);
			col.setNumeroSS(numSS);
			col.setNom(nom);
			col.setPrenom(prenom);
			col.setPhoto("https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg");
			collabService.sauvegarderCollaborateur(col);
			resp.sendRedirect("/sgp/lister");
			

		}
	}

}