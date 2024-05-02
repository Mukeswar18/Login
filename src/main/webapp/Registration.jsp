<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	<link rel="stylesheet" href="css/styles1.css">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

<div class="wrapper">
    <div class="title">
      Registration Form
    </div>
    <form method="post" action="registers" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="fname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="fname" id="fname" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="lname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="lname" id="lname" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="type"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="type" id="type" placeholder="buyer/seller" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							
							
							<div class="form-group">
								<label for="phone"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="phone" id="phone"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<label for="address"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="address" id="address" placeholder="address" />
							</div>
							<div class="form-group">
								<label for="pcode"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="pcode" id="pcode" placeholder="postalcode" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
							</form>
    
</div>
	
</body>
</html>