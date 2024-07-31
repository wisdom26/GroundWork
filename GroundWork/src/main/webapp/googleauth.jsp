<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Google Sign-In Example</title>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="488216707093-s4kclf88571hl3ebuskrj859vjsc82q2.apps.googleusercontent.com">
</head>
<body>
    <div class="g-signin2" data-onsuccess="onSignIn"></div>
    <img id="myImg" style="display:none;">
    <br>
    <p id="name"></p>
    <div id="status"></div>
  

    <script>
        function onSignIn(googleUser) {
            var profile = googleUser.getBasicProfile();
            var imageUrl = profile.getImageUrl();
            var name = profile.getName();
            var email = profile.getEmail();

            document.getElementById("myImg").src = imageUrl;
            document.getElementById("myImg").style.display = 'block';
            document.getElementById("name").innerHTML = 'Welcome ' + name + '!';
            document.getElementById("status").innerHTML = '<a href="GoogleSignIn?email=' + encodeURIComponent(email) + '&name=' + encodeURIComponent(name) + '&imageUrl=' + encodeURIComponent(imageUrl) + '">Continue with Google login</a>';
            
            // Hide the sign-in button after successful sign-in
            document.querySelector('.g-signin2').style.display = 'none';
        }

        function myFunction() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                console.log('User signed out.');
                location.reload(); // Reload the page after sign-out
            });
        }
    </script>
</body>
</html>
