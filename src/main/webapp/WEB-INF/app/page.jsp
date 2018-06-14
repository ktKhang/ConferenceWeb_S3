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
<!-- Twitter -->
<meta name="twitter:site" content="@themepixels">
<meta name="twitter:creator" content="@themepixels">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Bracket">
<meta name="twitter:description"
	content="Premium Quality and Responsive UI for Dashboard.">
<meta name="twitter:image"
	content="http://themepixels.me/bracket/img/bracket-social.png">

<!-- Facebook -->
<meta property="og:url" content="http://themepixels.me/bracket">
<meta property="og:title" content="Bracket">
<meta property="og:description"
	content="Premium Quality and Responsive UI for Dashboard.">

<meta property="og:image"
	content="http://themepixels.me/bracket/img/bracket-social.png">
<meta property="og:image:secure_url"
	content="http://themepixels.me/bracket/img/bracket-social.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="600">

<!-- Meta -->
<meta name="description"
	content="Premium Quality and Responsive UI for Dashboard.">
<meta name="author" content="ThemePixels">

<title>Admin page - ICSSE 2017</title>

<!-- vendor css -->
<link href="../../static/lib/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="../../static/lib/Ionicons/css/ionicons.css" rel="stylesheet">
<link
	href="../../static/lib/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet">
<link
	href="../../static/lib/jquery-switchbutton/jquery.switchButton.css"
	rel="stylesheet">
<link href="../../static/lib/highlightjs/github.css" rel="stylesheet">
<link href="../../static/lib/medium-editor/medium-editor.css"
	rel="stylesheet">
<link href="../../static/lib/medium-editor/default.css" rel="stylesheet">
<link href="../../static/lib/summernote/summernote-bs4.css"
	rel="stylesheet">

<!-- Bracket CSS -->
<link rel="stylesheet" href="../../static/css/bracket.css">

</head>

<body>
	<%-- thông báo --%>
	<c:if test="${message ne ''}">
		<script type="text/javascript">
	 	var message = '${message}';
	 	if(message != ""){
			alert(message);
	 	}
	</script>
	</c:if>

	<!-- ########## START: LEFT PANEL ########## -->
	<div class="br-logo">
		<a href="/"><span>[</span>ICSSE<span>]</span></a>
	</div>
	<div class="br-sideleft overflow-y-auto">
		<label class="sidebar-label pd-x-15 mg-t-20">Navigation</label>
		<div class="br-sideleft-menu">
			<a href="index.html" class="br-menu-link">
				<div class="br-menu-item">
					<i class="menu-item-icon icon ion-ios-home-outline tx-22"></i> <span
						class="menu-item-label">Dashboard</span>
				</div> <!-- menu-item -->
			</a>
			<!-- br-menu-link -->
			<a href="#" class="br-menu-link">
				<div class="br-menu-item">
					<i class="menu-item-icon fa fa-address-book tx-20"></i> <span
						class="menu-item-label">Account management</span> <i
						class="menu-item-arrow fa fa-angle-down"></i>
				</div> <!-- menu-item -->
			</a>
			<!-- br-menu-link -->
			<ul class="br-menu-sub nav flex-column">
				<li class="nav-item"><a href="#" class="nav-link">Account
						list</a></li>
				<li class="nav-item"><a href="#" class="nav-link">Add
						account</a></li>
			</ul>
			<a href="#" class="br-menu-link">
				<div class="br-menu-item">
					<i class="menu-item-icon icon ion-ios-bookmarks-outline tx-20"></i>
					<span class="menu-item-label">News management</span> <i
						class="menu-item-arrow fa fa-angle-down"></i>
				</div> <!-- menu-item -->
			</a>
			<!-- br-menu-link -->
			<ul class="br-menu-sub nav flex-column">
				<li class="nav-item"><a href="/all-news" class="nav-link">List news</a></li>
				<li class="nav-item"><a href="/create-news" class="nav-link">Add
						news</a></li>
				<li class="nav-item"><a href="/create-news"
					class="nav-link active">Update news</a></li>
			</ul>
			<a href="#" class="br-menu-link active show-sub">
				<div class="br-menu-item">
					<i class="menu-item-icon icon ion-ios-paper-outline tx-22"></i> <span
						class="menu-item-label">Pages management</span><i
						class="menu-item-arrow fa fa-angle-down"></i>
				</div> <!-- menu-item -->
			</a>

			<ul class="br-menu-sub nav flex-column">
				<%if(request.getParameter("idpage").equals("1")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link active">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link">Contact</a></li>
				<%} %>
				<%if(request.getParameter("idpage").equals("2")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link active">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link">Contact</a></li>
				<%} %>
				<%if(request.getParameter("idpage").equals("3")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link active">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link">Contact</a></li>
				<%} %>
				<%if(request.getParameter("idpage").equals("4")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link active">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link">Contact</a></li>
				<%} %>
				<%if(request.getParameter("idpage").equals("5")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link active">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link">Contact</a></li>
				<%} %>
				<%if(request.getParameter("idpage").equals("6")) {%>
				<li class="nav-item"><a href="page?idpage=1" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="page?idpage=2" class="nav-link">About</a></li>
				<li class="nav-item"><a href="page?idpage=3" class="nav-link">Keynote Speaker</a></li>
				<li class="nav-item"><a href="page?idpage=4" class="nav-link">Program</a></li>
				<li class="nav-item"><a href="page?idpage=5" class="nav-link">Venue & Hotel</a></li>
				<li class="nav-item"><a href="page?idpage=6" class="nav-link active">Contact</a></li>
				<%} %>
			</ul>
			<!-- d-flex -->
		</div>
		<!-- info-list -->

		<br>
	</div>
	<!-- br-sideleft -->
	<!-- ########## END: LEFT PANEL ########## -->

	<!-- ########## START: HEAD PANEL ########## -->
	<div class="br-header">
		<div class="br-header-left">
			<div class="navicon-left hidden-md-down">
				<a id="btnLeftMenu" href=""><i class="icon ion-navicon-round"></i></a>
			</div>
			<div class="navicon-left hidden-lg-up">
				<a id="btnLeftMenuMobile" href=""><i
					class="icon ion-navicon-round"></i></a>
			</div>
			<div class="input-group hidden-xs-down wd-170 transition">
				<input id="searchbox" type="text" class="form-control"
					placeholder="Search"> <span class="input-group-btn">
					<button class="btn btn-secondary" type="button">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
			<!-- input-group -->
		</div>
		<!-- br-header-left -->
		<div class="br-header-right">
			<nav class="nav">
				<!-- dropdown -->
				<div class="dropdown">
					<a href="" class="nav-link nav-link-profile" data-toggle="dropdown">
						<span class="logged-name hidden-md-down"><%=session.getAttribute("username")%></span> <img
						src="http://via.placeholder.com/64x64"
						class="wd-32 rounded-circle" alt=""> <span
						class="square-10 bg-success"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-header wd-200">
						<ul class="list-unstyled user-profile-nav">
							<li><a href=""><i class="icon ion-ios-person"></i> Edit
									Profile</a></li>
							<li><a href=""><i class="icon ion-ios-gear"></i>
									Settings</a></li>
							<li><a href=""><i class="icon ion-ios-download"></i>
									Downloads</a></li>
							<li><a href=""><i class="icon ion-ios-star"></i>
									Favorites</a></li>
							<li><a href=""><i class="icon ion-ios-folder"></i>
									Collections</a></li>
							<li><a href=""><i class="icon ion-power"></i> Sign Out</a></li>
						</ul>
					</div>
					<!-- dropdown-menu -->
				</div>
				<!-- dropdown -->
			</nav>
			<div class="navicon-right">
				<a id="btnRightMenu" href="" class="pos-relative"> <i
					class="icon ion-ios-chatboxes-outline"></i> <!-- start: if statement -->
					<span
					class="square-8 bg-danger pos-absolute t-10 r--5 rounded-circle"></span>
					<!-- end: if statement -->
				</a>
			</div>
			<!-- navicon-right -->
		</div>
		<!-- br-header-right -->
	</div>
	<!-- br-header -->
	<!-- ########## END: HEAD PANEL ########## -->

	<!-- ########## START: RIGHT PANEL ########## -->
	<div class="br-sideright">
		<ul class="nav nav-tabs sidebar-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" role="tab" href="#contacts"><i
					class="icon ion-ios-contact-outline tx-24"></i></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				role="tab" href="#attachments"><i
					class="icon ion-ios-folder-outline tx-22"></i></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				role="tab" href="#calendar"><i
					class="icon ion-ios-calendar-outline tx-24"></i></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				role="tab" href="#settings"><i
					class="icon ion-ios-gear-outline tx-24"></i></a></li>
		</ul>
		<!-- sidebar-tabs -->

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane pos-absolute a-0 mg-t-60 overflow-y-auto active"
				id="contacts" role="tabpanel">
				<label class="sidebar-label pd-x-25 mg-t-25">Online Contacts</label>
				<div class="contact-list pd-x-10">
					<a href="" class="contact-list-link new">
						<div class="d-flex">
							<div class="pos-relative">
								<img src="http://via.placeholder.com/280x280"
									class="wd-40 rounded-circle" alt="">
								<div class="contact-status-indicator bg-success bd-br-primary"></div>
							</div>
							<div class="contact-person">
								<p class="mg-b-0">Marilyn Tarter</p>
								<span class="tx-12 op-5 d-inline-block">Clemson, CA</span>
							</div>
							<span class="tx-info tx-12"><span
								class="square-8 bg-info rounded-circle"></span> 1 new</span>
						</div> <!-- d-flex -->
					</a>
					<!-- contact-list-link -->
					<a href="" class="contact-list-link">
						<div class="d-flex">
							<div class="pos-relative">
								<img src="http://via.placeholder.com/280x280"
									class="wd-40 rounded-circle" alt="">
								<div class="contact-status-indicator bg-success bd-br-primary"></div>
							</div>
							<div class="mg-l-10">
								<p class="mg-b-0 ">Belinda Connor</p>
								<span class="tx-12 op-5 d-inline-block">Fort Kent, ME</span>
							</div>
						</div> <!-- d-flex -->
					</a>
					<!-- contact-list-link -->
				</div>
				<!-- contact-list -->

			</div>
			<!-- #contacts -->


			<div class="tab-pane pos-absolute a-0 mg-t-60 overflow-y-auto"
				id="attachments" role="tabpanel">
				<label class="sidebar-label pd-x-25 mg-t-25">Recent
					Attachments</label>
				<div class="media-file-list">
					<div class="media">
						<div
							class="pd-10 bg-primary wd-50 ht-60 tx-center d-flex align-items-center justify-content-center">
							<i class="fa fa-file-image-o tx-28 tx-white"></i>
						</div>
						<div class="media-body">
							<p class="mg-b-0 tx-13">IMG_43445</p>
							<p class="mg-b-0 tx-12 op-5">JPG Image</p>
							<p class="mg-b-0 tx-12 op-5">1.2mb</p>
						</div>
						<!-- media-body -->
						<a href="" class="more"><i
							class="icon ion-android-more-vertical tx-18"></i></a>
					</div>
					<!-- media -->
					<div class="media mg-t-20">
						<div
							class="pd-10 bg-purple wd-50 ht-60 tx-center d-flex align-items-center justify-content-center">
							<i class="fa fa-file-video-o tx-28 tx-white"></i>
						</div>
						<div class="media-body">
							<p class="mg-b-0 tx-13">VID_6543</p>
							<p class="mg-b-0 tx-12 op-5">MP4 Video</p>
							<p class="mg-b-0 tx-12 op-5">24.8mb</p>
						</div>
						<!-- media-body -->
						<a href="" class="more"><i
							class="icon ion-android-more-vertical tx-18"></i></a>
					</div>
					<!-- media -->
				</div>
				<!-- media-list -->
			</div>
			<!-- #history -->
			<div class="tab-pane pos-absolute a-0 mg-t-60 overflow-y-auto"
				id="calendar" role="tabpanel">
				<label class="sidebar-label pd-x-25 mg-t-25">Time &amp; Date</label>
				<div class="pd-x-25">
					<h2 id="brTime" class="tx-white tx-lato mg-b-5"></h2>
					<h6 id="brDate" class="tx-white tx-light op-3"></h6>
				</div>

				<label class="sidebar-label pd-x-25 mg-t-25">Events Calendar</label>
				<div class="datepicker sidebar-datepicker"></div>


				<label class="sidebar-label pd-x-25 mg-t-25">Event Today</label>
				<div class="pd-x-25">
					<div class="list-group sidebar-event-list mg-b-20">
						<div class="list-group-item">
							<div>
								<h6 class="tx-white tx-13 mg-b-5 tx-normal">Roven's 32th
									Birthday</h6>
								<p class="mg-b-0 tx-white tx-12 op-2">2:30PM</p>
							</div>
							<a href="" class="more"><i
								class="icon ion-android-more-vertical tx-18"></i></a>
						</div>
						<!-- list-group-item -->
						<div class="list-group-item">
							<div>
								<h6 class="tx-white tx-13 mg-b-5 tx-normal">Regular Workout
									Schedule</h6>
								<p class="mg-b-0 tx-white tx-12 op-2">7:30PM</p>
							</div>
							<a href="" class="more"><i
								class="icon ion-android-more-vertical tx-18"></i></a>
						</div>
						<!-- list-group-item -->
					</div>
					<!-- list-group -->

					<a href=""
						class="btn btn-block btn-outline-secondary tx-uppercase tx-11 tx-spacing-2">+
						Add Event</a> <br>
				</div>

			</div>
			<div class="tab-pane pos-absolute a-0 mg-t-60 overflow-y-auto"
				id="settings" role="tabpanel">
				<label class="sidebar-label pd-x-25 mg-t-25">Quick Settings</label>

				<div class="pd-y-20 pd-x-25 tx-white">
					<h6 class="tx-13 tx-normal">Sound Notification</h6>
					<p class="op-5 tx-13">Play an alert sound everytime there is a
						new notification.</p>
					<div class="pos-relative">
						<input type="checkbox" name="checkbox" class="switch-button"
							checked>
					</div>
				</div>

				<div class="pd-y-20 pd-x-25 tx-white">
					<h6 class="tx-13 tx-normal">2 Steps Verification</h6>
					<p class="op-5 tx-13">Sign in using a two step verification by
						sending a verification code to your phone.</p>
					<div class="pos-relative">
						<input type="checkbox" name="checkbox2" class="switch-button">
					</div>
				</div>

				<div class="pd-y-20 pd-x-25 tx-white">
					<h6 class="tx-13 tx-normal">Location Services</h6>
					<p class="op-5 tx-13">Allowing us to access your location</p>
					<div class="pos-relative">
						<input type="checkbox" name="checkbox3" class="switch-button">
					</div>
				</div>

				<div class="pd-y-20 pd-x-25 tx-white">
					<h6 class="tx-13 tx-normal">Newsletter Subscription</h6>
					<p class="op-5 tx-13">Enables you to send us news and updates
						send straight to your email.</p>
					<div class="pos-relative">
						<input type="checkbox" name="checkbox4" class="switch-button"
							checked>
					</div>
				</div>

				<div class="pd-y-20 pd-x-25 tx-white">
					<h6 class="tx-13 tx-normal">Your email</h6>
					<div class="pos-relative">
						<input type="email" name="email"
							class="form-control form-control-inverse transition pd-y-10"
							value="janedoe@domain.com">
					</div>
				</div>

				<div class="pd-y-20 pd-x-25">
					<h6 class="tx-13 tx-normal tx-white mg-b-20">More Settings</h6>
					<a href=""
						class="btn btn-block btn-outline-secondary tx-uppercase tx-11 tx-spacing-2">Account
						Settings</a> <a href=""
						class="btn btn-block btn-outline-secondary tx-uppercase tx-11 tx-spacing-2">Privacy
						Settings</a>
				</div>

			</div>
		</div>
		<!-- tab-content -->

	</div>
	<!-- br-sideright -->
	<!-- ########## END: RIGHT PANEL ########## --->

	<!-- ########## START: MAIN PANEL ########## -->
	<div class="br-mainpanel">
		<div class="br-pageheader pd-y-15 pd-l-20">
			<nav class="breadcrumb pd-0 mg-0 tx-12">
				<a class="breadcrumb-item" href="index.html">ISSCE</a> <a
					class="breadcrumb-item" href="#">Pages</a> <span
					class="breadcrumb-item active">Update</span>
			</nav>
		</div>
		<!-- br-pageheader -->
		<div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
			<h4 class="tx-gray-800 mg-b-5">Edit ${pagecontent.name} Page</h4>
		</div>

		<div class="br-pagebody">
			<div class="br-section-wrapper">
				<form method="POST" action="save-page?idpage=${idpage}">
					
					<div class="col-sm-12 col-xs-12">
						<input type="hidden" name="id" value="${idpage}" />
					</div>
					<div class="col-sm-12 col-xs-12">
						<input type="hidden" name="name" value="${pagecontent.name}" />
					</div>
					<h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-t-80 mg-b-10">Page Content</h6>
					<textarea id="summernote" name="content" style="display: none;" required>${pagecontent.content}</textarea>
					
					<button type="submit"
						class="btn btn-info tx-11 pd-y-12 tx-uppercase tx-spacing-2">Save</button>

				</form>

			</div>
			<!-- br-section-wrapper -->
		</div>
		<!-- br-pagebody -->

		<footer class="br-footer">
			<div class="footer-left">
				<div class="mg-b-2">Copyright &copy; 2017. Group_19 . All
					Rights Reserved.</div>
				<div>Attentively and carefully made by ThemePixels.</div>
			</div>
			<div class="footer-right d-flex align-items-center">
				<span class="tx-uppercase mg-r-10">Share:</span> <a target="_blank"
					class="pd-x-5"
					href="https://www.facebook.com/sharer/sharer.php?u=http%3A//themepixels.me/bracket/intro"><i
					class="fa fa-facebook tx-20"></i></a> <a target="_blank" class="pd-x-5"
					href="https://twitter.com/home?status=Bracket,%20your%20best%20choice%20for%20premium%20quality%20admin%20template%20from%20Bootstrap.%20Get%20it%20now%20at%20http%3A//themepixels.me/bracket/intro"><i
					class="fa fa-twitter tx-20"></i></a>
			</div>
		</footer>
	</div>
	<!-- br-mainpanel -->
	<!-- ########## END: MAIN PANEL ########## -->

	<script src="../../static/lib/jquery/jquery.js"></script>
	<script src="../../static/lib/popper.js/popper.js"></script>
	<script src="../../static/lib/bootstrap/bootstrap.js"></script>
	<script
		src="../../static/lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
	<script src="../../static/lib/moment/moment.js"></script>
	<script src="../../static/lib/summernote/summernote-bs4.min.js"></script>
	<script src="../../static/lib/jquery-ui/jquery-ui.js"></script>
	<script
		src="../../static/lib/jquery-switchbutton/jquery.switchButton.js"></script>
	<script src="../../static/lib/peity/jquery.peity.js"></script>
	<script src="../../static/lib/highlightjs/highlight.pack.js"></script>
	<script src="../../static/lib/medium-editor/medium-editor.js"></script>

	<script src="../../static/js/bracket.js"></script>
	<script>
		$(function() {
			'use strict';

			// Inline editor
			var editor = new MediumEditor('.editable');

			// Summernote editor
			$('#summernote').summernote({
				height : 600,
				tooltip : false
			});
			$('#myForm').submit(
					function() {
						$('textarea[name=content]').val(
								$('#summernote').summernote('code'));
					});
		});
	</script>
</body>
</html>
