   <%@ page import="java.util.List" %>
<%@include file="/inc/header.jsp" %>

<body class="">
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ navigation menu ] start -->
	
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed">
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
			<a href="index.html" class="b-brand">
				<img src="assets/images/logo.svg" alt="" class="logo images">
				<img src="assets/images/logo-icon.svg" alt="" class="logo-thumb images">
			</a>
		</div>
		<a class="mobile-menu" id="mobile-header" href="#!">
			<i class="feather icon-more-horizontal"></i>
		</a>
		<div class="collapse navbar-collapse">
			<a href="#!" class="mob-toggler"></a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<div class="main-search open">
						<div class="input-group">
							<input type="text" id="m-search" class="form-control" placeholder="Search . . .">
							<a href="#!" class="input-group-append search-close">
								<i class="feather icon-x input-group-text"></i>
							</a>
							<span class="input-group-append search-btn btn btn-primary">
								<i class="feather icon-search input-group-text"></i>
							</span>
						</div>
					</div>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li>
					<div class="dropdown">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
						<div class="dropdown-menu dropdown-menu-right notification">
							<div class="noti-head">
								<h6 class="d-inline-block m-b-0">Notifications</h6>
								<div class="float-right">
									<a href="#!" class="m-r-10">mark as read</a>
									<a href="#!">clear all</a>
								</div>
							</div>
							<ul class="noti-body">
								<li class="n-title">
									<p class="m-b-0">NEW</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>John Doe</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>5 min</span></p>
											<p>New ticket Added</p>
										</div>
									</div>
								</li>
								<li class="n-title">
									<p class="m-b-0">EARLIER</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
											<p>Prchace New Theme and make payment</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
											<p>currently login</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
											<p>Prchace New Theme and make payment</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>1 hour</span></p>
											<p>currently login</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
										<div class="media-body">
											<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>2 hour</span></p>
											<p>Prchace New Theme and make payment</p>
										</div>
									</div>
								</li>
							</ul>
							<div class="noti-footer">
								<a href="#!">show all</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown drp-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon feather icon-settings"></i>
						</a>
						<div class="dropdown-menu dropdown-menu-right profile-notification">
							<div class="pro-head">
								<img src="assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
								<span>John Doe</span>
								<a href="auth-signin.html" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a>
							</div>
							<ul class="pro-body">
								<li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
								<li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
								<li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
								<li><a href="auth-signin.html" class="dropdown-item"><i class="feather icon-lock"></i> Lock Screen</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<!-- [ Header ] end -->
	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">
		<div class="pcoded-wrapper">
			<div class="pcoded-content">
				<div class="pcoded-inner-content">
					<div class="main-body">
						<div class="page-wrapper">
							<!-- [ breadcrumb ] start -->
							<div class="page-header">
								<div class="page-block">
									<div class="row align-items-center">
										<div class="col-md-12">
											<div class="page-header-title">
												<h5 class="m-b-10">Breadcrumbs &amp; Pagination</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Basic Components</a></li>
												<li class="breadcrumb-item"><a href="#!">Breadcrumbs &amp; Pagination</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- [ breadcrumb ] end -->
							<!-- [ Main Content ] start -->
							<div class="row">
								<!-- [ Breadcrumbs & Pagination ] start -->
								<div class="col-sm-6">
									<div class="card">
										<div class="card-header">
											<h5>Breadcrumb</h5>
										</div>
										<div class="card-body">
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item active" aria-current="page">Home</li>
												</ol>
											</nav>
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item"><a href="#!">Home</a></li>
													<li class="breadcrumb-item active" aria-current="page">Library</li>
												</ol>
											</nav>
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item"><a href="#!">Home</a></li>
													<li class="breadcrumb-item"><a href="#!">Library</a></li>
													<li class="breadcrumb-item active" aria-current="page">Data</li>
												</ol>
											</nav>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="card">
										<div class="card-header">
											<h5>Breadcrumb Icon</h5>
										</div>
										<div class="card-body">
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item active" aria-current="page"><i class="feather icon-home"></i></li>
												</ol>
											</nav>
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item"><a href="#!"><i class="feather icon-home"></i></a></li>
													<li class="breadcrumb-item active" aria-current="page">Library</li>
												</ol>
											</nav>
											<nav aria-label="breadcrumb">
												<ol class="breadcrumb">
													<li class="breadcrumb-item"><a href="#!"><i class="feather icon-home"></i></a></li>
													<li class="breadcrumb-item"><a href="#!">Library</a></li>
													<li class="breadcrumb-item active" aria-current="page">Data</li>
												</ol>
											</nav>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>Pagination</h5>
										</div>
										<div class="card-body">
											<nav aria-label="Page navigation example">
												<ul class="pagination">
													<li class="page-item"><a class="page-link" href="#!">Previous</a></li>
													<li class="page-item"><a class="page-link" href="#!">1</a></li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
													<li class="page-item"><a class="page-link" href="#!">Next</a></li>
												</ul>
											</nav>
											<h5 class="mt-5">Working with Icons</h5>
											<hr>
											<nav aria-label="Page navigation example">
												<ul class="pagination">
													<li class="page-item"><a class="page-link" href="#!" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
													<li class="page-item"><a class="page-link" href="#!">1</a></li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
													<li class="page-item"><a class="page-link" href="#!" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
												</ul>
											</nav>
											<h5 class="mt-5">Disabled and Active States</h5>
											<hr>
											<nav aria-label="...">
												<ul class="pagination">
													<li class="page-item disabled"><span class="page-link">Previous</span></li>
													<li class="page-item"><a class="page-link" href="#!">1</a></li>
													<li class="page-item active"><span class="page-link">2<span class="sr-only">(current)</span></span>
													</li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
													<li class="page-item"><a class="page-link" href="#!">Next</a></li>
												</ul>
											</nav>
											<h5 class="mt-5">Sizing</h5>
											<hr>
											<nav class="mb-4" aria-label="...">
												<ul class="pagination pagination-lg">
													<li class="page-item disabled">
														<a class="page-link" href="#!" tabindex="-1">1</a>
													</li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
												</ul>
											</nav>
											<nav aria-label="...">
												<ul class="pagination pagination-sm">
													<li class="page-item disabled">
														<a class="page-link" href="#!" tabindex="-1">1</a>
													</li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
												</ul>
											</nav>
											<h5 class="mt-5">Alignment</h5>
											<hr>
											<nav aria-label="Page navigation example">
												<ul class="pagination justify-content-center">
													<li class="page-item disabled">
														<a class="page-link" href="#!" tabindex="-1">Previous</a>
													</li>
													<li class="page-item"><a class="page-link" href="#!">1</a></li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
													<li class="page-item">
														<a class="page-link" href="#!">Next</a>
													</li>
												</ul>
											</nav>
											<nav aria-label="Page navigation example">
												<ul class="pagination justify-content-end">
													<li class="page-item disabled">
														<a class="page-link" href="#!" tabindex="-1">Previous</a>
													</li>
													<li class="page-item"><a class="page-link" href="#!">1</a></li>
													<li class="page-item"><a class="page-link" href="#!">2</a></li>
													<li class="page-item"><a class="page-link" href="#!">3</a></li>
													<li class="page-item">
														<a class="page-link" href="#!">Next</a>
													</li>
												</ul>
											</nav>
										</div>
									</div>
								</div>
								<!-- [ Breadcrumbs & Pagination ] end -->
							</div>
							<!-- [ Main Content ] end -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [ Main Content ] end -->

	<!-- Warning Section start -->
	<!-- Older IE warning message -->
	<!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
	<!-- Warning Section Ends -->

	<!-- Required Js -->
	<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/pcoded.min.js"></script>

</body>

</html>
