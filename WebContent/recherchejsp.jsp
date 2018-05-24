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

<script>
  $( function() {
    $( "#datepicker" ).datepicker();
    });
  
  </script>
</head>
<body>

	<fieldset>
		<legend>
			<ins>Formulaire</ins>
		</legend>

		<FORM action="resultat.jsp" method="post">
			<div>
				<label for="matricule">Matricule :</label> <span class="requis">*</span>
				<input type="text"  name="matricule" required />
			</div>

			<div>
				<label for="Prenom">Prenom :</label> <span class="requis">*</span> 
				<input type="text" name="param_prenom" required />
			</div>

			<div>
				<label for="date">Date De Naissance :</label> 
				<input type="text"  name="dateDeNaissance" id="datepicker"  />
			</div>
			

			<div class="button">
				<input class="ui-button ui-widget ui-corner-all" type="submit"
					value="Rechercher">
		</FORM>
	</fieldset>
</body>
</html>