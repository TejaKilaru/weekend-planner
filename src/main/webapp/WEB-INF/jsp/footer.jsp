	<!-- jQuery Cores -->
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>

	<!-- Bootstrap Js -->
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugins - serveral jquery plugins that use in this template -->
	<script type="text/javascript" src="js/plugins.js"></script>

	<!-- Custom js codes for plugins -->
	<script type="text/javascript" src="js/customs.js"></script>



	<!-- Google OAuth -->

	<script src="https://apis.google.com/js/platform.js?onload=oauthReady"
		async defer></script>
	<meta name="google-signin-client_id"
		content="198254696604-tssq8sme5k915jed8td74b7573d1qrdh.apps.googleusercontent.com">
	<script type="text/javascript">
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

	<!-- Date Piacker -->
	<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="js/customs-datepicker.js"></script>

