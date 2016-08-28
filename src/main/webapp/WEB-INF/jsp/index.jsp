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

							

						</div>
					</form>

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
							<li><a href="#">Home</a> </li>
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
											<option value="0">Choose Destination</option>
											<c:forEach var="loc" items="${locations}">
												<option value="${loc.getId()}">${loc.getName()}</option>
											</c:forEach>
										</select>

										
									</div>

								</div>

								<div class="col-xss-12 col-xs-12 col-sm-6">

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

								<div class="col-xss-12 col-xs-12 col-sm-6">

									<div class="row gap-20">
										<div class="col-xss-12 col-xs-6 col-sm-6">

											<div class="form-group form-spin-group">
												<label for="vacancy">Vacancy</label> <input type="text"
													class="form-control form-spin" value="1" id="vacancy"
													name="vacancy" />
											</div>

										</div>

										<div class="col-xss-12 col-xs-6 col-sm-6">

											<div class="form-group form-spin-group">
												<label for="maxavgcost">Average Cost</label> <input
													type="number" class="form-control form-spin" value="1000"
													id="maxavgcost" name="maxavgcost" />
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