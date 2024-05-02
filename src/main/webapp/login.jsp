<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>


<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
tr{
                background-color: #b3cf99;
                width: 600px;
                height: 50px;
                
            }
            body{
            background:#a3c585;
            }
            button {
    padding: 10px 20px;
    background-color: red;
    color: white;
    border: none;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
                   }
          container{
          width:50px;
          height:50px
                   }



</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

	<div class="main" >

		
		<section class="sign-in">
			<div class="container ">
				<div class="signin-content">
					<div class="signin-image">
						<a href="Registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<a href="forgotPassword.jsp">forgot password</a>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>
	
<script type="text/javascript">
var status=document.getElementById("status").value;
is(status=="failed"){
	swal("sorry","wrong user name or password","error");
	
}

</script>

	
</body>

</html>