<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="net.proto.stg.bean.StagiaireBean"%>
<%@page import="java.util.List"%>
<%@page import="net.proto.servlet.ServiceManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page de Massi</title>

<script src="js/jquery-1.12.4.js"></script>
<!-- -------------------****************integrer un tableau*******************************-------- -->
<link rel="stylesheet" type="text/css"	href="css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8" src="js/jquery.dataTables.min.js"></script>
<!-- -------------------****************integrer des bouton*******************************-------- -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="css/jquery-ui/plus.css">
<script type="text/javascript" charset="utf8" src="js/jquery-ui.min.js"></script>




<script type="text/javascript">
	$(document).ready(function() {
		$('#table_id').DataTable();
	});

	$(function() {
		$(".widget input[type=submit], .widget a, .widget button").button();
		
		$("button, input").click(function(event) {
			alert("Attention Massi Agoune");
			event.preventDefault();
		});
	});
</script>

</head>

<body>

	<a href="http://localhost:12638/proto-jsp1/ajoutStagiaire.jsp">Ajouter un nouveau stagiaire</a>
	<h1>Bonjour et bienvenue</h1>

	<p>
		Bienvenue sur la page d'accueil de mon Premier Projet web<br />
	</p>



	<div class="morph">
		<div>
			<div>
				<img
					src="https://i.pinimg.com/originals/87/3c/8b/873c8bf723776ba47e4156c30a8d9ed9.jpg" />
			</div>
		</div>
	</div>
	</br>

	<select>
		<option value="1">Menu</option>
		<option value="2">Ab</option>
		<option value="3">Ac</option>
		<option value="4">Ad</option>
		<option value="5">Ae</option>
		<option value="1">Af</option>
	</select>

	<ul>
		<li>nouveaux</li>
		<li>selectionner</li>
		<li>telecharger</li>
		<li>supprimer</li>

	</ul>

	<div id="moi">
		<fieldset>
			<legend>
				<ins>Information Client</ins>
			</legend>
			<div>
				<label for="nom">Identifiant :</label> <span class="requis">*</span>
				<input type="text" name="identifiant" required />
			</div>

			<div>
				<label for="motdepasse">Mot de Passe :</label> <span class="requis">*</span>
				<input type="password" name="Mot de Passe" required />
			</div>
		</fieldset>

		<div class="button">
			<input class="ui-button ui-widget ui-corner-all" type="submit"
				value="Connexion"> <input type="reset" value="Annuler">
		</div>
	</div>

	
	</br>

	<a href="http:\\www.google.com" class="lien">cliquer sur le lien suivant</a>
		
		 </br>
		
	
	<div class="widget">
		<h1>vive les vacances</h1>
		<button>select</button>

		<input type="submit" value="delete"> <a href="#">cliqué
			sur le lien</a></br>
	</div>
	<%
		out.println(ServiceManager.test() + "</br>");
		// out.println(ServiceManager.afficherUnStg("M03"+"</br>"));

		// 	    List<StagiaireBean> listStg =ServiceManager.getListDeStg();
		// 	    out.println(listStg+"</br>");
		// 		out.println("<div style=width:1000px; border:2px solid black ;padding:3px>");
		out.println("<table id = table_id  class = display>");
		out.println("<caption>" + "Tableau des Stagiaires" + "</caption>");
		out.println("<thead>");
		out.println("<tr>");
		out.println("<th>" + "Matricule" + "</th>");
		out.println("<th>" + "Nom" + "</th>");
		out.println("<th>" + "Prenom" + "</th>");
		out.println("<th>" + "age" + "</th>");
		out.println("<th>" + "Date De Naissance" + "</th>");
		out.println("<th>" + "Type De Formation" + "</th>");
		out.println("<th>" + "Genre" + "</th>");
		out.println("</tr>");
		out.println("</thead>");
		List<StagiaireBean> tl = ServiceManager.getListDeStg();

		out.println("<tbody>");
		for (int i = 0; i < tl.size(); i++) {
			//out.println(tl.get(i)+"</br>");

			out.println("<tr>");
			out.println("<td>" + tl.get(i).getMatricule() + "</td>");
			out.println("<td>" + tl.get(i).getNom() + "</td>");
			out.println("<td>" + tl.get(i).getPrenom() + "</td>");
			out.println("<td>" + tl.get(i).getAge() + "</td>");
			out.println("<td>" + tl.get(i).getDateDeNaissance() + "</td>");
			out.println("<td>" + tl.get(i).getTypeDeFormation() + "</td>");
			out.println("<td>" + tl.get(i).isGenre() + "</td>");
			out.println("</tr>");

		}
		out.println("</tbody>");
		out.println("</table>");
		// 		out.println("</div>");

		System.out.println("vous êtes bien dans un programme Java");
	%></br>
	

</body>
</html>