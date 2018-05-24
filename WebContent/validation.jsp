<%@page import="net.proto.jdbc.db.DbManager"%>
<%@page import="net.proto.servlet.ServiceManager"%>
<%@page import="net.proto.stg.bean.StagiaireBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<%
		boolean masculin = true;
		boolean feminin = false;

		String matricule = request.getParameter("matricule");
		String nom = request.getParameter("param_nom");
		String prenom = request.getParameter("param_prenom");

		String age1 = request.getParameter("age");
		int age = Integer.parseInt(age1);

		String dateDeNaissance = request.getParameter("dateDeNaissance");
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = dateFormat.parse(dateDeNaissance);

		String typeFormation = request.getParameter("type_de_formation");
		int typeDeFormation = Integer.parseInt(typeFormation);

		String bgenre = request.getParameter("genre");
		boolean genre = Boolean.valueOf(bgenre).booleanValue();

		StagiaireBean newStagiaire = new StagiaireBean(matricule, nom, prenom, age, date, typeDeFormation, genre);

		// verifier si le stagiaire existe
		if( ServiceManager.verifierSiLeStgExiste(matricule)){
		// 				si oui ===> afficher message à l'utilisateur final
			out.println("le matricule : "+matricule+" existe deja");
		// 				si non ===> ajouter le stagiaire dans la base de données
		}else{
			ServiceManager.ajouterNewStagiaire(newStagiaire);
			out.println("le stagiaire a bien été ajouter");
		}

		// 		   if (matricule.equals(matricule)){
		// 			   out.println("se matricule existe deja : "+matricule);
		// 		   }
		// 			out.println(matricule);
		// 			out.println(nom);
		// 			out.println(prenom);
		// 			out.println( age);
		// 			out.println( dateDeNaissance);
		// 			out.println(typeDeFormation);
		// 			out.println(genre);
	%>
</body>
</html>