<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.service.DepartementService "%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Collaborateurs</title>
</head>
<body class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Log</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="<%=request.getContextPath()%>/lister">Collaborateurs
						<span class="sr-only">cc</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Statistiques</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Activités</a>
				</li>
			</ul>
		</div>
	</nav>
	<br />
	<%
		List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeNoms");
		for (Collaborateur col : listeNoms) {
	%>
	<li><%=col.getPrenom() %></li>
	<li><%=col.getEmailPro()%></li><br />
	
	<%
		}
	%>

	<div class="row">
		<div class="col align-self-start"></div>
		<div class="col align-self-center"></div>
		<div class="col align-self-end">
			<a href="<%=request.getContextPath()%>/views/collab/ajoutCollaborateur.jsp">
				<button type="button" class="btn btn-light">Ajouter un
					nouveau collaborateur</button>
			</a>
		</div>
	</div>

	<h1>Les Collaborateurs</h1>

	<form>
		<div class="form-row">
			<div class="form-group col-12 col-md-4">
				<label>Rechercher un nom ou prenom qui commence par</label>
			</div>
			<div class="form-group col-12 col-md-6">
				<input type="text" id="inlineFormInputName2" placeholder="prenom">
				<button type="submit" class="btn btn-primary my-1">Rechercher</button>
			</div>

			<div class="form-group col-12 col-md-2">
				<input class="form-check-input" type="checkbox" id="inlineFormCheck">
				<label class="form-check-label" for="inlineFormCheck"> Voir
					les collaborateurs désactivés. </label>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-4">
				<label class="mr-sm-2" for="inlineFormCustomSelect">Filtrer
					par departement</label>
			</div>

	
	

			<div class="form-group col-3">
				<select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
							<%
			DepartementService dptServ = new DepartementService();
			List<Departement> listDpt = dptServ.listerDepartements();
			for (Departement dpt : dptServ.listerDepartements()) {
	%>
					
					<option value=<%=dpt.getId()%>><%=dpt.getNom()%></option>
					<%
		}
	%>
				</select>
			</div>
		</div>

	</form>
	</div>


	<div class="card-columns">
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>

		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>

		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>

		<div class="card">
			<img class="card-img-top"
				src="https://cdnfr1.img.sputniknews.com/images/102884/15/1028841504.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Nom Prenom</h5>
				<h6 class="card-subtitle mb-2 text-muted">fonction</h6>
				<p class="card-text">
					Département : 60<br /> Email : salut@coucou.fr <br /> Telephone :
					0601020304
				</p>
				<a href="#" class="btn btn-primary">Editer</a>

			</div>
		</div>
	</div>


</body>
</html>