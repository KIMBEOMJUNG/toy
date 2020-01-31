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
		<title>토이플러스  </title>
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
	</head>
	<body class="homepage">

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
							<li class="active"><a href="/toy/main/main.do">홈</a></li>
							<li><a href="/toy/main/list.do">카테고리</a></li>
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
		<div id="page">

			<!-- Extra -->
			<div id="marketing" class="container">
				<div class="row">
				<c:forEach var="result" items="${resultList}">
					<div class="3u">
						<section>
							<header>
								<h2>${result.idx}-${result.title}</h2>
							</header>
							<p class="subtitle">설 최저가 프라모델</p>
							<p><a href="#"><img src="../main/images/pics13.jpg" alt=""></a></p>
							<a href="#" class="button">More</a>
						</section>
					</div>
				</c:forEach>
				<c:forEach var="result" items="${resultList2}">
					<div class="3u">
						<section>
							<header>
								<h2>${result.title}</h2>
							</header>
							<p><a href="${result.link}"><img src="${result.image}" width="250" height="250" alt=""></a></p>
							<a href="#" class="button">More</a>
						</section>
					</div>
				</c:forEach>
					<div class="3u">
						<section>
							<header>
								<h2>카드</h2>
							</header>
							<p class="subtitle">역대 최다판매 인기 카드</p>
							<p><a href="#"><img src="../main/images/pics14.jpg" alt=""></a></p>
							<a href="#" class="button">More</a>
						</section>
					</div>
					<div class="3u">
						<section>
							<header>
								<h2>보드 게임</h2>
							</header>
							<p class="subtitle">누적 판매량 1위</p>
							<p><a href="#"><img src="images/pics15.jpg" alt=""></a></p>
							<a href="#" class="button">More</a>
						</section>
					</div>
					<div class="3u">
						<section>
							<header>
								<h2>게임기</h2>
							</header>
							<p class="subtitle">2020년 신제품 게임기</p>
							<p><a href="#"><img src="../main/images/pics16.jpg" alt=""></a></p>
							<a href="#" class="button">More</a>
						</section>
					</div>
				</div>
			</div>
			<!-- /Extra -->
				
			<!-- Main -->
			<div id="main" class="container">
				<div class="row">
					<div class="6u">
						<section>
							<header>
								<h2>신제품 모델 이슈</h2>
								<span class="byline"></span>
							</header>
							<p>동해물과백두산이 마르고 가나다라마바사 아자</p>
							<a href="#" class="button">More Details</a>
						</section>
					</div>
					<div class="3u">
						<section class="sidebar">
							<header>
								<h2>인기 리뷰</h2>
							</header>
							<ul class="style2">
								<li>
									<a href="#"><img src="../main/images/pics07.jpg" alt=""></a>
									<p>뽀로로 ebs 리뷰 새로운 </p>
								</li>
								<li>
									<a href="#"><img src="../main/images/pics08.jpg" alt=""></a>
									<p>펭수 유튜브 아이템</p>
								</li>
								<li>
									<a href="#"><img src="../main/images/pics09.jpg" alt=""></a>
									<p>또봇 zzz</p>
								</li>
								
								<li>
									<a href="#"><img src="../main/images/pics10.jpg" alt=""></a>
									<p>bb탄 장난담 리뷰 가나다라마바사 동해물과 백도산이 ㄴ아아</p>
								</li>
								
							</ul>						
						</section>
					</div>
					<div class="3u">
						<section class="sidebar">
							<header>
								<h2>최신 리뷰</h2>
							</header>
							<ul class="style2">
								<li>
									<a href="#"><img src="../main/images/pics07.jpg" alt=""></a>
									<p>뽀로로 ebs 리뷰 새로운 </p>
								</li>
								<li>
									<a href="#"><img src="../main/images/pics08.jpg" alt=""></a>
									<p>펭수 유튜브 아이템</p>
								</li>
								<li>
									<a href="#"><img src="../main/images/pics09.jpg" alt=""></a>
									<p>또봇 zzz</p>
								</li>
								
								<li>
									<a href="#"><img src="../main/images/pics10.jpg" alt=""></a>
									<p>bb탄 장난담 리뷰 가나다라마바사 동해물과 백도산이 ㄴ아아</p>
								</li>
								
							</ul>						
						</section>
					</div>
				</div>
			</div>
			<!-- Main -->

		</div>
	<!-- /Main -->

	<!-- Featured -->
		<div id="featured">
			<div class="container">
				<div class="row">
					<section class="4u">
						<div class="box">
							<a href="#" class="image left"><img src="../main/images/pics04.jpg" alt=""></a>
							<h3>Etiam posuere augue</h3>
							<p>Donec nonummy magna quis risus eleifend. </p>
							<a href="#" class="button">More</a>
						</div>
					</section>
					<section class="4u">
						<div class="box">
							<a href="#" class="image left"><img src="../main/images/pics05.jpg" alt=""></a>
							<h3>Etiam posuere augue</h3>
							<p>Donec nonummy magna quis risus eleifend. </p>
							<a href="#" class="button">More</a>
						</div>
					</section>
					<section class="4u">
						<div class="box">
							<a href="#" class="image left"><img src="../main/images/pics06.jpg" alt=""></a>
							<h3>Etiam posuere augue</h3>
							<p>Donec nonummy magna quis risus eleifend. </p>
							<a href="#" class="button">More</a>
						</div>
					</section>
				</div>
				<div class="divider"></div>
			</div>
		</div>
	<!-- /Featured -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="3u">
						<section>
							<h2>Maecenas lectus</h2>
							<div class="balloon">
								<blockquote>&ldquo;&nbsp;&nbsp;Donec leo, vivamus ullamcorper fermentum nibh in augue pulvinar ullamcorper metus praesent a lacus at urna congue ullamcorper  rutrum.&nbsp;&nbsp;&rdquo;<br>
									<br>
									<strong>&ndash;&nbsp;&nbsp;John Smith</strong></blockquote>
							</div>
							<div class="ballon-bgbtm">&nbsp;</div>
						</section>
					</div>
					<div class="3u">
						<section>
							<h2>Donec dictum</h2>
							<ul class="default">
								<li>
									<h3>Mauris vulputate dolor sit amet</h3>
									<p><a href="#">Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum.</a></p>
								</li>
								<li>
									<h3>Fusce ultrices fringilla metus</h3>
									<p><a href="#">Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum.</a></p>
								</li>
								<li>
									<h3>Donec dictum metus in sapien</h3>
									<p><a href="#">Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum.</a></p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<h2>Nulla leifend2</h2>
							<p>Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat.</p>
							<ul class="style5">
								<li><a href="#"><img src="../main/images/pics07.jpg" alt=""></a></li>
								<li><a href="#"><img src="../main/images/pics08.jpg" alt=""></a></li>
								<li><a href="#"><img src="../main/images/pics09.jpg" alt=""></a></li>
								<li><a href="#"><img src="../main/images/pics10.jpg" alt=""></a></li>
								<li><a href="#"><img src="../main/images/pics11.jpg" alt=""></a></li>
								<li><a href="#"><img src="../main/images/pics12.jpg" alt=""></a></li>
							</ul>
							<a href="#" class="button">More Collections</a>
						</section>
					</div>
					<div class="3u">
						<section>
							<h2>Luctus eleifend</h2>
							<p><strong>Aliquam erat volutpat. Pellentesque tristique ante ut risus. </strong></p>
							<p>Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio vel elit.</p>
							<p>Donec placerat odio vel elit. Nullam ante orci, pellentesque eget, tempus quis, ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel tellus. Curabitur sem urna, consequat.</p>
							<a href="#" class="button">More Collections</a>
						</section>
					</div>
				</div>
			</div>
		</div>
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright" class="container">
			Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
		</div>


	</body>
</html>