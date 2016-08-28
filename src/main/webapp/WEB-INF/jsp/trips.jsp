<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- BEGIN # MODAL LOGIN -->
	<div class="modal fade modal-login modal-border-transparent"
		id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<button type="button" class="btn btn-close close"
					data-dismiss="modal" aria-label="Close">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>

				<div class="clear"></div>

				<!-- Begin # DIV Form -->
				<div id="modal-login-form-wrapper">

					<!-- Begin # Login Form -->
					<form id="login-form">

						<div class="modal-body pb-10">

							<h4 class="text-center mb-15">Sign-in</h4>

							<button class="btn btn-facebook btn-block">Sign-in with
								Facebook</button>

							<div class="modal-seperator mb-40">
								<span>or</span>
							</div>

							<div class="form-group mb-0">
								<input id="login_username" class="form-control mb-5"
									placeholder="username" type="text">
							</div>
							<div class="form-group mb-0">
								<input id="login_password" class="form-control mb-5"
									placeholder="password" type="password">
							</div>

							<div class="form-group mb-0 mt-10">
								<div class="row gap-5">
									<div class="col-xs-6 col-sm-6 col-md-6">
										<div class="checkbox-block font-icon-checkbox">
											<input id="remember_me_checkbox" name="remember_me_checkbox"
												class="checkbox" value="First Choice" type="checkbox">
											<label class="" for="remember_me_checkbox">remember</label>
										</div>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 text-right">
										<button id="login_lost_btn" type="button" class="btn btn-link">forgot
											pass?</button>
									</div>
								</div>
							</div>

						</div>

						<div class="modal-footer pt-25 pb-5">

							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">Sign-in</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-danger btn-block"
										data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>
							<div class="text-left">
								No account?
								<button id="login_register_btn" type="button"
									class="btn btn-link">Register</button>
							</div>

						</div>
					</form>
					<!-- End # Login Form -->

					<!-- Begin | Lost Password Form -->
					<form id="lost-form" style="display: none;">
						<div class="modal-body pb-10">

							<h4 class="text-center mb-15">Forgot password</h4>

							<div class="form-group mb-0">
								<input id="lost_email" class="form-control mb-5" type="text"
									placeholder="Enter Your Email">
							</div>

							<div class="text-center">
								<button id="lost_login_btn" type="button" class="btn btn-link">Sign-in</button>
								or
								<button id="lost_register_btn" type="button"
									class="btn btn-link">Register</button>
							</div>

						</div>

						<div class="modal-footer pt-25 pb-5">

							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">Submit</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-danger btn-block"
										data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>

						</div>

					</form>
					<!-- End | Lost Password Form -->

					<!-- Begin | Register Form -->
					<form id="register-form" style="display: none;">

						<div class="modal-body pb-20">

							<h4 class="text-center mb-15">Register</h4>

							<button class="btn btn-facebook btn-block">Register with
								Facebook</button>

							<div class="modal-seperator mb-40">
								<span>or</span>
							</div>

							<div class="form-group mb-0">
								<input id="register_username" class="form-control mb-5"
									type="text" placeholder="Username">
							</div>

							<div class="form-group mb-0">
								<input id="register_email" class="form-control mb-5"
									type="email" placeholder="Email">
							</div>

							<div class="form-group mb-0">
								<input id="register_password" class="form-control mb-5"
									type="password" placeholder="Password">
							</div>

							<div class="form-group mb-0">
								<input id="register_password_confirm" class="form-control mb-5"
									type="password" placeholder="Confirm Password">
							</div>

						</div>

						<div class="modal-footer pt-25 pb-5">

							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">Register</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-danger btn-block"
										data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>

							<div class="text-left">
								Already have account?
								<button id="register_login_btn" type="button"
									class="btn btn-link">Sign-in</button>
							</div>

						</div>

					</form>
					<!-- End | Register Form -->

				</div>
				<!-- End # DIV Form -->

			</div>
		</div>
	</div>
	<!-- END # MODAL LOGIN -->

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
							<li><a href="index">Home</a> <!-- <ul>
									<li>
										<a href="index-2.html">Home Page - 1</a>
									</li>
									<li>
										<a href="index-3.html">Home Page - 2 (select form for no. of people)</a>
									</li>
									<li>
										<a href="index-4.html">Home Page - 3 (tripadvisor)</a>
									</li>
									<li>
										<a href="index-5.html">Home Page - 4 (banner slider search 1)</a>
									</li>
									<li>
										<a href="index-6.html">Home Page - 5 (banner slider search 2}</a>
									</li>
									<li>
										<a href="index-7.html">Home Page - 6 (last minute deals)</a>
									</li>
									<li>
										<a href="#">Second Level</a>
										 <ul>
											<li><a href="#">Third Level - 1</a></li>
											<li><a href="#">Third Level - 2</a></li>
											<li><a href="#">Third Level - 3</a></li>
										</ul>
									</li>
								</ul> --></li>
							<li><a href="search">Trips</a> <!-- <ul>
									<li><a href="result-page-list.html">Result - List</a></li>
									<li><a href="result-page-list-right-sidebar.html">Result - List (right sidebar)</a></li> 
									<li><a href="result-page-grid.html">Result - Grid</a></li>
									<li><a href="result-page-grid-right-sidebar.html">Result - Grid (right sidebar)</a></li>
									<li><a href="result-map.html">Result - Map</a></li>
									<li><a href="detail-page.html">Detail Page</a></li>
									<li><a href="detail-page-2.html">Detail Page - 2 (tripadvisor)</a></li>
									<li><a href="detail-page.html">Detail Page - Tab</a></li>
									<li><a href="payment.html">Payment</a></li>
									<li><a href="payment-2.html">Payment - 2 (alt. booking summary)</a></li>
									<li><a href="confirmation.html">Confirmation</a></li>
									<li><a href="list-property.html">List Your Property</a></li>
								</ul> --></li>
							<li class="mega-menu hidden-sm hidden-xs"><a
								href="createform">Create Trip</a> <!-- <ul>
									<li class="clearfix">
										<div class="container">
										
											<div class="vertical-tab-style-01-wrapper">
											
												<div class="row">

													<div class="col-xs-12 col-sm-3 col-md-3">
													
														<ul class="tab-nav">
															<li class="active"><a href="#destination-tab-01" data-toggle="tab">Asia</a></li>
															<li><a href="#destination-tab-02" data-toggle="tab">Europe</a></li>
															<li><a href="#destination-tab-03" data-toggle="tab">America</a></li>
															<li><a href="#destination-tab-04" data-toggle="tab">Latin America</a></li>
															<li><a href="#destination-tab-05" data-toggle="tab">Africa</a></li>
															<li><a href="#destination-tab-06" data-toggle="tab">Oceana</a></li>
														</ul>
														
													</div>
													
													<div class="col-xs-12 col-sm-9 col-md-9">
													
														<div class="tab-content" >
															
															<div class="tab-pane fade in active" id="destination-tab-01">
															
																<div class="tab-inner">

																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																		
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
																
															</div>
															
															<div class="tab-pane fade" id="destination-tab-02">
																
																<div class="tab-inner">

																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																		
																			<li><a href="destination-page.html">Albania</a></li>
																			<li><a href="destination-page.html">Austria</a></li>
																			<li><a href="destination-page.html">Belgium</a></li>
																			<li><a href="destination-page.html">Croatia</a></li>
																			<li><a href="destination-page.html">Cyprus</a></li>
																			<li><a href="destination-page.html">Czech Republic</a></li>
																			<li><a href="destination-page.html">Denmark</a></li>
																			<li><a href="destination-page.html">Finland</a></li>
																			<li><a href="destination-page.html">France</a></li>
																			<li><a href="destination-page.html">Georgia</a></li>
																			<li><a href="destination-page.html">Germany</a></li>
																			<li><a href="destination-page.html">Greece</a></li>
																			<li><a href="destination-page.html">Hungary</a></li>
																			<li><a href="destination-page.html">Iceland</a></li>
																			<li><a href="destination-page.html">Ireland</a></li>
																			<li><a href="destination-page.html">Italy</a></li>
																			<li><a href="destination-page.html">Netherlands</a></li>
																			<li><a href="destination-page.html">Norway</a></li>
																			<li><a href="destination-page.html">Albania</a></li>
																			<li><a href="destination-page.html">Austria</a></li>
																			<li><a href="destination-page.html">Belgium</a></li>
																			<li><a href="destination-page.html">Croatia</a></li>
																			<li><a href="destination-page.html">Cyprus</a></li>
																			<li><a href="destination-page.html">Czech Republic</a></li>
																			<li><a href="destination-page.html">Denmark</a></li>
																			<li><a href="destination-page.html">Finland</a></li>
																			<li><a href="destination-page.html">France</a></li>
																			<li><a href="destination-page.html">Georgia</a></li>
																			<li><a href="destination-page.html">Germany</a></li>
																			<li><a href="destination-page.html">Greece</a></li>
																			<li><a href="destination-page.html">Hungary</a></li>
																			<li><a href="destination-page.html">Iceland</a></li>
																			<li><a href="destination-page.html">Ireland</a></li>
																			<li><a href="destination-page.html">Italy</a></li>
																			<li><a href="destination-page.html">Netherlands</a></li>
																			<li><a href="destination-page.html">Norway</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
															</div>
															
															<div class="tab-pane fade" id="destination-tab-03">

																<div class="tab-inner">
																	
																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																		
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
															</div>

															<div class="tab-pane fade" id="destination-tab-04">

																<div class="tab-inner">
																	
																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																			<li><a href="destination-page.html">France</a></li>
																			<li><a href="destination-page.html">Georgia</a></li>
																			<li><a href="destination-page.html">Germany</a></li>
																			<li><a href="destination-page.html">Greece</a></li>
																			<li><a href="destination-page.html">Hungary</a></li>
																			<li><a href="destination-page.html">Iceland</a></li>
																			<li><a href="destination-page.html">Ireland</a></li>
																			<li><a href="destination-page.html">Italy</a></li>
																			<li><a href="destination-page.html">Netherlands</a></li>
																			<li><a href="destination-page.html">Norway</a></li>
																			<li><a href="destination-page.html">Albania</a></li>
																			<li><a href="destination-page.html">Austria</a></li>
																			<li><a href="destination-page.html">Belgium</a></li>
																			<li><a href="destination-page.html">Croatia</a></li>
																			<li><a href="destination-page.html">Cyprus</a></li>
																			<li><a href="destination-page.html">Czech Republic</a></li>
																			<li><a href="destination-page.html">Denmark</a></li>
																			<li><a href="destination-page.html">Finland</a></li>
																			<li><a href="destination-page.html">France</a></li>
																			<li><a href="destination-page.html">Georgia</a></li>
																			<li><a href="destination-page.html">Germany</a></li>
																			<li><a href="destination-page.html">Greece</a></li>
																			<li><a href="destination-page.html">Hungary</a></li>
																			<li><a href="destination-page.html">Iceland</a></li>
																			<li><a href="destination-page.html">Ireland</a></li>
																			<li><a href="destination-page.html">Italy</a></li>
																			<li><a href="destination-page.html">Netherlands</a></li>
																			<li><a href="destination-page.html">Norway</a></li>
																			<li><a href="destination-page.html">Albania</a></li>
																			<li><a href="destination-page.html">Austria</a></li>
																			<li><a href="destination-page.html">Belgium</a></li>
																			<li><a href="destination-page.html">Croatia</a></li>
																			<li><a href="destination-page.html">Cyprus</a></li>
																			<li><a href="destination-page.html">Czech Republic</a></li>
																			<li><a href="destination-page.html">Denmark</a></li>
																			<li><a href="destination-page.html">Finland</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
															</div>

															<div class="tab-pane fade" id="destination-tab-05">

																<div class="tab-inner">
																	
																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																		
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
															</div>

															<div class="tab-pane fade" id="destination-tab-06">

																<div class="tab-inner">
																	
																	<div class="destination-list-wrapper">
																	
																		<ul class="destination-list clearfix">
																		
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li><a href="destination-page.html">Singapore</a></li>
																			<li><a href="destination-page.html">Indonesia</a></li>
																			<li><a href="destination-page.html">Maldives</a></li>
																			<li><a href="destination-page.html">China</a></li>
																			<li><a href="destination-page.html">Pakistan</a></li>
																			<li><a href="destination-page.html">Mongolia</a></li>
																			<li><a href="destination-page.html">Lebanon</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">India</a></li>
																			<li><a href="destination-page.html">Cambodia</a></li>
																			<li><a href="destination-page.html">Bangladesh</a></li>
																			<li><a href="destination-page.html">Brunei</a></li>
																			<li><a href="destination-page.html">South Korea</a></li>
																			<li><a href="destination-page.html">Philippines</a></li>
																			<li><a href="destination-page.html">Sri Lanka</a></li>
																			<li><a href="destination-page.html">Malaysia</a></li>
																			<li><a href="destination-page.html">Thailand</a></li>
																			<li class="more-link"><a href="destinations-page.html">More destinations <i class="fa fa-arrow-circle-right"></i></a></li>
																			
																		</ul>
																		
																	</div>

																</div>
															</div>

														</div>
														
													</div>

												</div>
												
											</div>

										</div>
									</li>
								</ul> --></li>
							<li><a href="result-page-list.html">Pages</a> <!-- <ul>
									<li>
										<a href="#">Dashboard</a>
										 <ul>
											<li><a href="dashboard-my-booking.html">My Bookings</a></li>
											<li><a href="dashboard-message-list.html">Message List</a></li>
											<li><a href="dashboard-message-list-detail.html">Message List Detail</a></li>
											<li><a href="dashboard-message-list-toggle.html">Message List Toggle Style</a></li>
											<li><a href="dashboard-profile.html">Profile</a></li>
											<li><a href="dashboard-billing.html">Billing</a></li>
											<li><a href="dashboard-user-pass.html">User &amp; Password</a></li>
										</ul>
									</li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
									<li><a href="blog-single.html">Blog Single</a></li>
									<li><a href="blog-single-left-sidebar.html">Blog Single Left Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li><a href="faq.html">Faq</a></li>
									<li><a href="faq-2.html">Faq - 2</a></li>
									<li><a href="static-page.html">Static Page</a></li>
									<li><a href="404.html">404 - Error Page</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul> --></li>
						</ul>

					</div>
					<!--/.nav-collapse -->

					<div class="pull-right">

						<div class="navbar-mini">
							<ul class="clearfix">
								<!-- <li class="dropdown bt-dropdown-click">
									<a id="currency-dropdown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
										<i class="ion-social-usd hidden-xss"></i> Dollar
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="currency-dropdown">
										<li><a href="#"><i class="ion-social-usd"></i> Dollar</a></li>
										<li><a href="#"><i class="ion-social-euro"></i> Europe</a></li>
										<li><a href="#"><i class="ion-social-yen"></i> Yen</a></li>
									</ul>
								</li>
								<li class="dropdown bt-dropdown-click">
									<a id="language-dropdown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
										<i class="ion-android-globe hidden-xss"></i> English
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="language-dropdown">
										<li><a href="#">English</a></li>
										<li><a href="#">France</a></li>
										<li><a href="#">Japanese</a></li>display: none
									</ul>
								</li> -->
								<li>${user} &nbsp;</li>
								<li class="user-action" style="${ user != 'Guest' ? 'display: none' : ''}"><a data-toggle="modal" id="login"
									class="btn btn-primary btn-inverse">Sign up</a></li>
								<li class="user-action" style="${ user == 'Guest' ? 'display: none' : ''}"><a data-toggle="modal" id="logout"
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

			<!-- <div class="breadcrumb-wrapper">
			
				<div class="container">

					<div class="row">
					
						<div class="col-xs-12 col-sm-8">
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li><a href="#">Page</a></li>
								<li class="active">Feature Items</li>
							</ol>
						</div>
						
						<div class="col-xs-12 col-sm-4 hidden-xs">
							<p class="hot-line"> <i class="fa fa-phone"></i> Hot Line: 1-222-33658</p>
						</div>
						
					</div>

				</div>

			</div> -->

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
														<c:forEach var="loc" items="${locations}">
															<option value="${loc.getId()}"
																${loc.getId() == locationid ? 'selected' : ''}>${loc.getName()}</option>
														</c:forEach>
													</select>
												</div>
												<!-- <div class="form-group form-icon-right mb-10">
													<label>Where do you want to go?</label> <input type="text"
														class="form-control mb-0" placeholder="City or Airport">
													<i class="fa fa-map-marker"></i>
												</div> -->
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-icon-right mb-10">
													<label for="dpd1">After</label> <input name="afterdate1"
														class="form-control" id="dpd1" placeholder="After"
														type="text" value=${afterdate1 } readonly> <i
														class="fa fa-calendar"></i>
												</div>
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-icon-right mb-10">
													<label for="dpd2">Before</label> <input name="enddate1"
														class="form-control" id="dpd2" placeholder="Before"
														type="text" value=${enddate1 } readonly> <i
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
												<!-- <label>Vacancy</label> <select class="custom-select"
														id="change-search-room">
														<option value="0">Room</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4‎</option>
														<option value="5">5</option>
													</select> -->
											</div>
											<div class="col-xs-12 col-sm-12">
												<div class="form-group form-spin-group">
													<label for="maxavgcost">AvgCost</label> <input
														type="number" class="form-control form-spin"
														value="${ obj.getVacancy() == '' ? 1000 : Integer.parseInt(obj.getMaxavgcost())}"
														id="maxavgcost" name="maxavgcost" />
												</div>
												<!-- <label>AvgCost</label> <select class="custom-select"
														id="change-search-adult">
														<option value="0">Adult</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4‎</option>
														<option value="5">5</option>
													</select> -->
											</div>
											<!-- <div class="col-xs-12 col-sm-6">
													<div class="form-group form-spin-group">
														<label for="days">Days</label> <input type="number"
															class="form-control form-spin" value="1" id="days"
															name="days" />
													</div>
													<label>Days</label> <select class="custom-select"
														id="change-search-child">
														<option value="0">Child</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4‎</option>
														<option value="5">5</option>
													</select>
											</div> -->

											<div class="col-sm-12">
												<button class="btn btn-block btn-primary btn-icon mt-5">
													Search <span class="icon"><i class="fa fa-search"></i></span>
												</button>
											</div>

											<!-- <div class="clear mb-10"></div>

											<div class="tooltip-light">
												<p class="price-guarantee text-center hoover-help mb-0"
													data-toggle="tooltip" data-placement="top"
													title="Had denoting properly jointure you occasion directly raillery. In said to of poor full be post face snug.">
													<i class="fa fa-check-square-o text-success"></i> EXTRETION
													price guarantee
												</p>
											</div> -->

											<div class="clear"></div>

										</form>
										<div style="display: none">
											<input type="number" id="page" name="page" value="${prev}">
										</div>
									</div>
								</div>

								<!-- <div class="result-filter-wrapper clearfix">
								
									<h3><span class="icon"><i class="fa fa-sliders"></i></span> Filter</h3>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Price</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="range-slider-wrapper">
													<input id="price_range" />
												</div>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Star Rating</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="range-slider-wrapper">
													<input id="star_rating_range" />
												</div>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Amenities</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_amenities-1" name="filter_amenities" type="checkbox" class="checkbox" checked="checked" />
													<label class="" for="filter_amenities-1">Any</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_amenities-2" name="filter_amenities" type="checkbox" class="checkbox"/>
													<label class="" for="filter_amenities-2">Shared outdoor pool</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_amenities-3" name="filter_amenities" type="checkbox" class="checkbox"/>
													<label class="" for="filter_amenities-3">Hot tub/Jacuzzi</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_amenities-4" name="filter_amenities" type="checkbox" class="checkbox"/>
													<label class="" for="filter_amenities-4">Satellite or cable TV</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_amenities-5" name="filter_amenities" type="checkbox" class="checkbox"/>
													<label class="" for="filter_amenities-5">Parking</label>
												</div>
												<div id="amenities-more-less" class="collapse"> 
													<div class="inner">
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-6" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-6">A/C or climate control</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-7" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-7">Smoking allowed</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-8" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-8">Microwave</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-9" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-9">Dishwasher</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-10" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-10">Refrigerator</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-11" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-11">Grill</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-12" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-12">Patio / Balcony</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_amenities-13" name="filter_amenities" type="checkbox" class="checkbox"/>
															<label class="" for="filter_amenities-13">Fitness Room</label>
														</div>
													</div>
												</div>
												<button class="btn btn-more-less" data-toggle="collapse" data-target="#amenities-more-less">Show more</button>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Room Facility</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_facility-1" name="filter_facility" type="checkbox" class="checkbox" checked="checked" />
													<label class="" for="filter_facility-1">Any</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_facility-2" name="filter_facility" type="checkbox" class="checkbox"/>
													<label class="" for="filter_facility-2">Bathtub</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_facility-3" name="filter_facility" type="checkbox" class="checkbox"/>
													<label class="" for="filter_facility-3">Flat-screen TV</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_facility-4" name="filter_facility" type="checkbox" class="checkbox"/>
													<label class="" for="filter_facility-4">Kitchen/kitchenette</label>
												</div>
												<div class="checkbox-block font-icon-checkbox">
													<input id="filter_facility-5" name="filter_facility" type="checkbox" class="checkbox"/>
													<label class="" for="filter_facility-5">Patio</label>
												</div>
												<div id="facility-more-less" class="collapse"> 
													<div class="inner">
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_facility-6" name="filter_facility" type="checkbox" class="checkbox"/>
															<label class="" for="filter_facility-6">Private pool</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_facility-7" name="filter_facility" type="checkbox" class="checkbox"/>
															<label class="" for="filter_facility-7">Soundproof</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_facility-8" name="filter_facility" type="checkbox" class="checkbox"/>
															<label class="" for="filter_facility-8">Spa tub</label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_facility-9" name="filter_facility" type="checkbox" class="checkbox"/>
															<label class="" for="filter_facility-9">Terrace </label>
														</div>
														<div class="checkbox-block font-icon-checkbox">
															<input id="filter_facility-10" name="filter_facility" type="checkbox" class="checkbox"/>
															<label class="" for="filter_facility-10">Washing machine</label>
														</div>
													</div>
												</div>
												<button class="btn btn-more-less" data-toggle="collapse" data-target="#facility-more-less">Show more</button>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Radio Filter Widget</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="radio-block font-icon-radio">
													<input id="radio_block_1" name="radio_block" type="radio" class="radio" value="First Choice" checked="checked" />
													<label class="" for="radio_block_1">Apart-hotel‎</label>
												</div>
												
												<div class="radio-block font-icon-radio">
													<input id="radio_block_2" name="radio_block" type="radio" class="radio" value="Second Choice" />
													<label class="" for="radio_block_2">Apartment‎</label>
												</div>
												<div class="radio-block font-icon-radio">
													<input id="radio_block_3" name="radio_block" type="radio" class="radio" value="Third Choice" />
													<label class="" for="radio_block_3">Bed and Breakfast‎</label>
												</div>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="active">Select Filter Widget</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<div class="form-group mb-0">
													<select class="custom-select" id="gender">
														<option value="0">Please Select</option>
														<option value="1">Family-friendly‎</option>
														<option value="2">Romantic‎</option>
														<option value="3">Shopping‎</option>
														<option value="4">Spa Hotel‎</option>
														<option value="5">Luxury‎</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="">Inactive Toggle</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<p>Affronting imprudence do he he everything. Sex lasted dinner wanted indeed wished out law. Far advanced settling say finished raillery. Offered chiefly farther of my no colonel shyness. Such on help ye some door if in. Laughter proposal laughing any son law consider. Needed except up piqued an.</p>
											</div>
										</div>
									</div>
									
									<div class="another-toggle filter-toggle">
										<h4 class="">Inactive Toggle 2</h4>
										<div class="another-toggle-content">
											<div class="another-toggle-inner">
												<p>Affronting imprudence do he he everything. Sex lasted dinner wanted indeed wished out law. Far advanced settling say finished raillery. Offered chiefly farther of my no colonel shyness. Such on help ye some door if in. Laughter proposal laughing any son law consider. Needed except up piqued an.</p>
											</div>
										</div>
									</div>

									
								</div>
 -->

								<div class="mb-20"></div>

							</aside>
						</div>

						<div class="content-wrapper">

							<div class="mb-10"></div>

							<div class="result-status">
								Results

								<!-- <span class="text-primary font700">256</span> hotels with availability in <span class="text-primary font700">Paris</span>. Showing 1 - 30 -->
								<!-- 
								${name}

								<c:forEach var="trip" items="${name}">

									<p>${trip.getId()}</p>
								</c:forEach> -->
								<!-- <a href="result-map.html" class="show-on-map" style="background-image:url('images/show-on-map.gif');">
									<span>
										<img src="images/show-map-marker.png" alt="images" class="block"/>
										<span class="bg-primary absolute">Show on map</span>
									</span>
								</a> -->
							</div>

							<div class="sort-wrapper">

								<ul class="clearfix">

									<li class="text">Sort by:</li>
									<li class="active"><a href="#">Price <i
											class="fa fa-long-arrow-up"></i></a></li>
									<li><a href="#">Name</a></li>
									<li><a href="#">Rating</a></li>
									<li class="dropdown"><a id="area-dropdown"
										class="dropdown-toggle" data-toggle="dropdown" role="button"
										aria-haspopup="true" aria-expanded="false"> Area <i
											class="fa fa-caret-down"></i>
									</a>
										<ul class="dropdown-menu" aria-labelledby="area-dropdown">
											<li><a href="#">Downtown</a></li>
											<li><a href="#">City Center</a></li>
											<li><a href="#">China Town</a></li>
										</ul></li>
									<!-- <li class="list-grid"><a href="result-page-list.html"><i
											class="fa fa-align-justify"></i></a></li>
									<li class="list-grid active"><a
										href="result-page-grid.html"><i class="fa fa-th-large"></i></a></li> -->
								</ul>

							</div>

							<div class="hotel-item-list-wrapper mb-40">
								<c:forEach var="trip" items="${name}">
									<div class="hotel-item-list">
										<div class="image"
											style="background-image: url('images/locations/${trip.locationentityGet().getImageUrl()}');"></div>
										<div class="content">
											<div class="heading">
												<h4>${ trip.locationentityGet().getName() }</h4>
												<!-- <p><span class="star-rate rated-40 mr-10"></span> <i class="fa fa-map-marker text-primary"></i> Tokyo, Japan</p> -->
											</div>
											<div class="short-info">${ trip.getDescription() }
												<br /> Posted by : ${ trip.userentityGet().getName() }<br />
												Trip Starts on : ${ trip.getStartDate() }<br /> Trip Ends
												on : ${ trip.getEndDate() }
											</div>
										</div>
										<div class="absolute-bottom">
											<!-- <p class="text-primary"><i class="fa fa-check-circle"></i> Breakfast Included <span class="mh-10">|</span> <i class="fa fa-check-circle"></i> Free Wifi in Room</p> -->
											<!-- 	<%//out.print(trip.getBookEndDate())
				// String startDateStr = {trip.getBookEndDate()};
				//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				//Date startDate = sdf.parse(startDateStr);
				// Date date = ${ trip.getBookEndDate() };
				//out.print( "<h2 align=\"center\">" +startDate.toString()+"</h2>");%>
										${asdf} -->
											<p>Booking Ends on : ${ trip.getBookEndDate() }</p>
										</div>
										<div class="absolute-right">
											<div class="meta-option">
												<span class="block"><h4>Vacancies</h4></span>
												<div class="number">
													<center>
														<h4>${ trip.getVacancy() }</h4>
													</center>
												</div>
												<!-- <a href="#" class="tripadvisor-module">
													<div class="raty-wrapper">
														<div class="tripadvisor-head">
															<span class="tripadvisor-by-attr block"
																data-rating-score="4"></span>
														</div>
													</div>
													<div class="hover-underline">324 reviews</div>
												</a> -->
											</div>
											<div class="price-wrapper">
												<p class="price">
													<span class="block">Average Cost</span><span class="number">${ trip.getAvgCost() }</span>
													<!-- <span class="block">avg / night</span> -->
												</p>
												<form action="join?tripid=${trip.getId()}" method="POST">
													<button type="submit" class="btn btn-danger btn-sm">Signup</button>
												</form>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- <div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/02.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Phulay Bay Resort</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Phuket, Thailand
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/03.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/04.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="text-danger font700 mb-5">Last 2 rooms</p>
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/05.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/06.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="text-danger font700 mb-5">Last 2 rooms</p>
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/07.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="text-danger font700 mb-5">Last 2 rooms</p>
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/08.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="text-danger font700 mb-5">Last 2 rooms</p>
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

								<div class="hotel-item-list">
									<div class="image"
										style="background-image: url('images/top-destinations/09.jpg');"></div>
									<div class="content">
										<div class="heading">
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<span class="star-rate rated-40 mr-10"></span> <i
													class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="short-info">Use securing confined his
											shutters. Delightful as he it acceptance an solicitude
											discretion reasonably. Carriage we husbands advanced an
											perceive greatest expense on demesne ye he.</div>
									</div>
									<div class="absolute-bottom">
										<p class="text-primary">
											<i class="fa fa-check-circle"></i> Breakfast Included <span
												class="mh-10">|</span> <i class="fa fa-check-circle"></i>
											Free Wifi in Room
										</p>
									</div>
									<div class="absolute-right">
										<div class="meta-option">
											<a href="#" class="tripadvisor-module">
												<div class="raty-wrapper">
													<div class="tripadvisor-head">
														<span class="tripadvisor-by-attr block"
															data-rating-score="4"></span>
													</div>
												</div>
												<div class="hover-underline">324 reviews</div>
											</a>
										</div>
										<div class="price-wrapper">
											<p class="price">
												<span class="block">start from</span><span class="number">$187</span>
												<span class="block">avg / night</span>
											</p>
											<a href="#" class="btn btn-danger btn-sm">Details</a>
										</div>
									</div>
								</div>

 -->
							</div>

							<div class="result-paging-wrapper">

								<div class="row">

									<div class="col-sm-2">
										<!-- <div class="text-holder">Showing 1-30 from 3564</div> -->
									</div>

									<div class="col-sm-6">
										<ul class="paging">
											<li>${Integer.parseInt(prev) > -1 ? "<b> <button id='previous123' > &laquo;&nbsp;&nbsp;Prev </button> </b>" : "<b> <button> &laquo;&nbsp;&nbsp;Prev </button></b>"}</li>

											<!-- 					<li><a href="#">1</a></li>
											<li class="active"><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">6</a></li> -->
											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Page ${Integer.parseInt(prev) +1}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
											<li>${Integer.parseInt(next) > 0 ? " <b> <button id='next123'> Next&nbsp;&nbsp;&raquo; </button> </b>" : "<b> <button> Next&nbsp;&nbsp;&raquo; </button> </b>"}</li>
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