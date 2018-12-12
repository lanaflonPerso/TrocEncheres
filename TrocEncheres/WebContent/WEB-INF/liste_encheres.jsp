<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Liste encheres</title>
<meta charset="utf-8">
<!-- lien vers feuille bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!-- lien librarie jQuery et Javascript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<%@ include file="../pages/navbar.jsp" %>

	<h2 class="text-center">Liste des encheres</h2>
	<div class="container">
	<!-- /!\/!\ 
	Barre de recherche ne fonctionne pas correctement ! a remplacer !!! 
	/!\/!\ -->
		<input class="form-control" id="myInput" type="text" placeholder="Search..">
		<form method="POST" action="<%= request.getContextPath() %>/listeencheres" class="form-group" >
			<div class="row justify-content-center">
				<!-- Checkboxes de filtre -->
				<div class="row-sm">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" value="mesVentes" id="customCheck1" name="mesenchere">
						<label class="custom-control-label" for="customCheck1"> Mes ventes</label>
					</div>			
								
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" value="" id="customCheck2" name="enchere">
						<label class="custom-control-label" for="customCheck2"> Mes enchères en cours</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" value="" id="customCheck3" name="achat">
						<label class="custom-control-label" for="defaultCheck3"> Mes acquisitions</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" value="" id="customCheck4" name="autre">
						<label class="custom-control-label" for="customCheck4"> Autres enchères</label>
					</div>
					<button type="submit" class="btn btn-success">Filtrer</button>
				</div>
			</div>
			
		</form>
		
			<c:forEach var="vente" items="${requestScope.listVentes}">
			<div class="col sm" id="myDIV">
					
					<div class="row justify-content-around">
						<div class="border rounded border-primary col-6">
							<img name="img.png" src="img.png" class="img-fluid" alt="imageArticle">
							<div class="col">
							
								<p>Article : <a href="<%= request.getContextPath() %>/enchere" class="badge badge-primary">${vente.getNomArticle() }</a><br>
								Description : ${vente.getDescription() }<br>
								Prix : ${vente.getMiseAPrix() }<br>
								Fin de l'enchère : ${vente.getDateFinEncheres()}<br>
								Retrait : <br>
								Vendeur : </p>

							
							
							</div>
						</div>
						
				<!-- </span> -->
				</div>
				
			</div>
			</c:forEach>
			
			<!-- javascript permetant la recherche -->
			<script>
			$(document).ready(function(){
			  $("#myInput").on("keyup", function() {
			    var value = $(this).val().toLowerCase();
			    $("#myDIV *").filter(function() {
			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			    });
			  });
			});
			</script>
	</div>
	<!-- Fin div container -->
</body>
</html>