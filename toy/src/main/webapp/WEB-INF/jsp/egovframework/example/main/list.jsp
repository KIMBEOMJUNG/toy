<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE HTML>
<!--
	Ex Machina by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>토이플러스</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="../main/js/skel.min.js"></script>
		<script src="../main/js/skel-panels.min.js"></script>
		<script src="../main/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="../main/css/skel-noscript.css" />
			<link rel="stylesheet" href="../main/css/style.css" />
			<link rel="stylesheet" href="../main/css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
		
		<script>
	        function fn_egov_link_page(pageNo){
	        	document.listForm.pageIndex.value = pageNo;
	        	document.listForm.action = "<c:url value='/main/list.do'/>";
	           	document.listForm.submit();
	        }
</script>
		
		
	</head>
	<body class="left-sidebar">

	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
						<h1><a href="#">토이플러스</a></h1>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li ><a href="/toy/main/main.do">홈</a></li>
							<li class="active"><a href="/toy/main/list.do">카테고리</a></li>
							<li><a href="right-sidebar.html">커뮤니티</a></li>
							<li><a href="no-sidebar.html">문의</a></li>
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
		
	<!-- Banner -->
		<div id="banner">
			<div class="container">
			</div>
		</div>
	<!-- /Banner -->

	<!-- Main -->
		
	<!-- /Main -->

	<!-- Featured -->
		<div id="featured">
			<div class="container">
				<div class="row">
					
					
					<c:forEach var="result" items="${resultList2}">
					<section class="4u">
						<div class="box" >
							<a href="#" class="image left"><img src="${result.image}" alt=""></a>
							<h3>${result.title}</h3>
							<p>Donec nonummy magna quis risus eleifend. </p>
							<a href="#" class="button">More</a>
						</div>
					</section>
					</c:forEach>
					
					
					
				</div>
				
				<ui:pagination paginationInfo="${paginationInfo }" type="image" jsFunction="fn_egov_link_page"/>
<form action="/toy/main/list.do" name="listForm" id="listForm">
	<input type="hidden" name="pageIndex" value="1"/>	
</form>
				<div class="divider"></div>
			</div>
		</div>
	<!-- /Featured -->

	<!-- Footer -->
		
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright" class="container">
			Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
		</div>


	</body>
	




	
	
</html>