<script src="https://apis.google.com/js/platform.js?onload=oauthReady" async defer></script>
<meta name="google-signin-client_id" content="198254696604-tssq8sme5k915jed8td74b7573d1qrdh.apps.googleusercontent.com">
	<script type="text/javascript">
	window.oauthReady = function(){
      gapi.load('auth2', function() {
          gapi.auth2.init();
        });
		function login() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signIn({
				scope : 'https://www.googleapis.com/auth/user.phonenumbers.read',
				redirect_uri : 'localhost:8080'
			}).then(function(a, b) {
				console.log(a);
			});
		}
		function logout() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('User signed out.');
			});
		}
		$('#login').on('click', login);
		$('#logout').on('click', logout);
}
</script>