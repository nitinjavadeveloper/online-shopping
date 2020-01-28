<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Online shopping ${title}</title>

<!--	
	bootstrap readable themes 
 -->
 <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body>

<%@ include file="./shared/navbar.jsp"%>

	<div class="container">
		
		<div class="row">
			
			<h2>About us</h2>
			<hr/>
			
			<p>This is the about page</p>
			
		</div>
	</div>
		<script src="${js}/jquery-1.10.2.js"></script>
	<script src="${js}/bootstrap.js"></script>
	
	<script src="${js}/myap.js" ></script>
	
</body>
</html>