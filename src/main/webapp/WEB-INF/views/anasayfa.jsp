<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
=======
    pageEncoding="UTF-8"%>
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
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
<<<<<<< HEAD
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
						<li><a href='<s:url value="saglik"></s:url>'>Saglik</a></li>
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
		<section id="sliderSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="slick_slider">
						<c:forEach items="${hl }" var="item">
							<div class="single_iteam">
								<a href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>'>
									<img
									src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>"
									alt="">
								</a>
								<div class="slider_article">

									<p>
										<c:out value="${item.getHaberBaslik()}"></c:out>
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="latest_post">
						<h2>
							<span>Son Yazılar</span>
						</h2>
						<div class="latest_post_container">
							<div id="prev-button">
								<i class="fa fa-chevron-up"></i>
							</div>
							<ul class="latest_postnav">
								<c:forEach items="${yl}" var="item">
									<li>
										<div class="media">
											<a
												href='<s:url value="yazaricerik-/${item.getYazarYaziId() }"></s:url>'
												class="media-left"> <img alt=""
												src="http://localhost:80/resim/server/php/files/<c:out value="${item.getYazarResimKlasor()}"></c:out>/thumbnail/<c:out value="${item.getYazarResimUrl()}"></c:out>">
											</a>
											<div class="media-body">
												<a
													href='<s:url value="yazaricerik-/${item.getYazarYaziId() }"></s:url>'
													class="catg_title"> <c:out
														value="${item.getYazarAdi() }"></c:out></a>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div id="next-button">
								<i class="fa  fa-chevron-down"></i>
							</div>
						</div>
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
								<span>Spor</span>
							</h2>
							<div class="single_post_content_left">
								<ul class="business_catgnav  wow fadeInDown">
									<li>
										<figure class="bsbig_fig">
											<a href='<s:url value="spor"></s:url>' class="featured_img"> <img
												alt="" src="resources/images/sports.jpg"> <span
												class="overlay"></span>
											</a>
											<figcaption>
												<a href='<s:url value="spor"></s:url>'>Spor Haberleri</a>
											</figcaption>
											<p>Sporda Haberlerinde Gelişmeler</p>
										</figure>
									</li>
								</ul>
							</div>
							<div class="single_post_content_right">
								<ul class="spost_nav">
									<c:forEach items="${spl }" var="item">
										<li>
											<div class="media wow fadeInDown">
												<a href="pages/single_page.html" class="media-left"> <img
													alt=""
													src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>">
													<c:out value="${item.getHaberBaslik()}"></c:out>
												</a>
												<div class="media-body">
													<a href="pages/single_page.html" class="catg_title">
														Aykut Kocaman taktiği</a>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="fashion_technology_area">
							<div class="fashion">
								<div class="single_post_content">
									<h2>
										<span>Siyaset</span>
									</h2>
									<ul class="business_catgnav wow fadeInDown">
										<li>
											<figure class="bsbig_fig">
												<a href='<s:url value="siyaset"></s:url>' class="featured_img"> <img
													alt="" src="resources/images/siyaset.jpg"> <span
													class="overlay"></span>
												</a>
												<figcaption>
													<a href='<s:url value="siyaset"></s:url>'>Siyaset Haberleri</a>
												</figcaption>
												<p>Siyaset Haberleri İçerik</p>
											</figure>
										</li>
									</ul>
									<ul class="spost_nav">
									<c:forEach items="${syl }" var="item">
									<li>
										<div class="media wow fadeInDown">
											<a href="pages/single_page.html" class="media-left"> <img
													alt=""
													src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>">
												<c:out value="${item.getHaberBaslik()}"></c:out>
												
												</a>
											<div class="media-body">
												<a href="pages/single_page.html" class="catg_title">
													dsadsadsad</a>
											</div>
										</div>
									</li>
									</c:forEach>
									</ul>
								</div>
							</div>
							<div class="technology">
								<div class="single_post_content">
									<h2>
										<span>Sağlık</span>
									</h2>
									<ul class="business_catgnav">
										<li>
											<figure class="bsbig_fig wow fadeInDown">
												<a href='<s:url value="saglik"></s:url>' class="featured_img"> <img
													alt="" src="resources/images/saglik.jpg"> <span
													class="overlay"></span>
												</a>
												<figcaption>
													<a href='<s:url value="saglik"></s:url>'>Sağlık Haberleri</a>
												</figcaption>
												<p>Sağlık Haber İçerik</p>
											</figure>
										</li>
									</ul>
									<ul class="spost_nav">
										<c:forEach items="${sgl }" var="item">
									<li>
										<div class="media wow fadeInDown">
											<a href="pages/single_page.html" class="media-left"> <img
													alt=""
													src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>">
												<c:out value="${item.getHaberBaslik()}"></c:out>
												
												</a>
											<div class="media-body">
												<a href="pages/single_page.html" class="catg_title">
													dsadsadsad</a>
											</div>
										</div>
									</li>
									</c:forEach>
									</ul>
								</div>
							</div>
						</div>

						<div class="single_post_content">
							<h2>
								<span>Ekonomi</span>
							</h2>
							<div class="single_post_content_left">
								<ul class="business_catgnav">
									<li>
										<figure class="bsbig_fig  wow fadeInDown">
											<a class="featured_img" href='<s:url value="ekonomi"></s:url>'> <img
												src="resources/images/ekonomi.jpg" alt=""> <span
												class="overlay"></span>
											</a>
											<figcaption>
												<a href='<s:url value="ekonomi"></s:url>'>Ekonomi Haberleri</a>
											</figcaption>
											<p>Ekonomi Haber İçerik</p>
										</figure>
									</li>
								</ul>
							</div>
							<div class="single_post_content_right">
								<ul class="spost_nav">
									<c:forEach items="${ekl }" var="item">
									<li>
										<div class="media wow fadeInDown">
											<a href="pages/single_page.html" class="media-left"> <img
													alt=""
													src="http://localhost:80/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>">
												<c:out value="${item.getHaberBaslik()}"></c:out>
												
												</a>
											<div class="media-body">
												<a href="pages/single_page.html" class="catg_title">
													dsadsadsad</a>
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
=======
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
  <header id="header">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="header_top">
          
          
        </div> 
      </div>
      
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="header_bottom">
          <div class="logo_area"><a href="LoginSuccess.jsp" class="logo"><img src="resources/images/logo.jpg" alt=""></a></div>
          
        </div>
      </div>
      
    </div>
  </header>
  <section id="navArea">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav main_nav">
          <li class="active"><a href="LoginSuccess.jsp"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
          <li><a href="#">Spor</a></li>
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Siyaset</a>
          </li>
          <li><a href="#">Sağlık</a></li>
          <li><a href="#">Ekonomi</a></li> 
          <li><a href="pages/contact.html">İletişim</a></li>
        </ul>
      </div>
    </nav>
  </section>
  <section id="newsSection">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="latest_newsarea"> <span>SON DAKİKA</span>
          <ul id="ticker01" class="news_sticker">
          <c:forEach items="${sl }" var="item">
            <li><a href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>'><img src="http://localhost:8090/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/thumbnail/<c:out value="${item.getHaberUrl()}"></c:out>" alt=""> <c:out value="${item.getHaberBaslik()}"></c:out> </a></li>
          
          </c:forEach>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="sliderSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="slick_slider">
         
             
          
          <c:forEach items="${hl }" var="item">
          
          
          
           <div class="single_iteam"> <a href='<s:url value="aciklama-/${item.getHaberid()}"></s:url>'> <img src="http://localhost:8090/resim/server/php/files/<c:out value="${item.getHaberKlasor()}"></c:out>/<c:out value="${item.getHaberUrl()}"></c:out>" alt=""></a>
            <div class="slider_article">
              
              <p><c:out value="${item.getHaberBaslik()}"></c:out></p>
            </div>
          </div>
          
          
          
          
          
          </c:forEach>

          
          
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="latest_post">
          <h2><span>Son Yazılar</span></h2>
          <div class="latest_post_container">
            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
            <ul class="latest_postnav">
           
              <c:forEach items="${yl}" var="item">
              <li>
                <div class="media"> <a href='<s:url value="aciklama"></s:url>' class="media-left"> <img alt="" src="http://localhost:8090/resim/server/php/files/<c:out value="${item.getYazarResimKlasor()}"></c:out>/thumbnail/<c:out value="${item.getYazarResimUrl()}"></c:out>"></a>
                  <div class="media-body"> <a href='<s:url value="aciklama"></s:url>' class="catg_title"> <c:out value="${item.getYazarAdi() }"></c:out></a> </div>
                </div>
              </li>
              </c:forEach>
              
            </ul>
            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="left_content">
          <div class="single_post_content">
            <h2><span>Spor</span></h2>
            <div class="single_post_content_left">
              <ul class="business_catgnav  wow fadeInDown">
                <li>
                  <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/gelisme.jpg"> <span class="overlay"></span> </a>
                    <figcaption> <a href="pages/single_page.html">Spor Haberleri</a> </figcaption>
                    <p>Sporda Haberlerinde Gelişmeler</p>
                  </figure>
                </li>
              </ul>
            </div>
            <div class="single_post_content_right">
              <ul class="spost_nav">
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/cenkliverpool.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Cenk Tosun Liverpool maçı kadrosunda</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/drogba.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Didier Drogba zirvede</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/aykut.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aykut Kocaman taktiği</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/chelsea.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Beşiktaşta Kelechi sesleri</a> </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="fashion_technology_area">
            <div class="fashion">
              <div class="single_post_content">
                <h2><span>Siyaset</span></h2>
                <ul class="business_catgnav wow fadeInDown">
                  <li>
                    <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/featured_img2.jpg"> <span class="overlay"></span> </a>
                      <figcaption> <a href="pages/single_page.html">Siyaset Haberleri</a> </figcaption>
                      <p>Siyaset Haberleri İçerik</p>
                    </figure>
                  </li>
                </ul>
                <ul class="spost_nav">
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 1</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 2</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 3</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resourcimages/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 4</a> </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="technology">
              <div class="single_post_content">
                <h2><span>Sağlık</span></h2>
                <ul class="business_catgnav">
                  <li>
                    <figure class="bsbig_fig wow fadeInDown"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/featured_img3.jpg"> <span class="overlay"></span> </a>
                      <figcaption> <a href="pages/single_page.html">Sağlık Haberleri</a> </figcaption>
                      <p>Sağlık Haber İçerik</p>
                    </figure>
                  </li>
                </ul>
                <ul class="spost_nav">
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 1</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 2</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 3</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 4</a> </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          
          <div class="single_post_content">
            <h2><span>Ekonomi</span></h2>
            <div class="single_post_content_left">
              <ul class="business_catgnav">
                <li>
                  <figure class="bsbig_fig  wow fadeInDown"> <a class="featured_img" href="pages/single_page.html"> <img src="resources/images/featured_img1.jpg" alt=""> <span class="overlay"></span> </a>
                    <figcaption> <a href="pages/single_page.html">Ekonomi Haberleri</a> </figcaption>
                    <p>Ekonomi Haber İçerik</p>
                  </figure>
                </li>
              </ul>
            </div>
            <div class="single_post_content_right">
              <ul class="spost_nav">
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 1</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 2</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 3</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 4</a> </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar">
            <h2><span>Popüler Haberler</span></h2>
            <ul class="spost_nav">
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/cenkliverpool.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Cenk Tosun Liverpool maçı kadrosunda</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/abd.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> ABD'de yangın: 16 yaralı</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/chpaday.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> CHP adayları</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/aykut.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aykut Kocaman taktiği</a> </div>
                </div>
              </li>
            </ul>
          </div>
          </aside>
      </div>
    </div>
  </section>
  <footer id="footer">
    <div class="footer_top">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInLeftBig">
            <h2>Flickr Images</h2>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInDown">
            <h2>Tag</h2>
            <ul class="tag_nav">
              <li><a href="#">Games</a></li>
              <li><a href="#">Sports</a></li>
              <li><a href="#">Fashion</a></li>
              <li><a href="#">Business</a></li>
              <li><a href="#">Life &amp; Style</a></li>
              <li><a href="#">Technology</a></li>
              <li><a href="#">Photo</a></li>
              <li><a href="#">Slider</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInRightBig">
            <h2>Contact</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <address>
            Perfect News,1238 S . 123 St.Suite 25 Town City 3333,USA Phone: 123-326-789 Fax: 123-546-567
            </address>
          </div>
        </div>
      </div>
    </div>
    <div class="footer_bottom">
      <p class="copyright">Copyright &copy; 2045 <a href="index.html">NewsFeed</a></p>
      <p class="developer">Developed By Wpfreeware</p>
    </div>
  </footer>
</div>
<script src="resources/assets/js/jquery.min.js"></script> 
<script src="resources/assets/js/wow.min.js"></script> 
<script src="resources/assets/js/bootstrap.min.js"></script> 
<script src="resources/assets/js/slick.min.js"></script> 
<script src="resources/assets/js/jquery.li-scroller.1.0.js"></script> 
<script src="resources/assets/js/jquery.newsTicker.min.js"></script> 
<script src="resources/assets/js/jquery.fancybox.pack.js"></script> 
<script src="resources/assets/js/custom.js"></script>
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
</body>
</html>