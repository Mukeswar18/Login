<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>

</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>CollabEduUnity</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/index-styles.css">
</head>
<body id="page-top">
	
	<nav
		class="navbar navbar-expand-lg bg-dark fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">ZERO WASTE</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-info text-black rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#test">TEST</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">ABOUT</a></li>
					<li class="nav-item mx-0 mx-lg-1 text-dark"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">LOGOUT</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-warning"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="profile.jsp"><%=session.getAttribute("name")%></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section bg-warning text-secondary mb-3" id="test">
	
	<div class="container">
	<h2 class="page-section-heading text-center text-uppercase text-secondary">Test</h2>
		<div class="divider-custom divider-secondary">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-3 col-lg-2 mb-2">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1">
						<a class="nav-link text-dark" href="Hackell.jsp">
						<img class="img-fluid rounded-circle" src="Images/2.png"
							alt="..." />
							</a>
					</div>
				</div>
				
				<div class="col-md-3 col-lg-2 mb-2">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<a class="nav-link text-dark" href="Swift.jsp">
						<img class="img-fluid rounded-circle" src="Images/3.png"
							alt="..." />
							 </a>
							
                    
                 
					</div>
				</div>
				
	</div>
	</section>
	<section class="page-section bg-secondary text-black mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto text-light">
					<p class="lead">Online integrated platform for projects taken up by the students of various universities/colleges</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead"></p>
				</div>
			</div>
			
			
		</div>
	</section>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
