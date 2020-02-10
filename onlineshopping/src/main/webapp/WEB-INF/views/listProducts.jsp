<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${css}/bootstrap.css" rel="stylesheet">
<!--	
	bootstrap readable themes 
 -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

<link href="${css}/myapp.css" rel="stylesheet">

</head>
<body>

	<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>

		</div>

		<!-- to display the actual products -->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryId = '';
						</script>
					
						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>


						</ol>
					</c:if>
					
					
					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
					
						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>


						</ol>
					</c:if>
					

				</div>


			</div>

			
			<div class="row">
			
				<div class="col-xs-12">
				
					
					<table id="productListTable" class="table table-striped table-borderd">
					
					
						<thead>
						
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							
							</tr>
						
						</thead>
					

						<tfoot>
						
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							
							</tr>
						
						</tfoot>
					</table>
				
				</div>
			
			</div>


		</div>



	</div>






</div>
</body>
</html>