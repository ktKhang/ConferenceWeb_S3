<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ page contentType="text/html; charset=UTF-8"%>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--bootstrap & Jquery-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--Icon fa-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--CSS-->
<link rel="stylesheet" type="text/css"
	href="../../static/css/mycssHome.css" />
<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css" />

<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script language="javascript" src="js/myjsHome.js"></script>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript">
	$(document).ready(function() {
		$(window).bind("scroll", function(e) {
			var top = $(window).scrollTop();
			if (top > 200) { //Khoáº£ng cÃ¡ch ÄÃ£ Äo ÄÆ°á»£c
				$(".sidebars").addClass("fix-box");
			} else {
				$(".sidebars").removeClass("fix-box");
			}
		});
	});
</script>

</head>
<body>
	<!--
			==============================Hearder====================================
	-->
	<div class="container">
		<div class="topbar">
			<img src="../../static/images/Banner.png">
		</div>
	</div>
	<header id="header" class="sidebars">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/">HOME</a></li>
						<li><a href="about">ABOUT</a></li>
						<li><a href="keynote-speaker">KEYNOTE SPEAKER</a></li>
						<li><a href="program">PROGRAM</a></li>
						<li><a href="venue-hotel">VENUE & HOTEL</a></li>
						<li class="active"><a href="contact">CONTACT</a></li>

					</ul>
				</div>

				<div class="collapse navbar-collapse">
					<form>
						<ul class="nav navbar-nav navbar-right">
							<li><input type="text" id="timkiem" placeholder="Search">
								<button
									style="border: 0px #08080800; background-color: transparent;"
									type="submit">
									<span style="color: white;" class="glyphicon glyphicon-search"></span>
								</button></li>
						</ul>
					</form>
				</div>
			</div>
			<!--end container-->
		</nav>
		<!--end nav-->
	</header>
	<!--end header-->

	<!--
		==============================content===================================
	-->
	<!--
	=================================Slider=====================================
	-->
	<div style="margin-top: -6px;" id="myCarousel" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="../../static/images/trangchu/P3.png" alt="Los Angeles"
					style="width: 100%;">
			</div>

			<div class="item">
				<img src="../../static/images/trangchu/P1.png" alt="Chicago"
					style="width: 100%;">
			</div>

			<div class="item">
				<img src="../../static/images/trangchu/P2.png" alt="New york"
					style="width: 100%;">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--
	================================Ná»I DUNG=======================
  -->
	<div class="container-fluid" id="courseshome">
		<div class="container khung" style="text-align: center;">

			<div class="row container">
				<div class="col-md-9">
					<div class="gioithieu">
						<div class="title_display">
							<span style="background-color: inherit;"><b><span
									style="color: #666;"><h5>${pagecontent.name}</h5></span></b></span>
						</div>
						<h5>
							<span style="color: rgb(148, 189, 123);">-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</span><br>
						</h5>
						<p>
							${pagecontent.content}
						</p>
					</div>

				</div>
				<div class="col-md-3" style="border-left: 1px solid;">
					<div class="gioithieu">
						<h3
							style="background-color: #b5150d; color: white; width: 200px; height: 30px;">&nbsp&nbsp&nbspLatest
							News</h3>
						<div style="padding-top: 10px;">
							<c:forEach var="news" items="${lst_news}">
								<p style="color: #b5150d;">${news.date_created}
								</p>
								<a href="news?id=${news.id}">${news.title}</a>
								<hr />
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!--end div khoa hoc-->
		</div>
	</div>





	<!--
	==========================Footer================
	-->
	<div class="footer-wrapper">
		<div id="footer" class="footer-1">
			<div class="footer-main">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<a href="#"> <img alt class="logo_footer"
								src="../../static/images/Logo.png">
							</a>
						</div>
						<div class="col-md-4">
							<div id="footerlst" class="widget">
								<h3 class="titlefooter">Navigation</h3>
								<div class="textwidget">
									<div class="row">
										<div class="col-md-6" style="padding-top: 17px;">
											<ul class="">
												<li><a class="non-textdecoration lstfooter" href="/">Home</a></li>
												<li style="padding-top: 15px;"><a
													class="non-textdecoration lstfooter" href="about">About</a></li>
												<li style="padding-top: 15px;"><a
													class="non-textdecoration lstfooter" href="keynote-speaker">Keynote
														speaker</a></li>
											</ul>
										</div>
										<div class="col-md-6" style="padding-top: 17px;">
											<ul class="">
												<li><a class="non-textdecoration lstfooter" href="program">Program</a></li>
												<li style="padding-top: 15px;"><a
													class="non-textdecoration lstfooter" href="venue-hotel">Venue &
														hotel</a></li>
												<li style="padding-top: 15px;"><a
													class="non-textdecoration lstfooter" href="contact">Contact</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<div id="footerlst" class="widget2">
								<h3 class="titlefooter">Contact</h3>
								<div style="padding-top: 17px;">
									<ul class="textwidget">
										<li style="font-size: 14px;"><i class="fa fa-map-marker"
											style="font-size: 20px; color: #080707;"></i>&nbsp;&nbspSố 1,
											Võ Văn Ngân, Thủ Đức, TP Hồ Chí Minh, Việt Nam</li>
										<li style="font-size: 14px; padding-top: 15px;"><i
											class="fa fa-phone" style="font-size: 20px; color: #080707;"></i>&nbsp;&nbsp;(+84)1869123456</li>
										<li style="font-size: 14px; padding-top: 15px;"><i
											class="fa fa-envelope"
											style="font-size: 20px; color: #080707;"></i>&nbsp;&nbsp;<a
											class="non-textdecoration lstfooter" href="#">icsse2017@gmail.com</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="footer-center">
						Â© Copyright 2017. All Rights Reserved</br>Powered and Designed by
						Khang & Xuan & Hoang
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--nÃºt quay vá» Äáº§u trang-->
	<div class="btn-top">
		<a href="javascript:void(0);" title="Top" style="display: inline;">

			<i class="glyphicon glyphiconc glyphicon-chevron-up"></i>
		</a>
	</div>

</body>
</html>