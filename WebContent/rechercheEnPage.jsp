<%@page import="net.proto.stg.bean.StagiaireBean"%>
<%@page import="net.proto.servlet.ServiceManager"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- -------------------****************integrer un datepicker*******************************-------- -->
<script src="js/jquery-1.12.4.js"></script>
 
<link rel="stylesheet" type="text/css"	href="css/jquery-ui.css">
<script type="text/javascript" charset="utf8" src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/style.css">

<!-- -------------------****************integrer un tableau*******************************-------- -->
<link rel="stylesheet" type="text/css"	href="css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8"	src="js/jquery.dataTables.min.js"></script>
<!-- -------------------****************integrer un accordion*******************************-------- -->
<link rel="stylesheet" type="text/css"	href="css/accordion.css">
<script type="text/javascript" charset="utf8" src="js/accordion.js"></script>

<script>
  $( function() {
    $( "#datepicker" ).datepicker();
    });
  $(document).ready(function() {
		$('#table_prenom').DataTable();
	});
	$(document).ready(function() {
		$('#table_matricule').DataTable();
	});
	$(document).ready(function() {
		$('#table_date').DataTable();
	});
	 $( function() {
		    $( "#accordion" ).accordion();
		  } );
  </script>
</head>
<body>

<fieldset>
		<legend>
			<ins>Formulaire</ins>
		</legend>

		<FORM action="rechercheEnPage.jsp" method="post">
			<div>
				<label for="matricule">Matricule :</label> <span class="requis">*</span>
				<input type="text"  name="matricule" required />
			</div>

<!-- 			<div> -->
<!-- 				<label for="Prenom">Prenom :</label> <span class="requis">*</span>  -->
<!-- 				<input type="text" name="param_prenom" required /> -->
<!-- 			</div> -->

<!-- 			<div> -->
<!-- 				<label for="date">Date De Naissance :</label>  -->
<!-- 				<input type="text"  name="dateDeNaissance" id="datepicker"  /> -->
<!-- 			</div> -->
			

			<div class="button">
				<input class="ui-button ui-widget ui-corner-all" type="submit"
					value="Rechercher">
		</FORM>
	</fieldset>


<!-- ************************partie resulat******************************** -->
<div id="accordion">
  <h3>Stagiaire Par Prenom</h3>
  <div>
	<table id="table_id" class="display">
		<caption>Tableau des Stagiaires</caption>
		<thead>
			<tr>
				<th>Matricule</th>
				<th>Nom</th>
				<th>Prenom</th>
				<th>age</th>
				<th>Date De Naissance</th>
				<th>Type De Formation</th>
				<th>Genre</th>
			</tr>
		</thead>

</div>
  <h3>Stagiare Par matricule</h3>
  <div>
		<%
			// 1 - recueper le matricule de la requette (provenant de la jsp de recherche)
			String matricule = request.getParameter("matricule");

			// 2 - demander au Service manager de faire une recherche par Matricule (il doit retourner une liste de stagiaires)
			List<StagiaireBean> listMatricule = ServiceManager.rechercheParMatricule(matricule);

			// 3 - Restituer la liste des stagiaires dans la table jQuery
			out.println("<h3 align=\"center>\" Tableau des Stagiaires" + "</h3>");
			out.println("<table id =\"table_matricule\"  class = display>");
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
			out.println("<tbody>");
			for (int i = 0; i < listMatricule.size(); i++) {
				//out.println(tl.get(i)+"</br>");
				// 				String pm = listPrenom.get(i).getMatricule();
				// 				String pn = listPrenom.get(i).getNom();
				// 				Date pdt = listPrenom.get(i).getDateDeNaissance();
				out.println("<tr>");
				out.println("<td>" + listMatricule.get(i).getMatricule() + "</td>");
				out.println("<td>" + listMatricule.get(i).getNom() + "</td>");
				out.println("<td>" + listMatricule.get(i).getPrenom() + "</td>");
				out.println("<td>" + listMatricule.get(i).getAge() + "</td>");
				out.println("<td>" + listMatricule.get(i).getDateDeNaissance() + "</td>");
				out.println("<td>" + listMatricule.get(i).getTypeDeFormation() + "</td>");
				out.println("<td>" + listMatricule.get(i).isGenre() + "</td>");
				out.println("</tr>");

			}
			out.println("</tbody>");
			out.println("</table>");
		%>
		<br />
		<a href=recherchejsp.jsp><input type="submit" value="Recommencer"
	class="button" /></a>
</div>

</body>
</html>