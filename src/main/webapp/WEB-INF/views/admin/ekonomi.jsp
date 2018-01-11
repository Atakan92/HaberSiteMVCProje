<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>AgaHaber</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/font.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/li-scroller.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/style.css">
<!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
	<div class="container">
		<header id="header">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_top"></div>
				</div>

				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_bottom">
						<div class="logo_area">
							<a href='<s:url value="/"></s:url>' class="logo"><img
								src="resources/images/logo2.jpg" alt=""></a>
						</div>

					</div>
				</div>

			</div>
		</header>
		<section id="navArea">
			<nav class="navbar navbar-inverse" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav main_nav">
						<li class="active"><a href='<s:url value="/"></s:url>'><span
								class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
						<li><a href='<s:url value="spor"></s:url>'>Spor</a></li>
						<li><a href='<s:url value="siyaset"></s:url>'>Siyaset</a></li>
						<li><a href='<s:url value="saglik"></s:url>'>Siyaset</a></li>
						<li><a href='<s:url value="ekonomi"></s:url>'>Ekonomi</a></li>
						
					</ul>
				</div>
			</nav>
		</section>
		<section id="newsSection">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="latest_newsarea">
						<span>SON DAKİKA</span>
						<ul id="ticker01" class="news_sticker">
							<c:forEach items="${sl }" var="item">
								<li><a
									href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>'><img
										src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/thumbnail/<c:out value="${item.getHaberUrl()}"></c:out>"
										alt=""> <c:out value="${item.getHaberBaslik()}"></c:out>
								</a></li>

							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		<section id="contentSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="left_content">
						<div class="single_post_content">
							<h2>
								<span>Ekonomi</span>
							</h2>
							<div class="single_post_content_left">
								<ul class="business_catgnav  wow fadeInDown">
									<li>
										<figure class="bsbig_fig">
											<a href="#" class="featured_img"> <img
												alt="" src="resources/images/ekonomi.jpg"> <span
												class="overlay"></span>
											</a>
											<figcaption>
												<a href="#">Ekonomi Haberleri</a>
											</figcaption>
											<p>Ekonomi Haberlerinde Gelişmeler</p>
										</figure>
									</li>
								</ul>
							</div>
							<div class="single_post_content_right">
								<ul class="spost_nav">
								<c:forEach items="${ekl }" var="item">
									<li>
										<div class="media wow fadeInDown">
											<a href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>' class="media-left"> <img
													alt=""
													src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>">
												<c:out value="${item.getHaberBaslik()}"></c:out>
												
												</a>
											<div class="media-body">
												<a href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>' class="catg_title">
													Devamını Oku--></a>
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						

						
					</div>
				</div>
				
			</div>
		</section>
		
	</div>
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/wow.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/slick.min.js"></script>
	<script src="resources/assets/js/jquery.li-scroller.1.0.js"></script>
	<script src="resources/assets/js/jquery.newsTicker.min.js"></script>
	<script src="resources/assets/js/jquery.fancybox.pack.js"></script>
	<script src="resources/assets/js/custom.js"></script>
</body>
</html>