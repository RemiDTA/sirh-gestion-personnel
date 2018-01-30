<%@ page language="java" pageEncoding="UTF-8"%>
<DOCTYPE html>
  <html lang="en">

  <head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css.css" />
    <script src="https://code.jquery.com/jquery-1.12.3.js"></script>
    <script src="<%=request.getContextPath()%>/js/ajoutCollaborateur.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ajouter un collaborateur</title>
  </head>

  <body class="container">
  
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Log</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
        aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="<%=request.getContextPath()%>/lister">Collaborateurs
              <span class="sr-only">cc</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Statistiques</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">ActivitÃ©s</a>
          </li>
        </ul>
      </div>
    </nav>
    <br />

    <form class="needs-validation" action="<%=request.getContextPath()%>/inserer" methode="post" id="ajout" novalidate name="ajout">
      <div class="form-row">
        <div class="col-md-4 mb-3">
          <label for="prenom">Prenom</label>
          <input type="text" class="form-control" id="prenom" placeholder="John" required name="prenom">
          <div class="invalid-tooltip">
            Entrez votre prenom.
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <label for="nom">Nom</label>
          <input type="text" class="form-control" id="nom" placeholder="Snow" required name="nom">
          <div class="invalid-tooltip">
            Entrez votre nom.
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <label for="naissance">Date de naissance</label>
          <div class="input-group">
            <input type="date" id="naissance" class="form-control" required name="naissance">

            <div class="invalid-tooltip">
              Entrez votre date de naissance.
            </div>
          </div>
        </div>
      </div>
      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="addresse">Addresse</label>
          <input type="text" class="form-control" id="addresse" placeholder="Addresse" required name="addresse">
          <div class="invalid-tooltip">
            Veuillez mettre une addresse.
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="validationTooltip04">Ville</label>
          <input type="text" class="form-control" id="ville" placeholder="Ville" required name="ville">
          <div class="invalid-tooltip">
            Veuillez mettre une ville.
          </div>
        </div>
		<div class="col-md-3 mb-3">
          <label for="validationTooltip05">NumÃ©ro de SS</label>
          <input type="number" class="form-control" id="numSS" placeholder="101010100001201" required name="numSS" min="0">
          <div class="invalid-tooltip">
            Veuillez mettre le numero de SS.
          </div>
        </div>
      </div>
      <br />
      <button class="btn btn-primary" type="submit">Ajouter</button>
    </form>

    <div class="boiboite">
      <div class="card">
        <div class="card-header">
          CrÃ©ation d'un collaborateur
        </div>

        <div class="card-body">
          <h5 class="card-title">Vous Ãªtes sur le point de crÃ©er un nouveau collaborateur :</h5>
          <div class="gauche">
            <p class="card-text">Nom :
              <br /> Prenom :
              <br /> Date de naissance :
              <br /> Addresse :
              <br /> NumÃ©ro de sÃ©curitÃ© sociale :
              <br />
            </p>
          </div>
          <div class="droite">
            <p class="card-text"><span id="spanNom">Nom</span>
              <br /> <span id="spanPrenom">Prenom</span>
              <br /> <span id="spanNaissance">Date de naissance</span>
              <br /> <span id="spanAddresse">Addresse</span>
              <br /> <span id="spanSS">NumÃ©ro de sÃ©curitÃ© sociale</span>
              <br />
          </div>
          </p>
        </div>
      </div>
      <a href="#" class="btn btn-primary" id="validation">ajouter</a>
      <a href="#" class="btn btn-secondary">annuler</a>
    </div>
    </div>

    </div>

  </body>

  </html>