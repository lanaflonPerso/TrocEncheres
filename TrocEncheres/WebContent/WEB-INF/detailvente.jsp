<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<title>Détail Vente</title>
	<meta charset="uft-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- lien vers feuille bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">	
	<!-- lien librarie jQuery et Javascript -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>

	<!-- Inclusion de la barre de navigation presnete dans fichier navbar.html -->
	<%@ include file="../pages/navbar.jsp" %>
	
		<!--  Debut div container -->
	<div class="container">
		<h2 class="text-center">Détail Vente</h2>
			
			
			
		
			<div class="row justify-content-md-center">
				
					<h5><span class="badge badge-primary"><c:out value="${requestScope.nomArticle }"/></span></h5>
	    		
	  		</div>
			<div class="row justify-content-center">
			
				<div class="col-sm-3">
					<p>Description : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.description }" />
	    		</div>
	  		</div>
	  		
			<div class="row justify-content-center">
				<div class="col-sm-3">
					<p>Meilleure offre : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.meilleureOffre }" />
	    		</div>
	  		</div>
  		
			<div class="row justify-content-center">
				<div class="col-sm-3">
					<p>Mise à prix : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.miseAPrix }" />
	    		</div>
	  		</div>
	  		
	  		<div class="row justify-content-center">
				<div class="col-sm-3">
					<p>Fin de l'enchère : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.finEnchere }" />
	    		</div>
	  		</div>
  		
	  		<div class="row justify-content-center">
				<div class="col-sm-3">
					<p>Retrait : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.retrait }" />

	    		</div>
	  		</div>
  		
	  		<div class="row justify-content-center">
				<div class="col-sm-3">
					<p>Vendeur : </p>
	    		</div>
				<div class="col-sm-3">
					<c:out value="${requestScope.vendeur }" />
	    		</div>
	  		</div>
  		
	  		<form method="post" action="<%= request.getContextPath() %>/enchere" class="row justify-content-center">
				<div class="col-sm-3">
					<p>Ma proposition : </p>
	    		</div>
				<div class="col-sm-3">
					<input type="number" class="form-control" name="proposition" value="${requestScope.proposition }" min="${requestScope.miseAPrix }">
					<input type="hidden" name="noVente" value="${requestScope.numeroVente }"/>
					<p></p><button type="submit" class="btn btn-primary">Enchérir</button>
					<a href="<%= request.getContextPath()%>/listeencheres"><button type="button" class="btn btn-secondary">Retour</button></a>
	    		</div>
	    		
	  		</form>
  		
  		
	</div>	
	<!--  Fin div container -->
</body>
</html>