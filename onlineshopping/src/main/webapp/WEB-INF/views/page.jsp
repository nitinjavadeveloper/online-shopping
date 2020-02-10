<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

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

<script type="text/javascript">
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- datatable  Bootstrap core CSS -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!--	
	bootstrap readable themes 
 -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<%@ include file="./shared/navbar.jsp"%>

		<!-- 
		page content
 -->

		<div class="content">
			<!-- 
	load only when user click home
 -->
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- 
	load only when user click about
 -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- 
	load only when user click contact
 -->
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp"%>
			</c:if>

			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>

<c:if
				test="${userClickShowProduct == true }">
				<%@include file="singleProduct.jsp"%>
			</c:if>


		</div>
		r

		<%@include file="./shared/footer.jsp"%>
		<!-- /.container -->

		<!-- JavaScript -->
		<script src="${js}/jquery-1.10.2.js"></script>
		<script src="${js}/bootstrap.js"></script>

		<!--  jquery datatable plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!--  jquery datatable bootstrap  plugin -->
		<script src="${js}/dataTables.bootstrap.js"></script>


		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
