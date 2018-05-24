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

		<FORM action="validationSup.jsp" method="post">
			<div>
				<label for="matricule">Matricule :</label> <span class="requis">*</span>
				<input type="text" name="matricule" required />
			</div>

	
				<input class="ui-button ui-widget ui-corner-all" type="submit"
					value="Suprimer">
	</fieldset>
			
</body>
</html>