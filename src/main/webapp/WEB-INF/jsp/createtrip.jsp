<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">


<!-- Mirrored from crenoveative.com/envato/extretion/dashboard-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:18:08 GMT -->
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

<!-- CSS Cores and Plugins -->
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
										<li><a href="#">Japanese</a></li>
									</ul>
								</li> -->
								<li class="user-action"><a data-toggle="modal"
									href="#loginModal" class="btn btn-primary btn-inverse">Sign
										up/in</a></li>
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

			<div class="breadcrumb-wrapper">

				<div class="container">

					<!-- <div class="row">
					
						<div class="col-xs-12 col-sm-8">
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li><a href="#">Page</a></li>
								<li class="active">About Us</li>
							</ol>
						</div>
						
					</div> -->

				</div>

			</div>

			<div class="clear"></div>

			<div class="equal-content-sidebar-by-gridLex">

				<div class="container">

					<div class="GridLex-grid-noGutter-equalHeight">

						<div class="GridLex-col-3_sm-4_xs-12_xss-12">

							<!-- <aside class="sidebar-wrapper">
								
								<div class="dashboard-sidebar">
								
									<div class="dashboard-avatar">
									
										<div class="image">
											<img src="images/man/01.jpg" alt="Image" class="img-circle">
										</div>
										
										<div class="content">
											<h4>Jessica Nathan</h4>
											<p class="texting">Paris, France</p>
											<span class="label label-primary">Property Owner</span>
										</div>
										
										<ul class="meta clearfix">
											<li>
												<div>
													Member since:
													<span>
														Jan 25, 2016
													</span>
												</div>
											</li>
											<li>
												<div>
													Last login:
													<span>
														3 hours ago
													</span>
												</div>
											</li>
										</ul>
										
									</div>
									
									<div class="dashboard-menu-wrapper">
									
										<div class="navbar-vertical">
										
											<ul class="navbar-vertical-menu dashboard-menu-list" id="responsive-menu-dashboard">
												<li>
													<a href="#"><span class="icon"><i class="fa fa-pencil-square-o"></i></span> Booking</a>
												</li>
												<li>
													<a href="#"><span class="icon"><i class="fa fa-heart"></i></span> Wishlist</a>
												</li>
												<li class="active">
													<a href="#"><span class="icon"><i class="fa fa-cog"></i></span> Setting</a>
													<ul>
														<li><a href="#">Profile</a></li>
														<li><a href="#">Billing</a></li>
														<li><a href="#">Password</a></li>
													</ul>
												</li>
												<li>
													<a href="#"><span class="icon"><i class="fa fa-sign-out"></i></span> Logout</a>
												</li>
											</ul>
										
										</div>
										
										<div class="relative">
											<div id="slicknav-mobile-dashboard"></div>
										</div>
										
									</div>
									
								</div>
								
							</aside>-->

						</div>

						<div class="GridLex-col-9_sm-8_xs-12_xss-12">

							<div class="content-wrapper">

								<div class="dashboard-content">

									<div class="row">

										<div class="col-xs-12 col-sm-10 col-md-9">

											<div class="dashboard-heading">
												<h3>Create Trip</h3>
											</div>

										</div>

									</div>

									<form action="create" enctype='application/json' method='post'>

										<div class="row">

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">
												<div class="form-group">

													<label>Average Cost</label> <input type="number" name="avgCost" id="avgCost"
														class="form-control" placeholder="Average Cost" required />
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group">

													<label>Location</label> 
													<select class="form-control" name="locationid" id="locationid">
														<c:forEach var="loc" items="${locations}">
                                                        	<option value="${loc.getId()}">${loc.getName()}</option>
                                                    	</c:forEach>
                                                    </select>
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group form-icon-right">
												<label for="dpd1">Trip Starts on</label> <input
													name="startdate1" class="form-control" id="dpd1"
													placeholder="Start" type="text" readonly> <i
													class="fa fa-calendar"></i>
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group form-icon-right">
												<label for="dpd2">Trip Ends on</label> <input
													name="enddate1" class="form-control" id="dpd2"
													placeholder="end" type="text" readonly> <i
													class="fa fa-calendar"></i>
												</div>
											</div>

											<div class="clear"></div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group">

													<label>Expected People</label> <input type="number" name="totalPeople" id="totalPeople"
														class="form-control" required />
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group">

													<label>Vacancies Left</label> <input type="number" name="vacancy" id="vacancy"
														class="form-control" required />
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group form-icon-right">
												<label for="dpdFlight1">Booking Allowed Untill</label> <input
													name="bookdate1" class="form-control" id="dpdFlight1"
													placeholder="Booking end" type="text" readonly> <i
													class="fa fa-calendar"></i>
												</div>


												<!-- <div class="form-group">

													<label>Booking Allowed Untill</label> <input type="date" name="bookEndDate1" id="bookEndDate1"
														class="form-control" required />
												</div> -->

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group">

													<label>Travel by</label> <input type="text" name="travelBy" id="travelBy"
														class="form-control" placeholder="Ex : Car" required />
													<!-- <select name="destination" class="select2-single form-control" data-placeholder="Choose Country">
														<option value="">Choose Country</option>
														<option value="Bangkok">Bangkok</option>
														<option value="Austria">Austria</option>
														<option value="Belgium">Belgium</option>
														<option value="Bosnia">Bosnia</option>
														<option value="Croatia">Croatia</option>
														<option value="Czech Republic">Czech Republic</option>
														<option value="Denmark">Denmark</option>
														<option value="Egypt">Egypt</option>
														<option value="England">England</option>
														<option value="Estonia">Estonia</option>
														<option value="Finland">Finland</option>
														<option value="France">France</option>
														<option value="Germany">Germany</option>
														<option value="Greece">Greece</option>
														<option value="Herzegovina">Herzegovina</option>
														<option value="Hungary">Hungary</option>
														<option value="Ireland">Ireland</option>
														<option value="Italy">Italy</option>
														<option value="Latvia">Latvia</option>
														<option value="Liechtenstein">Liechtenstein</option>
														<option value="Lithuania">Lithuania</option>
														<option value="Luxembourg">Luxembourg</option>
														<option value="Monaco">Monaco</option>
														<option value="Montenegro">Montenegro</option>
														<option value="Netherlands">Netherlands</option>
														<option value="Northern Ireland">Northern Ireland</option>
														<option value="Poland">Poland</option>
														<option value="Portugal">Portugal</option>
														<option value="Russia">Russia</option>
														<option value="Scotland">Scotland</option>
														<option value="Serbia">Serbia</option>
														<option value="Slovakia">Slovakia</option>
														<option value="Slovenia">Slovenia</option>
														<option value="Spain">Spain</option>
														<option value="Sweden">Sweden</option>
														<option value="Switzerland">Switzerland</option>
														<option value="Turkey">Turkey</option>
														<option value="Vatican City">Vatican City</option>
														<option value="Wales">Wales</option>
													</select> -->
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">

												<div class="form-group">

													<label>Description</label>
													<textarea type="text" class="form-control" name="description" id="description"
														placeholder="Description about Trip ...."></textarea>
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xs-12 col-sm-6 col-md-5">

												<button class="btn btn-danger">Post</button>

											</div>

										</div>

									</form>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<footer class="main-footer">

				<!-- <div class="container">
				
					<div class="row">
					
						<div class="col-sm-12 col-sm-5 col-md-6">
						
							<div class="row">
								<div class="footer-about col-sm-10 col-md-8">
									<div class="footer-logo">
										<a href="#home">EXTRETION</a>
									</div>
								
								<p class="about-us-footer">Abilities or he perfectly pretended so strangers be exquisite. Oh to another chamber pleased imagine do in. Went me rank at last loud shot an draw. Excellent so to no sincerity smallness... <a href="#" class="font-italic bb-dotted">read more</a></p>
								
								<p class="copy-right font12">&#169; Copyright 2015 EXTRETION - Responsive Template.</p>
								
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
										<li><a href="#"><i class="fa fa-facebook-official mr-5"></i> Facebook</a></li>
										<li><a href="#"><i class="fa fa-twitter mr-5"></i> Twitter</a></li>
										<li><a href="#"><i class="fa fa-google-plus mr-5"></i> Google Plus</a></li>
										<li><a href="#"><i class="fa fa-codepen mr-5"></i> Codepen</a></li>
										<li><a href="#"><i class="fa fa-behance mr-5"></i> Behance</a></li>
										<li><a href="#"><i class="fa fa-github mr-5"></i> Github</a></li>
									</ul>
									
								</div>
							
							</div>
						
						</div>
						
					</div>
					
				</div> -->

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

	<script type="text/javascript" src="js/select2.full.js"></script>

	<!-- Date Piacker -->
	<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="js/customs-datepicker.js"></script>

	<script>
		/**
		 * Select 2
		 */
		$(".select2-single").select2({
			allowClear : true
		});
		$(".select2-single-no-search").select2({
			allowClear : false,
			minimumResultsForSearch : Infinity
		});
		$(".select2-multi").select2({});
	</script>

</body>



<!-- Mirrored from crenoveative.com/envato/extretion/dashboard-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:18:13 GMT -->
</html>