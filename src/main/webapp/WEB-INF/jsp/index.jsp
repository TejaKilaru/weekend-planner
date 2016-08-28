<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">


<!-- Mirrored from crenoveative.com/envato/extretion/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:13:32 GMT -->
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

<body class="">

	<div id="introLoader" class="introLoading"></div>

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

							<h4 class="text-center mb-15" id="google-botton">Sign-in</h4>

							<button class="btn btn-google btn-block"
								style="background-color: #dc4a38; color: white">Sign-in
								with Google</button>

							<!-- <div class="modal-seperator mb-40">
								<span>or</span>
							</div> -->

							<!-- <div class="form-group mb-0">
								<input id="login_username" class="form-control mb-5"
									placeholder="username" type="text">
							</div> -->
							<!-- <div class="form-group mb-0">
								<input id="login_password" class="form-control mb-5"
									placeholder="password" type="password">
							</div> -->

							<!-- <div class="form-group mb-0 mt-10">
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
							</div> -->

						</div>

						<!-- <div class="modal-footer pt-25 pb-5">

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

						</div> -->
					</form>
					<!-- End # Login Form -->

					<!-- Begin | Lost Password Form -->
					<!-- <form id="lost-form" style="display: none;">
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

					</form> -->
					<!-- End | Lost Password Form -->

					<!-- Begin | Register Form -->
					<!-- 				<form id="register-form" style="display: none;">

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

					</form> -->
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
							<li><a href="#">Home</a> <!-- 	<ul>
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
								</ul>
							</li> -->
							<li><a href="result-page-list.html">Pages</a> <!-- 			<ul>
									<li><a href="#">Dashboard</a>
										<ul>
											<li><a href="dashboard-my-booking.html">My Bookings</a></li>
											<li><a href="dashboard-message-list.html">Message
													List</a></li>
											<li><a href="dashboard-message-list-detail.html">Message
													List Detail</a></li>
											<li><a href="dashboard-message-list-toggle.html">Message
													List Toggle Style</a></li>
											<li><a href="dashboard-profile.html">Profile</a></li>
											<li><a href="dashboard-billing.html">Billing</a></li>
											<li><a href="dashboard-user-pass.html">User &amp;
													Password</a></li>
										</ul></li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
									<li><a href="blog-single.html">Blog Single</a></li>
									<li><a href="blog-single-left-sidebar.html">Blog
											Single Left Sidebar</a></li>
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
								<!-- <li class="dropdown bt-dropdown-click"><a
									id="currency-dropdown" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false"> <i class="ion-social-usd hidden-xss"></i>
										Dollar <span class="caret"></span>
								</a>
									<ul class="dropdown-menu" aria-labelledby="currency-dropdown">
										<li><a href="#"><i class="ion-social-usd"></i> Dollar</a></li>
										<li><a href="#"><i class="ion-social-euro"></i>
												Europe</a></li>
										<li><a href="#"><i class="ion-social-yen"></i> Yen</a></li>
									</ul></li>
								<li class="dropdown bt-dropdown-click"><a
									id="language-dropdown" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false"> <i
										class="ion-android-globe hidden-xss"></i> English <span
										class="caret"></span>
								</a>
									<ul class="dropdown-menu" aria-labelledby="language-dropdown">
										<li><a href="#">English</a></li>
										<li><a href="#">France</a></li>
										<li><a href="#">Japanese</a></li>
									</ul></li> -->
								<li>${user}</li>
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

			<!-- start hero-header -->
			<div class="hero"
				style="background-image: url('images/hero-header/03.jpg');">

				<div class="container">

					<div class="hero-texting">

						<!-- Hero heading -->
						<h1>Find Your Dream Trip</h1>

						<!-- Hero subheading -->
						<p>More than 100,000 Trips Are Active</p>

					</div>

					<div class="main-search-wrapper">

						<div class="inner animated">

							<form action="search" class="row gap-20">

								<div class="col-xs-12 col-sm-12 form-lg">

									<div class="typeahead-container form-group form-icon-right">

										<label>Location</label> <select class="form-control"
											name="locationid" id="locationid">
											<c:forEach var="loc" items="${locations}">
												<option value="${loc.getId()}">${loc.getName()}
													----- ${loc.getType()}</option>
											</c:forEach>
										</select>

										<!-- <label class="destination-search-3">Where do you want
											to go?</label>
 -->
										<!-- <div class="typeahead-field">
											<input id="destination-search-3" name="destination-search-3"
												type="search" autocomplete="off" class="form-control"
												placeholder="Try to type: new">
										</div> -->
										<i class="fa fa-map-marker"></i>
									</div>

								</div>

								<div class="col-xss-12 col-xs-12 col-sm-5">

									<div class="row gap-20">

										<div class="col-xss-12 col-xs-6 col-sm-6">
											<div class="form-group form-icon-right">
												<label for="dpd1">After</label> <input name="afterdate1"
													class="form-control" id="dpd1" placeholder="Check-in"
													type="text" readonly> <i class="fa fa-calendar"></i>
											</div>
										</div>

										<div class="col-xss-12 col-xs-6 col-sm-6">
											<div class="form-group form-icon-right">
												<label for="enddate1">Before</label> <input name="enddate1"
													class="form-control" id="dpd2" placeholder="Check-out"
													type="text" readonly> <i class="fa fa-calendar"></i>
											</div>
										</div>

									</div>
								</div>

								<div class="col-xss-12 col-xs-12 col-sm-7">

									<div class="row gap-20">
										<div class="col-xss-12 col-xs-4 col-sm-4">

											<div class="form-group form-spin-group">
												<label for="vacancy">Vacancy</label> <input type="text"
													class="form-control form-spin" value="1" id="vacancy"
													name="vacancy" />
											</div>

										</div>

										<div class="col-xss-12 col-xs-4 col-sm-4">

											<div class="form-group form-spin-group">
												<label for="maxavgcost">Average Cost</label> <input
													type="number" class="form-control form-spin" value="1000"
													id="maxavgcost" name="maxavgcost" />
											</div>

										</div>

										<div class="col-xss-12 col-xs-4 col-sm-4">

											<div class="form-group form-spin-group">
												<label for="days">Days</label> <input type="number"
													class="form-control form-spin" value="1" id="days"
													name="days" />
											</div>

										</div>
									</div>

								</div>

								<div class="col-xs-12">

									<div class="row">

										<div
											class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 text-center">
											<button class="btn btn-block btn-primary btn-lg btn-icon">
												Search <span class="icon"><i class="fa fa-search"></i></span>
											</button>
										</div>

									</div>

								</div>

							</form>


						</div>

					</div>

				</div>

			</div>
			<!-- end hero-header -->

			<div class="clear"></div>

			<div class="post-hero">

				<div class="container mb-5">

					<div class="row">

						<div class="col-sm-4">

							<div class="featured-item-03 clearfix">

								<div class="icon">
									<i class="et-line-trophy"></i>
								</div>

								<div class="content">

									<h5>Quality Assured</h5>
									<p>So by colonel hearted ferrars. Draw from upon here gone
										add one. He in sportsman household otherwise.</p>

								</div>

							</div>

						</div>

						<div class="col-sm-4">

							<div class="featured-item-03 clearfix">

								<div class="icon">
									<i class="et-line-wallet"></i>
								</div>

								<div class="content">

									<h5>Book Now, Pay Later</h5>
									<p>Whatever throwing we on resolved entrance together
										graceful. Mrs assured add private married removed.</p>

								</div>

							</div>

						</div>

						<div class="col-sm-4">

							<div class="featured-item-03 clearfix">

								<div class="icon">
									<i class="et-line-heart"></i>
								</div>

								<div class="content">

									<h5>We Care, You Happy</h5>
									<p>Dependent certainty off discovery him his tolerably
										offending. Ham for attention remainder sometimes.</p>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="container pt-50 pb-60">

				<div class="row">

					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

						<div class="section-title">
							<h2>Top Destinations</h2>
						</div>

					</div>

				</div>

				<div class="top-destination-wrapper">
					<div class="row gap-20">
						<c:forEach var="loc" items="${locations}">

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3">
								<div class="top-destination-item">
									<a href="#">
										<div class="image">
											<img src="images/locations/${loc.getImageUrl()}"
												alt="Top Trip Locations">
										</div>
										<div class="content">
											<div class="row gap-10">
												<div class="col-xs-7 place">
													<h4>${loc.getName()}</h4>
													<p>${loc.getType()}</p>
												</div>

												<div class="col-xs-5 price">
													<p><%=(int) (Math.random() * 10)%>
														Trips
													</p>
													<p class="icon">
														<i class="ri ri-chevron-right-circle"></i>
													</p>
												</div>

											</div>
										</div>
									</a>
								</div>
							</div>

						</c:forEach>


					</div>

				</div>

			</div>

			<div class="clear"></div>

			<!-- <div class="bg-white pt-50 pb-60">

				<div class="container">

					<div class="row">

						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

							<div class="section-title">
								<h2>Popular Accommodations</h2>
								<p>Particular unaffected projection sentiments. Mind mrs yet
									did quit high even you went. Sex against the two however not
									nothing prudent colonel greater.</p>
							</div>

						</div>

					</div>

					<div class="top-hotel-grid-wrapper">

						<div class="row gap-20">

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<div class="bg-primary hotel-tag">
										<i class="fa fa-tag"></i> Best Price
									</div>
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/01.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Excellent</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<div class="bg-danger hotel-tag">
										<i class="fa fa-trophy"></i> Top Rated
									</div>
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/02.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Phulay Bay Resort</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Phuket,
												Thailand
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Good</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/03.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>B P International Hotel</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Hong Kong,
												China
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Wonderful</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/04.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Phulay Bay Resort</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Phuket,
												Thailand
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Exeptional</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/02.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Phulay Bay Resort</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Phuket,
												Thailand
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Wonderful</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/01.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Hotel Metropolitan Tokyo</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Tokyo, Japan
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Wonderful</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/04.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>Phulay Bay Resort</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Phuket,
												Thailand
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Wonderful</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="col-xss-12 col-xs-6 col-sm-4 col-md-3"
								data-match-height="result-grid">
								<div class="hotel-item-grid">
									<a href="#">
										<div class="image">
											<img src="images/top-destinations/03.jpg"
												alt="Top Destinations">
										</div>
										<div class="heading">
											<div class="raty-wrapper sp-2 mb-5">
												<div class="star-rating-12px" data-rating-score="4"></div>
											</div>
											<h4>B P International Hotel</h4>
											<p>
												<i class="fa fa-map-marker text-primary"></i> Hong Kong,
												China
											</p>
										</div>
										<div class="content">
											<div class="row gap-5">
												<div class="col-xs-6 col-sm-6">
													<div class="tripadvisor-module">
														<div class="texting">Wonderful</div>
														<div class="hover-underline">324 reviews</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-6">
													<p class="price">
														<span class="block">start from</span><span class="number">$187</span>
														/ night
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="overflow-hidden">

				<div class="row gap-0 table-div">

					<div class="col-xs-12 col-sm-6 table-cell-div bg-primary">

						<div class="sell-or-buy">

							<div class="icon">
								<i class="et-line-briefcase"></i>
							</div>

							<div class="clear"></div>

							<div class="content">

								<h3 class="uppercase">Traveller</h3>

								<p>Denote simple fat denied add worthy little use. As some
									he so high down am week. Conduct esteems by cottage to pasture
									we winding. On assistance he cultivated considered frequently.</p>

								<a href="#">Sign-up</a>

							</div>

						</div>

					</div>

					<div class="col-xs-12 col-sm-6 table-cell-div bg-warning">

						<div class="sell-or-buy">

							<div class="icon">
								<i class="et-line-map"></i>
							</div>

							<div class="clear"></div>

							<div class="content">

								<h3 class="uppercase">Property Owner</h3>

								<p>Pasture he invited mr company shyness. But when shot real
									her. Chamber her observe visited removal six sending himself
									boy. At exquisite existence if an oh dependent excellent.</p>

								<a href="#">Become a host</a>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="container pt-50 pb-50">

				<div class="container">

					<div class="row">

						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

							<div class="section-title">
								<h2>WHAT PEOPLE SAY ABOUT US</h2>
							</div>

						</div>

					</div>

					<div class="row">

						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

							<div class="slick-gallery-slideshow slick-testimonial-wrapper">

								<div class="slider gallery-slideshow slick-testimonial">

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">If we landlord stanhill mr whatever
												pleasure supplied concerns so. Exquisite by it admitting
												cordially september newspaper an. Acceptance middletons am
												it favourable. It it oh happen lovers afraid.</p>

											<h4 class="uppercase text-primary">Frank Abagnale</h4>
											<p class="he">New York, USA</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Sympathize did now preference
												unpleasing mrs few. Mrs for hour game room want are fond
												dare. For detract charmed add talking age.</p>

											<h4 class="uppercase text-primary">Charles Ponzi</h4>
											<p class="he">Rome, Italy</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Who connection imprudence middletons
												too but increasing celebrated principles joy. Herself too
												improve gay winding ask expense are compact.</p>

											<h4 class="uppercase text-primary">Joseph Weil</h4>
											<p class="he">Berlin, German</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Dashwood contempt on mr unlocked
												resolved provided of of. Stanhill wondered it it welcomed
												oh. Hundred no prudent he however smiling at an offence.</p>

											<h4 class="uppercase text-primary">Victor Lustig</h4>
											<p class="he">Paris, France</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Preference imprudence contrasted to
												remarkably in on. Taken now you him trees tears any. Her
												object giving end sister except oppose.</p>

											<h4 class="uppercase text-primary">George Parker</h4>
											<p class="he">New York, USA</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Simplicity end themselves increasing
												led day sympathize yet. General windows effects not are
												drawing man garrets. Common indeed garden you his ladies out
												yet.</p>

											<h4 class="uppercase text-primary">Soapy Smith</h4>
											<p class="he">Alaska, USA</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Ladyship it daughter securing procured
												or am moreover mr. Put sir she exercise vicinity cheerful
												wondered. Continual say suspicion provision you neglected
												sir curiosity unwilling.</p>

											<h4 class="uppercase text-primary">Eduardo de Valfierno</h4>
											<p class="he">Berlin, German</p>

										</div>

									</div>

									<div class="slick-item">

										<div class="testimonial-long">

											<p class="saying">Far quitting dwelling graceful the
												likewise received building. An fact so to that show am shed
												sold cold. Unaffected remarkably get yet introduced
												excellence terminated led.</p>

											<h4 class="uppercase text-warning">James Hogue</h4>
											<p class="he">Utah, USA</p>

										</div>

									</div>

								</div>

								<div class="clear"></div>

								<div class="slider gallery-nav slick-testimonial-nav alt">
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/01.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/02.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/03.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/04.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/05.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/06.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/07.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/08.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/09.jpg" alt="image" />
											</div>
										</div>
									</div>
									<div class="slick-item">
										<div class="testimonial-man">
											<div class="image">
												<img src="images/man/10.jpg" alt="image" />
											</div>
										</div>
									</div>
								</div>

								<div class="clear mb-5"></div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="bg-white pt-50 pb-60">

				<div class="container">

					<div class="row">

						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

							<div class="section-title">
								<h2>Travel Guides &amp; Tips</h2>
								<p>Feelings laughing at no wondered repeated provided
									finished. Possession her thoroughly remarkably terminated man
									continuing. Can friendly laughter goodness man him appetite.</p>
							</div>

						</div>

					</div>

					<div class="recent-post-wrapper">

						<div class="row gap-20">

							<div class="col-xs-12 col-sm-6" data-match-height="recent-post">

								<div class="recent-post">

									<div class="image"
										style="background-image: url('images/blog/01.jpg');"></div>

									<div class="content">

										<div class="meta">
											<i class="fa fa-calendar"></i> <a href="#">Nov 17, 2015</a> <span
												class="mh-5">|</span> <i class="fa fa-user"></i> <a href="#">
												admin</a>
										</div>

										<h4>Five Essential Items for Your Next Cruise</h4>

										<p>Say ferrars demands besides her address. Blind going
											you merit few fancy their...</p>

										<a href="#" class="btn-read-more">read more <i
											class="fa fa-long-arrow-right"></i></a>

									</div>

								</div>

							</div>

							<div class="col-xs-12 col-sm-6" data-match-height="recent-post">

								<div class="recent-post">

									<div class="image"
										style="background-image: url('images/blog/02.jpg');"></div>

									<div class="content">

										<div class="meta">
											<i class="fa fa-calendar"></i> <a href="#">Nov 17, 2015</a> <span
												class="mh-5">|</span> <i class="fa fa-user"></i> <a href="#">
												admin</a>
										</div>

										<h4>Family Reunion Planning During the Holidays</h4>

										<p>Six started far placing saw respect females old.
											Civilly why how end viewing...</p>

										<a href="#" class="btn-read-more">read more <i
											class="fa fa-long-arrow-right"></i></a>

									</div>

								</div>

							</div>

							<div class="col-xs-12 col-sm-6" data-match-height="recent-post">

								<div class="recent-post clearfix">

									<div class="image"
										style="background-image: url('images/blog/03.jpg');"></div>

									<div class="content">

										<div class="meta">
											<i class="fa fa-calendar"></i> <a href="#">Nov 17, 2015</a> <span
												class="mh-5">|</span> <i class="fa fa-user"></i> <a href="#">
												admin</a>
										</div>

										<h4>Dental Care While Travel & Dental Tourism</h4>

										<p>Man particular insensible celebrated conviction
											stimulated principles day. Sure fail...</p>

										<a href="#" class="btn-read-more">read more <i
											class="fa fa-long-arrow-right"></i></a>

									</div>

								</div>

							</div>

							<div class="col-xs-12 col-sm-6" data-match-height="recent-post">

								<div class="recent-post">

									<div class="image"
										style="background-image: url('images/blog/04.jpg');"></div>

									<div class="content">

										<div class="meta">
											<i class="fa fa-calendar"></i> <a href="#">Nov 17, 2015</a> <span
												class="mh-5">|</span> <i class="fa fa-user"></i> <a href="#">
												admin</a>
										</div>

										<h4>Packing Lists - Create Your Own Packing List</h4>

										<p>Greatest properly off ham exercise all. Unsatiable
											invitation its possession nor...</p>

										<a href="#" class="btn-read-more">read more <i
											class="fa fa-long-arrow-right"></i></a>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="clear"></div>

			<div class="instagram-full-wrapper">

				<div class="container">

					<div class="row">

						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

							<div class="section-title">

								<p class="p-top">Follow us on</p>
								<h4>
									Instagram <a href="#"><i class="fa fa-at"></i> EXTRETION</a>
								</h4>

							</div>

						</div>

					</div>

				</div>

				<div class="instagram-wrapper">
					<div id="instagram" class="instagram"></div>
				</div>

			</div>

			<div class="clear"></div>

			<div class="bg-primary newsletter-wrapper">

				<div class="container">

					<div class="GridLex-grid-middle">

						<div class="GridLex-col-6_sm-12_xs-12 pt-0 pb-0">
							<div class="text-holder">
								<h3>Sign up for Newsletter</h3>
								<p>Sign up to get our latest exclusive updates, deals,
									offers and promotions</p>
							</div>
						</div>

						<div class="GridLex-col-6_sm-12_xs-12 pt-0 pb-0">
							<form class="footer-newsletter row gap-10">

								<div class="col-xss-12 col-xs-8 col-sm-8">

									<input type="email" placeholder="Enter Your Email"
										class="form-control mb-0" name="email">

								</div>

								<div class="col-xss-12 col-xs-4 col-sm-4 mt-10-xss">
									<input type="submit" class="btn btn-block btn-danger"
										value="Submit">
								</div>

							</form>
						</div>

					</div>

				</div>

			</div> -->

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
										EXTRETION - Responsive Template.</p> -->

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
		<!-- end Main Wrapper -->

	</div>
	<!-- / .wrapper -->
	<!-- end Container Wrapper -->

	<!-- start Back To Top -->
	<div id="back-to-top">
		<a href="#"><i class="ion-ios-arrow-up"></i></a>
	</div>
	<!-- end Back To Top -->


	<%@include file="footer.jsp"%>
</body>



<!-- Mirrored from crenoveative.com/envato/extretion/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:13:32 GMT -->
</html>