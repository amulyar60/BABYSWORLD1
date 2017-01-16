<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>BABYSWORLD</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
<nav class="navbar navbar-inverse w3-pale-red">
<div class="container-fluid">
    <div class="navbar-header">

        <nav class="navbar navbar-inverse navbar-static-top w3-pale-red">
            <div class="container">
                <div class="navbar-header w3-pale-red">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value="/" /> ">BABYSWORLD</a>
                </div>
                 <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="display:block">

    
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav w3-pale-red">
                        <li><a class="w3-hover-red" href="<c:url value="/" /> "><span class="glyphicon glyphicon-home"></span>Home</a></li>
                        <li><a class="w3-hover-lime" href="<c:url value="/product/productList/all" />"><span class="glyphicon glyphicon-folder-open"></span>Products</a></li>
                        
                        
                        <li><a class="w3-hover-purple"href="<c:url value="/about" />"><span class="glyphicon glyphicon-user"></span>About Us</a></li>
                    </ul>

  
                    <ul class="nav navbar-nav pull-right w3-pale-red">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a class="w3-hover-green"  href="<c:url value="/login/" />"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                        <li><a class="w3-hover-pink" href="<c:url value="/register" />">Sign-up</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
            </div>
        </nav>

    </div>
</div>
</nav>