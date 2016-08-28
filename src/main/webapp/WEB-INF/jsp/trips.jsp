<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html"%>
<html lang="en">


<!-- Mirrored from crenoveative.com/envato/extretion/result-page-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:14:34 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title Of Site -->
<title>Weekend Planner</title>
<meta name="description"
	content="HTML Responsive Template for renting unique accommodations from local hosts Based on Twitter Bootstrap 3.x.x" />
<meta name="keywords"
	content="booking, hotel, resort, travel, holiday, tour, accommodation, vocation, trip" />
<meta name="author" content="crenoveative">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Fav and Touch Icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="images/ico/favicon.png">

<!-- CSS Plugins -->
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" media="screen">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">

<!-- CSS Font Icons -->
<link rel="stylesheet"
	href="icons/open-iconic/font/css/open-iconic-bootstrap.css">
<link rel="stylesheet"
	href="icons/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="icons/ionicons/css/ionicons.css">
<link rel="stylesheet" href="icons/rivolicons/style.css">
<link rel="stylesheet"
	href="icons/streamline-outline/flaticon-streamline-outline.css">
<link rel="stylesheet"
	href="icons/around-the-world-icons/around-the-world-icons.css">
<link rel="stylesheet" href="icons/et-line-font/style.css">

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,300italic,400italic,700italic'
	rel='stylesheet' type='text/css'>

<!-- CSS Custom -->
<link href="css/style.css" rel="stylesheet">

<!-- Add your style -->
<link href="css/your-style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body class="not-home">

	

	<!-- start Container Wrapper -->
	<div class="container-wrapper colored-navbar-brand">

		<!-- start Header -->
		<header id="header" class="overflow-x-hidden-xss">

			<!-- start Navbar (Header) -->
			<nav class="navbar navbar-default navbar-fixed-top with-slicknav">

				<div class="container">

					<div class="navbar-header">
						<a class="navbar-brand" href="index">Weekend Planner</a>
					</div>

					<div id="navbar"
						class="collapse navbar-collapse navbar-arrow pull-left">

						<ul class="nav navbar-nav" id="responsive-menu">
							<li><a href="index">Home</a>  </li>
							<li><a href="search">Trips</a> </li>
							${ user != '' ?
							'<li class="create"><a
								href="createform">Create Trip</a> </li>' : '' }
						</ul>

					</div>
					<!--/.nav-collapse -->

					<div class="pull-right">

						<div class="navbar-mini">
							<ul class="clearfix">

								<li>${user} &nbsp;</li>
								<li class="user-action" style="${ user != '' ? 'display: none' : ''}"><a data-toggle="modal" id="login"
									class="btn btn-primary btn-inverse">Sign In/up</a></li>
								<li class="user-action" style="${ user == '' ? 'display: none' : ''}"><a data-toggle="modal" id="logout"
									class="btn btn-primary btn-inverse">Logout</a></li>
							</ul>
						</div>

					</div>

				</div>

				<div id="slicknav-mobile"></div>

			</nav>
			<!-- end Navbar (Header) -->

		</header>

		<div class="clear"></div>

		<!-- start Main Wrapper -->
		<div class="main-wrapper">

			<div class="two-tone-layout left-sidebar">

				<div class="equal-content-sidebar">

					<div class="container">

						<div class="sidebar-wrapper ">
							<aside>

								<div class="mb-10"></div>

								<div class="result-search-form-wrapper clearfix">

									<h3>Search Again</h3>
									<div class="inner">
										<form action="search" class="gap-10">
											<div class="col-xs-12 col-sm-12">

												<div class="orm-group form-icon-right mb-10">

													<label>Location</label> <select class="form-control"
														name="locationid" id="locationid">
															<option value="0"> Choose Destination </option>
														<c:forEach var="loc" items="${locations}">
															<option value="${loc.getId()}"
																${loc.getId() == locationid ? 'selected' : ''}>${loc.getName()}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-icon-right mb-10">
													<label for="dpd1">After</label> <input name="afterdate1"
														class="form-control" id="dpd1" placeholder="After"
														type="text" value="${afterdate1 }" readonly> <i
														class="fa fa-calendar"></i>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-icon-right mb-10">
													<label for="dpd2">Before</label> <input name="enddate1"
														class="form-control" id="dpd2" placeholder="Before"
														type="text" value="${enddate1 }" readonly> <i
														class="fa fa-calendar"></i>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-spin-group">
													<label for="vacancy">Vacancy</label> <input type="number"
														class="form-control form-spin"
														value="${ obj.getVacancy() == '' ? 1 : Integer.parseInt(obj.getVacancy())}"
														id="vacancy" name="vacancy" />
												</div>
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-spin-group">
													<label for="maxavgcost">AvgCost</label> <input
														type="number" class="form-control form-spin"
														value="${ obj.getVacancy() == '' ? 1000 : Integer.parseInt(obj.getMaxavgcost())}"
														id="maxavgcost" name="maxavgcost" />
												</div>
											</div>
											<div class="col-sm-12">
												<button class="btn btn-block btn-primary btn-icon mt-5">
													Search <span class="icon"><i class="fa fa-search"></i></span>
												</button>
											</div>

											<div class="clear"></div>

										</form>
										<div style="display: none">
											<input type="number" id="page" name="page" value="${prev}">
										</div>
									</div>
								</div>

								<div class="mb-20"></div>

							</aside>
						</div>

						<div class="content-wrapper">

							<div class="result-status">
								<h4>Trip Results<h4>
							</div>

							<div class="hotel-item-list-wrapper mb-40">
								<c:forEach var="trip" items="${name}">
									<div class="hotel-item-list">
										<div class="image"
											style="background-image: url('images/locations/${trip.locationentityGet().getImageUrl()}');"></div>
										<div class="content">
											<div class="heading">
												<h4>${ trip.locationentityGet().getName() }</h4>
											</div>
											<fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getStartDate() }" var="thedate0" />
                                        	<fmt:formatDate value="${thedate0}" pattern="dd MMM yyyy"
                                                        var="string0" />
                                            <fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getEndDate() }" var="thedate1" />
                                        	<fmt:formatDate value="${thedate1}" pattern="dd MMM yyyy"
                                                        var="string1" />
											<div class="short-info">${ trip.getDescription() }
												<br /> Posted by : ${ trip.userentityGet().getName() }<br />
												Trip Starts on : ${ string0 }<br /> Trip Ends
												on : ${ string1 }
											</div>
										</div>
										<div class="absolute-bottom">
										<fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getBookEndDate() }" var="thedate" />
                                        <fmt:formatDate value="${thedate}" pattern="dd MMM yyyy"
                                                        var="string2" />
											<p>Booking Ends on : ${string2}</p>
										</div>
										<div class="absolute-right">
											<div class="meta-option">
												<span class="block"><h4>Vacancies</h4></span>
												<div class="number">
													<center>
														<h4>${ trip.getVacancy() }</h4>
													</center>
												</div>
										 	</div>
											<div class="price-wrapper">
												<p class="price">
													<span class="block">Average Cost</span><span class="number">${ trip.getAvgCost() }</span>
													<!-- <span class="block">avg / night</span> -->
												</p>
												
												<form action="join?tripid=${trip.getId()}" method="POST">
												${ user == '' ? "<p></p>" :
												"<button type='submit' class='btn btn-danger btn-sm'>Signup</button>"
												}
												</form>
												
											</div>
										</div>
									</div>
								</c:forEach>
							</div>

							<div class="result-paging-wrapper">

								<div class="row">

									<div class="col-sm-2">
										<!-- <div class="text-holder">Showing 1-30 from 3564</div> -->
									</div>

									<div class="col-sm-6">
										<ul class="paging">
											<li>${Integer.parseInt(prev) > -1 ? "<b> <button id='previous123' > &laquo;&nbsp;&nbsp;Prev </button> </b>" : "<b> </b>"}</li>

											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Page ${Integer.parseInt(prev) +1}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
											<li>${Integer.parseInt(next) > 0 ? " <b> <button id='next123'> Next&nbsp;&nbsp;&raquo; </button> </b>" : "<b></b>"}</li>
										</ul>
									</div>
									<div class="col-sm-4"></div>

								</div>

							</div>

							<div class="mb-20"></div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="clear"></div>

			<footer class="main-footer">

				<div class="container">

					<div class="row">

						<div class="col-sm-12 col-sm-5 col-md-6">

							<div class="row">
								<div class="footer-about col-sm-10 col-md-8">
									<div class="footer-logo">
										<a href="#home">Weekend Planner</a>
									</div>

									<p class="about-us-footer">
										Abilities or he perfectly pretended so strangers be exquisite.
										Oh to another chamber pleased imagine do in. Went me rank at
										last loud shot an draw. Excellent so to no sincerity
										smallness... <a href="#" class="font-italic bb-dotted">read
											more</a>
									</p>

									<!-- <p class="copy-right font12">&#169; Copyright 2015
										EXTRETION - Responsive Template.</p>
 -->
								</div>
							</div>

						</div>

						<div class="col-sm-12 col-sm-7 col-md-6">

							<div class="row gap-20">

								<div class="col-xss-6 col-xs-4 col-sm-4 mt-30-xs">

									<h4 class="footer-title">Company</h4>

									<ul class="menu-footer">
										<li><a href="#">About</a></li>
										<li><a href="#">Careers</a></li>
										<li><a href="#">Partners</a></li>
										<li><a href="#">Community</a></li>
										<li><a href="#">Terms</a></li>
										<li><a href="#">Privacy</a></li>
									</ul>

								</div>

								<div class="col-xss-6 col-xs-4 col-sm-4 mt-30-xs">

									<h4 class="footer-title">Discover</h4>

									<ul class="menu-footer">
										<li><a href="#">Adventure</a></li>
										<li><a href="#">Beach</a></li>
										<li><a href="#">City</a></li>
										<li><a href="#">Pack Pack</a></li>
										<li><a href="#">Honeymoon</a></li>
										<li><a href="#">Trekking</a></li>
									</ul>

								</div>

								<div class="col-xss-12 col-xs-4 col-sm-4 mt-30-xs">

									<h4 class="footer-title">Socials</h4>

									<ul class="menu-footer for-social">
										<li><a href="#"><i
												class="fa fa-facebook-official mr-5"></i> Facebook</a></li>
										<li><a href="#"><i class="fa fa-twitter mr-5"></i>
												Twitter</a></li>
										<li><a href="#"><i class="fa fa-google-plus mr-5"></i>
												Google Plus</a></li>
										<li><a href="#"><i class="fa fa-codepen mr-5"></i>
												Codepen</a></li>
										<li><a href="#"><i class="fa fa-behance mr-5"></i>
												Behance</a></li>
										<li><a href="#"><i class="fa fa-github mr-5"></i>
												Github</a></li>
									</ul>

								</div>

							</div>

						</div>

					</div>

				</div>

			</footer>

		</div>

	</div>

	<!-- start Back To Top -->
	<div id="back-to-top">
		<a href="#"><i class="ion-ios-arrow-up"></i></a>
	</div>
	<!-- end Back To Top -->



	<!-- jQuery Cores -->
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>

	<!-- Bootstrap Js -->
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugins - serveral jquery plugins that use in this template -->
	<script type="text/javascript" src="js/plugins.js"></script>

	<!-- Custom js codes for plugins -->
	<script type="text/javascript" src="js/customs.js"></script>

	<!-- Date Piacker -->
	<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="js/customs-datepicker.js"></script>


	<script src="https://apis.google.com/js/platform.js?onload=oauthReady"
		async defer></script>
	<meta name="google-signin-client_id"
		content="797550632992-634oon8ssbhjnmqj6fcsbj4um8tgnuni.apps.googleusercontent.com">
	<script type="text/javascript">
		$("#asdfgh").click(function() {
			var page = (parseInt(document.getElementById("page").value)).toString();
			var afterdate1 = document.getElementById("dpd1").value;
			var locationid = document.getElementById("locationid").value;
			var enddate1 = document.getElementById("dpd2").value;
			var vacancy = (document.getElementById("vacancy").value).toString();
			var maxavgcost = (document.getElementById("maxavgcost").value).toString();

			window.location.href = "search?page=" + page + "&afterdate1=" + afterdate1 + "&locationid=" + locationid + "&enddate1=" + enddate1 + "&vacancy=" + vacancy + "&maxavgcost=" + maxavgcost
			// $.get('search', {
			// 	"page" : document.getElementById("page").value,
			// 	"afterdate1" : document.getElementById("dpd1").value,
			// 	"locationid" : document.getElementById("locationid").value,
			// 	"enddate1" : document.getElementById("dpd2").value,
			// 	"vacancy" : document.getElementById("vacancy").value,
			// 	"maxavgcost" : document.getElementById("maxavgcost").value
			// }, function() {
			// });
		});
		$("#previous123").click(function() {
			var page = (parseInt(document.getElementById("page").value)).toString();
			var afterdate1 = document.getElementById("dpd1").value;
			var locationid = document.getElementById("locationid").value;
			var enddate1 = document.getElementById("dpd2").value;
			var vacancy = (document.getElementById("vacancy").value).toString();
			var maxavgcost = (document.getElementById("maxavgcost").value).toString();

			window.location.href = "search?page=" + page + "&afterdate1=" + afterdate1 + "&locationid=" + locationid + "&enddate1=" + enddate1 + "&vacancy=" + vacancy + "&maxavgcost=" + maxavgcost
			// $.get('search', {
			// 	"page" : document.getElementById("page").value,
			// 	"afterdate1" : document.getElementById("dpd1").value,
			// 	"locationid" : document.getElementById("locationid").value,
			// 	"enddate1" : document.getElementById("dpd2").value,
			// 	"vacancy" : document.getElementById("vacancy").value,
			// 	"maxavgcost" : document.getElementById("maxavgcost").value
			// }, function() {
			// });
		});
		$("#next123").click(function() {
			var page = (parseInt(document.getElementById("page").value) + 2).toString();
			var afterdate1 = document.getElementById("dpd1").value;
			var locationid = document.getElementById("locationid").value;
			var enddate1 = document.getElementById("dpd2").value;
			var vacancy = (document.getElementById("vacancy").value).toString();
			var maxavgcost = (document.getElementById("maxavgcost").value).toString();

			window.location.href = "search?page=" + page + "&afterdate1=" + afterdate1 + "&locationid=" + locationid + "&enddate1=" + enddate1 + "&vacancy=" + vacancy + "&maxavgcost=" + maxavgcost

			// console.log(document.getElementById("page").value);
			// console.log();
			// $.get('search?pa', {
			// 	"page" : document.getElementById("page").value + 2,
			// 	"afterdate1" : document.getElementById("dpd1").value,
			// 	"locationid" : document.getElementById("locationid").value,
			// 	"enddate1" : document.getElementById("dpd2").value,
			// 	"vacancy" : document.getElementById("vacancy").value,
			// 	"maxavgcost" : document.getElementById("maxavgcost").value
			// }, function() {
			// 	console.log("came to next");
			// });
		});
		window.oauthReady = function() {
			gapi.load('auth2', function() {
				gapi.auth2.init();
			});
			function login() {
				var auth2 = gapi.auth2.getAuthInstance();
				auth2
						.signIn(
								{
									scope : 'https://www.googleapis.com/auth/user.phonenumbers.read'
								})
						.then(
								function(googleUser) {

									var name = googleUser.getBasicProfile()
											.getName();
									var email = googleUser.getBasicProfile()
											.getEmail();
									var token = googleUser.getAuthResponse().id_token;
									$.post('login', {
										"name" : name,
										"email" : email,
										"token" : token
									}, function() {
										window.location.href = "";
									});
								});
			}
			function logout() {
				var auth2 = gapi.auth2.getAuthInstance();
				auth2.signOut().then(function() {
					$.post('logout', function() {
						window.location.href = "index";
					});
				});
			}
			$('#login').on('click', login);
			$('#logout').on('click', logout);
		}
	</script>






</body>



<!-- Mirrored from crenoveative.com/envato/extretion/result-page-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:14:43 GMT -->
</html>