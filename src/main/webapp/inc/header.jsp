<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="content" />
	<meta name="keywords"
		content="content">
	<meta name="author" content="DennisSH" />

	<!-- Favicon icon -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
	<!-- fontawesome icon -->
	<link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">

	<!-- vendor css -->
	<link rel="stylesheet" href="assets/css/style.css">
	
<title><%
if(request.getAttribute("title")==null){
	out.print("Welcome to IW Fund Request System");
	
}
else{
	out.print(request.getAttribute("title"));
}

%></title>

	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->

</head>
 <nav class="pcoded-navbar menupos-fixed menu-light brand-blue ">
		<div class="navbar-wrapper ">
			<div class="navbar-brand header-logo">
				<a href="<%=request.getContextPath() %>/dashboardController?page=home" class="b-brand">
					<img src="assets/images/reqfunds.svg" alt="" class="logo images">
					<img src="assets/images/reqfunds.svg" alt="" class="logo-thumb images">
				</a>
				<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
			</div>
			<div class="navbar-content scroll-div">
				<ul class="nav pcoded-inner-navbar">
					<li class="nav-item pcoded-menu-caption">
						<label>Navigation</label>
					</li>
					<li class="nav-item">
						<a href="<%=request.getContextPath() %>/dashboardController?page=home" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
					</li>
					<!-- <li class="nav-item pcoded-menu-caption">
						<label>UI Element</label>
					</li> -->
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Fund Request</span></a>
						<ul class="pcoded-submenu">
							
							<li class=""><a href="<%=request.getContextPath() %>/dashboardController?page=addnewfund" class="">Add new Request</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/dashboardController?page=fundrequest" class="">Fund Request</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/dashboardController?page=approved" class="">Approved Request</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/dashboardController?page=disbursed" class="">Disbursed Funds</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/dashboardController?page=rejectedrequest" class="">Rejected Request</a></li>
							<!-- <li class=""><a href="bc_breadcrumb-pagination.jsp" class="">Breadcrumb & paggination</a></li> -->
						<!-- 	<li class=""><a href="bc_button.jsp" class="">Button</a></li>
							<li class=""><a href="bc_collapse.jsp" class="">Collapse</a></li>
							<li class=""><a href="bc_progress.jsp" class="">Progress</a></li>
							<li class=""><a href="bc_tabs.jsp" class="">Tabs & pills</a></li>
							<li class=""><a href="bc_typography.jsp" class="">Typography</a></li> -->
						</ul>
					</li>
					<!-- <li class="nav-item pcoded-menu-caption">
						<label>Forms &amp; table</label>
					</li> -->
					<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Account</span></a>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/useraccountController?page=addnewuser" class="">Add Users</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/useraccountController?page=userlist" class="">User List</a></li>
							<li class=""><a href="<%=request.getContextPath() %>/useraccountController?page=userrole" class="">User Role</a></li>
							
						</ul>
					</li>
					<li class="nav-item">
						<a href="<%=request.getContextPath() %>/dashboardController?page=report" class="nav-link"><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Report</span></a>
					</li>
					<!-- <li class="nav-item pcoded-menu-caption">
						<label>Chart & Maps</label>
					</li> -->
					<li class="nav-item">
						<a href="chart.jsp" class="nav-link"><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Stat</span></a>
					</li>
					<!-- <li class="nav-item">
						<a href="map-google.jsp" class="nav-link"><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
					</li> -->
					<!-- <li class="nav-item pcoded-menu-caption">
						<label>Pages</label>
					</li> -->
				<!-- 	<li class="nav-item pcoded-hasmenu">
						<a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span></a>
						<ul class="pcoded-submenu">
							<li class=""><a href="auth-signup.jsp" class="" target="_blank">Sign up</a></li>
							<li class=""><a href="auth-signin.jsp" class="" target="_blank">Sign in</a></li>
						</ul>
					</li> -->
					<li class="nav-item"><a href="setting.jsp" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Settings</span></a></li>
					<!-- <li class="nav-item disabled"><a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-power"></i></span><span class="pcoded-mtext">Disabled menu</span></a></li> -->
				</ul>
				<div class="card text-center">
				<!-- 	<div class="card-block">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
						<i class="feather icon-sunset f-40"></i>
						<h6 class="mt-3">Upgrade to pro</h6>
						<p>upgrade for get full themes and 30min support</p>
						<a href="https://codedthemes.com/item/flash-able-bootstrap-admin-template/" target="_blank" class="btn btn-gradient-primary btn-sm text-white m-0">Upgrade</a>
					</div> -->
				</div>
			</div>
		</div>
	</nav> 
	
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
			<a href="index.jsp" class="b-brand">
				<img src="assets/images/fundlogo.png" alt="" class="logo images">
				<img src="assets/images/fundlogo.png" alt="" class="logo-thumb images">
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
											<p><strong>Admin-Sussan</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>5 min</span></p>
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
								<span>Susan</span>
								<a href="auth-signin.jsp" class="dud-logout" title="Logout">
									<i class="feather icon-log-out"></i>
								</a>
							</div>
							<ul class="pro-body">
								<li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
								<li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
								<li><a href="message.jsp" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
								<li><a href="auth-signin.jsp" class="dropdown-item"><i class="feather icon-lock"></i> Lock Screen</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>

	
	