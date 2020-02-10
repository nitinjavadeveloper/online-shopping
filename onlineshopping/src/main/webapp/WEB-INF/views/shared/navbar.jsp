<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--	
	bootstrap readable themes 
 -->
 <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

</head>
<body>
<!-- 
		Navigation Bar 
 -->  
 
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a  class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li id="about">
                    <a href="${contextRoot}/about">About</a>
                    </li>
                    <li id="contact">
                    <a href="${contextRoot}/contact">Contact</a>
                    </li>
                    <li id="listProducts">
                    <a href="${contextRoot}/show/all/products">View Product</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<script src="${js}/jquery-1.10.2.js"></script>
	<script src="${js}/bootstrap.js"></script>
	
	<script src="${js}/myapp.js" ></script>

</body>
</html>