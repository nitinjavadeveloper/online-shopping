<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

</head>
<body>

<%@ include file="./shared/navbar.jsp"%>

<div class="container">
		
		<div class="row">
			
			<h2>Contact us</h2>
			<hr/>
			
			<p>This is the Contact page</p>
			
		</div>
	</div>
		<script src="${js}/jquery-1.10.2.js"></script>
	<script src="${js}/bootstrap.js"></script>
	
	<script src="${js}/myap.js" ></script>
	
</body>
</html>