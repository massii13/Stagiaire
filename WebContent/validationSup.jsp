<%@page import="net.proto.stg.bean.StagiaireBean"%>
<%@page import="net.proto.servlet.ServiceManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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


			String matricule = request.getParameter("matricule");
            boolean stg = ServiceManager.supprimerStagiaire(matricule);
            out.println("vient d'etre supprimé avec succes : "+stg);
			
			
			%>
</body>
</html>