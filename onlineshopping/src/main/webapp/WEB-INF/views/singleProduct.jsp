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
			
			<div class="col-xs-12">
				<ol class="breadcrumb">
				
				<li><a href="${contextRoot}/home">Home</a></li>
				
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				
				
					
				</ol>
			</div>
			
		</div>
		
		<div class="row">
			
				<!-- Display the product image -->
			
				<div class="col-xs-12 col-sm-4">
		
			<div class="thumbnail">
							
				<img src="${images}/${product.code}.jpg" class="img img-responsive"/>
						
			</div>
		
		</div>
	
		
		
		<!-- Display the product description -->
		
		<div class="col-xs-12 col-sm-8">
					
						<h3>${product.name}</h3>
						<hr />
						<p>${product.description}</p>
						<hr />
						
						<h4>Price: <strong> &#8377;${product.unitPrice} /-</strong></h4>
						<hr />
						
						<h6>Qty. Avaible:${product.quantity}</h6>
					
					<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
						<span class="glyphicon glyphicon-shopping-cart">Add to cart</span>
					</a>
					
					
					<a href="${contextRoot}/show/all/products" class="btn btn-primary">
						Back
					</a>
				</div>
			
		</div>
		
	</div>
</body>
</html>