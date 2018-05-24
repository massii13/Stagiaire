
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- -------------------****************integrer un .....*******************************-------- -->
<link rel="stylesheet" href="css/style.css">

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>
<body>

	<fieldset>
		<legend>
			<ins>Formulaire</ins>
		</legend>

		<FORM action="validation.jsp" method="post">
			<div>
				<label for="matricule">Matricule :</label> <span class="requis">*</span>
				<input type="text" name="matricule" required />
			</div>

			<div>
				<label for="nom">Nom :</label> <span class="requis">*</span> <input
					type="text" name="param_nom" required />
			</div>

			<div>
				<label for="Prenom">Prenom :</label> <span class="requis">*</span> <input
					type="text" name="param_prenom" required />
			</div>

			<div>
				<label for="age">Age :</label> <span class="requis">*</span> <input
					type="text" name="age" required />
			</div>

			<div>
				<label for="date">Date De Naissance :</label> <span class="requis">*</span>
				<input type="text" name="dateDeNaissance" id="datepicker" />
			</div>

			<div>
				<label for="type de formation">Type De Formation :</label> <span
					class="requis">*</span> <input type="text" name="type_de_formation" />
			</div>

			<div>
				<label for="genre">Genre :</label> <span class="requis">*</span>
				Homme : <INPUT type=radio name="genre" value="M"> 
				Femme : <INPUT type=radio name="genre" value="F">
			</div>



			<div class="button">
				<input class="ui-button ui-widget ui-corner-all" type="submit"
					value="Ajouter">
		</FORM>
	</fieldset>







</body>
</html>