
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="net.proto.stg.bean.StagiaireBean"%>
<%@page import="net.proto.servlet.ServiceManager"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<!-- -------------------****************integrer un tableau*******************************-------- -->
<script src="js/jquery-1.12.4.js"></script>
<link rel="stylesheet" type="text/css"	href="css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8"	src="js/jquery.dataTables.min.js"></script>
<!-- -------------------****************integrer un accordion*******************************-------- -->
<link rel="stylesheet" type="text/css"	href="css/accordion.css">
<script type="text/javascript" charset="utf8" src="js/accordion.js"></script>

<script type="text/javascript">
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


		<%
			// 1 - recueper le prenom de la requette (provenant de la jsp de recherche)
			String prenom = request.getParameter("param_prenom");

			// 2 - demander au Service manager de faire une recherche par Matricule (il doit retourner une liste de stagiaires)
			List<StagiaireBean> listPrenom = ServiceManager.rechercheParPrenom(prenom);

			// 3 - Restituer la liste des stagiaires dans la table jQuery
			out.println("<h3 align=\"center>\" Tableau des Stagiaires" + "</h3>");
			out.println("<table id =\"table_prenom\"  class = display>");
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
			for (int i = 0; i < listPrenom.size(); i++) {
				//out.println(tl.get(i)+"</br>");
				// 				String pm = listPrenom.get(i).getMatricule();
				// 				String pn = listPrenom.get(i).getNom();
				// 				Date pdt = listPrenom.get(i).getDateDeNaissance();
				out.println("<tr>");
				out.println("<td>" + listPrenom.get(i).getMatricule() + "</td>");
				out.println("<td>" + listPrenom.get(i).getNom() + "</td>");
				out.println("<td>" + listPrenom.get(i).getPrenom() + "</td>");
				out.println("<td>" + listPrenom.get(i).getAge() + "</td>");
				out.println("<td>" + listPrenom.get(i).getDateDeNaissance() + "</td>");
				out.println("<td>" + listPrenom.get(i).getTypeDeFormation() + "</td>");
				out.println("<td>" + listPrenom.get(i).isGenre() + "</td>");
				out.println("</tr>");

			}
			out.println("</tbody>");
			out.println("</table>");
		%>
		<br />
		<a href=recherchejsp.jsp><input type="submit" value="Recommencer"
	class="button" /></a>
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
  <h3>Stagiare par Date De Naissance</h3>
  <div>
		<%
			// 1 - recueper le la date de naissance de la requette (provenant de la jsp de recherche)
			String dateDeNaissance = request.getParameter("dateDeNaissance");

			System.out.println("date : " + dateDeNaissance);

			// 2 -formater la date de naissance
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date date = dateFormat.parse(dateDeNaissance);

			System.out.println(date);

			// 3 - demander au Service manager de faire une recherche par date de naissance (il doit retourner une liste de stagiaires)
			List<StagiaireBean> listDateDeNaissance = ServiceManager.rechercheParDate(date);
			
			// 4 - Restituer la liste des stagiaires dans la table jQuery
			out.println("<h3 align=\"center>\" Tableau des Stagiaires recherche pas Date" + "</h3>");
			out.println("<table id =\"table_date\"  class = display>");
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
			for (int i = 0; i < listDateDeNaissance.size(); i++) {
				out.println("<tr>");
				out.println("<td>" + listDateDeNaissance.get(i).getMatricule() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).getNom() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).getPrenom() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).getAge() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).getDateDeNaissance() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).getTypeDeFormation() + "</td>");
				out.println("<td>" + listDateDeNaissance.get(i).isGenre() + "</td>");
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