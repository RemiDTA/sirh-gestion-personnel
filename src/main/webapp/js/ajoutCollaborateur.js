
$(document).ready(function(){
    var $form = $('#ajout');
	
	$(".btn-secondary").on('click' ,function() { $(".boiboite").css('visibility','hidden');

	});

    $form.on('submit', function(e) {
        e.preventDefault();
      var nom = $('#nom');
      var prenom = $('#prenom');
      var date = $('#naissance');
      var addresse = $('#addresse');
      var ville = $('#ville');
      var invi = $("#boiboite");
	  var SS = $("#numSS");

      if (nom.val()=="")
      {
          nom.attr("class","form-control is-invalid");
      }
        else
        {
            nom.attr("class","form-control is-valid");
        }
      if (prenom.val()=="")
      {
        prenom.attr("class","form-control is-invalid");
      }
      else
      {
        prenom.attr("class","form-control is-valid");
      }
      if (date.val()=="")
      {
        date.attr("class","form-control is-invalid");
      }
      else
      {
        date.attr("class","form-control is-valid");
      }
      if (addresse.val()=="")
      {
        addresse.attr("class","form-control is-invalid");
      }
      else
      {
        addresse.attr("class","form-control is-valid");
      }
      if (ville.val()=="")
      {
        ville.attr("class","form-control is-invalid");
      }
      else
      {
        ville.attr("class","form-control is-valid");
      }
	  if (SS.val()=="")
      {
        SS.attr("class","form-control is-invalid");
      }
      else
      {
        SS.attr("class","form-control is-valid");
      }
		//si tous les champs ont été rempli
      if(nom.val!="" && prenom.val()!="" && date.val()!="" && addresse.val()!="" && ville.val()!="" && SS.val()!="")
      {
        $(".boiboite").css('visibility','visible');
		document.getElementById('spanNom').innerHTML=document.forms["ajout"].elements["nom"].value;
		document.getElementById('spanPrenom').innerHTML=document.forms["ajout"].elements["prenom"].value;
		document.getElementById('spanAddresse').innerHTML=document.forms["ajout"].elements["addresse"].value + ", " + document.forms["ajout"].elements["ville"].value;
		document.getElementById('spanSS').innerHTML=document.forms["ajout"].elements["numSS"].value;
        }

    });
    $("#validation").on('click' ,function() {
    	document.forms[0].method="post";
    	document.forms[0].submit();
    })

});