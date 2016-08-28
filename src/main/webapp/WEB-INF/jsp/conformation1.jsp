<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
							<li><a href="index">Home</a> </li>
							<li><a href="search">Trips</a> </li>
							<li class="mega-menu hidden-sm hidden-xs"><a
								href="createform">Create Trip</a> </li>
						</ul>

					</div>
					<!--/.nav-collapse -->

					<div class="pull-right">

						<div class="navbar-mini">
							<ul class="clearfix">
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

			<div class="breadcrumb-wrapper">

				<div class="container">

				</div>

			</div>

			<div class="clear"></div>

			<div class="equal-content-sidebar-by-gridLex">

				<div class="container">

					<div class="GridLex-grid-noGutter-equalHeight">

						<div class="GridLex-col-1_sm-4_xs-12_xss-12">

						</div>

						<div class="GridLex-col-11_sm-8_xs-12_xss-12">

							<div class="content-wrapper">

								<div class="dashboard-content">

									<div class="row">

										<div class="col-xs-12 col-sm-10 col-md-9">

											<div class="dashboard-heading">
												<h3>Successfully Succesfully Signed up to Trip</h3>
												<br />
												<br />
												<b>Details</b>
											</div>

										</div>

									</div>

									<form action="search" method='get'>

										<div class="row">

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<b>Average Cost : </b> ${trip.getAvgCost()}
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">

												<div class="form-group">
													<b>Location : </b> ${trip.locationentityGet().getName()}
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<c:set var="sdate" value="${fn:substring(trip.getStartDate(), 0, 10)}" />
												<fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getStartDate() }" var="date0" />
                                        		<fmt:formatDate value="${date0}" pattern="dd MMM yyyy"
                                                        var="sdate" />
												<b>Trip Starts on : </b> ${sdate}
											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">

												<div class="form-group form-icon-right">
												<fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getEndDate() }" var="date0" />
                                        		<fmt:formatDate value="${date0}" pattern="dd MMM yyyy"
                                                        var="edate" />
												<b>Trip Ends on : </b> ${edate}
												</div>
											</div>

											<div class="clear"></div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
												<b>Expected People : </b> ${trip.getTotalPeople()}
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
												<b>Vacancies Left : </b>${trip.getVacancy()}
												</div>
											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<div class="form-group form-icon-right">

												<c:set var="bdate" value="${fn:substring(trip.getBookEndDate(), 0, 10)}" />
												<fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss"
                                                        value="${ trip.getBookEndDate() }" var="date0" />
                                        		<fmt:formatDate value="${date0}" pattern="dd MMM yyyy"
                                                        var="bdate" />
												<b>Booking Allowed Untill : </b>${bdate}
												</div>

											</div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">

												<div class="form-group">

													<b>Travel by : </b>${trip.getTravelBy()}
													
												</div>

											</div>

											<div class="clear"></div>

											<div class="col-xss-12 col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<b>Description : </b>${trip.getDescription()}
												</div>
											</div>

											<div class="clear"></div>

											<div class="col-xs-12 col-sm-6 col-md-6">

												<button class="btn btn-primary">Back to Trips</button>

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



<!-- Mirrored from crenoveative.com/envato/extretion/dashboard-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 25 Aug 2016 04:18:13 GMT -->
</html>