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
												<h5 class="m-b-10">Button</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Basic Components</a></li>
												<li class="breadcrumb-item"><a href="#!">Button</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- [ breadcrumb ] end -->
							<!-- [ Main Content ] start -->
							<!-- [ button ] start -->
							<div class="row">
								<!-- [ default-button ] start -->
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>Default</h5>
										</div>
										<div class="card-body">
											<button type="button" class="btn btn-primary" title="btn btn-primary" data-toggle="tooltip">Primary</button>
											<button type="button" class="btn btn-secondary" title="btn btn-secondary" data-toggle="tooltip">Secondary</button>
											<button type="button" class="btn btn-success" title="btn btn-success" data-toggle="tooltip">Success</button>
											<button type="button" class="btn btn-danger" title="btn btn-danger" data-toggle="tooltip">Danger</button>
											<button type="button" class="btn btn-warning" title="btn btn-warning" data-toggle="tooltip">Warning</button>
											<button type="button" class="btn btn-info" title="btn btn-info" data-toggle="tooltip">Info</button>
											<button type="button" class="btn btn-light" title="btn btn-light" data-toggle="tooltip">Light</button>
											<button type="button" class="btn btn-dark" title="btn btn-dark" data-toggle="tooltip">Dark</button>
											<button type="button" class="btn btn-link" title="btn btn-link" data-toggle="tooltip">Link</button>
										</div>
									</div>
								</div>
								<!-- [ default-button ] end -->

								<!-- [ outline-button ] start -->
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>Outline</h5>
										</div>
										<div class="card-body">
											<button type="button" class="btn btn-outline-primary" title="btn btn-outline-primary" data-toggle="tooltip">Primary</button>
											<button type="button" class="btn btn-outline-secondary" title="btn btn-outline-secondary" data-toggle="tooltip">Secondary</button>
											<button type="button" class="btn btn-outline-success" title="btn btn-outline-success" data-toggle="tooltip">Success</button>
											<button type="button" class="btn btn-outline-danger" title="btn btn-outline-danger" data-toggle="tooltip">Danger</button>
											<button type="button" class="btn btn-outline-warning" title="btn btn-outline-warning" data-toggle="tooltip">Warning</button>
											<button type="button" class="btn btn-outline-info" title="btn btn-outline-info" data-toggle="tooltip">Info</button>
											<button type="button" class="btn btn-outline-light" title="btn btn-outline-light" data-toggle="tooltip">Light</button>
											<button type="button" class="btn btn-outline-dark" title="btn btn-outline-dark" data-toggle="tooltip">Dark</button>
										</div>
									</div>
								</div>
								<!-- [ outline-button ] end -->
								<!-- [ size-button ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Sizes [ Large ]</h5>
										</div>
										<div class="card-body">
											<p>use <code>.btn-lg</code> in class <code>.btn</code> class to get Large button</p>
											<button type="button" class="btn btn-primary btn-lg">Large button</button>
											<button type="button" class="btn btn-secondary btn-lg">Large button</button>
										</div>
									</div>
								</div>
								<!-- [ size-button ] end -->
								<!-- [ size-small-button ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Sizes [ Small ]</h5>
										</div>
										<div class="card-body">
											<p>use <code>.btn-sm</code> in class <code>.btn</code> class to get Small button</p>
											<button type="button" class="btn btn-primary btn-sm">Small button</button>
											<button type="button" class="btn btn-secondary btn-sm">Small button</button>
										</div>
									</div>
								</div>
								<!-- [ size-small-button ] end -->
								<!-- [ checkbox-button ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Checkbox Button</h5>
										</div>
										<div class="card-body">
											<div class="btn-group-toggle" data-toggle="buttons">
												<label class="btn btn-secondary active">
													<input type="checkbox" checked> Checked</label>
											</div>
										</div>
									</div>
								</div>
								<!-- [ checkbox-button ] end -->
								<!-- [ radio-button ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Radio Buttons</h5>
										</div>
										<div class="card-body">
											<div class="btn-group btn-group-toggle" data-toggle="buttons">
												<label class="btn btn-secondary active">
													<input type="radio" name="options" id="option1" checked> Active</label>
												<label class="btn btn-secondary">
													<input type="radio" name="options" id="option2"> Radio</label>
												<label class="btn btn-secondary">
													<input type="radio" name="options" id="option3"> Radio</label>
											</div>
										</div>
									</div>
								</div>
								<!-- [ radio-button ] end -->
							</div>
							<div class="row">
								<!-- [ button-icon ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Button With Icon</h5>
										</div>
										<div class="card-body">
											<button type="button" class="btn btn-primary"><i class="feather icon-thumbs-up"></i>Primary</button>
											<button type="button" class="btn btn-secondary"><i class="feather icon-camera"></i>Secondary</button>
											<button type="button" class="btn btn-success"><i class="feather icon-check-circle"></i>Success</button>
											<button type="button" class="btn btn-danger"><i class="feather icon-slash"></i>Danger</button>
											<button type="button" class="btn btn-warning"><i class="feather icon-alert-triangle"></i>Warning</button>
											<button type="button" class="btn btn-info"><i class="feather icon-info"></i>Info</button>
										</div>
									</div>
								</div>
								<!-- [ button-icon ] end -->
								<!-- [ button-outline ] start -->
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5>Outline Icon Buttons</h5>
										</div>
										<div class="card-body">
											<button type="button" class="btn btn-outline-primary"><i class="feather icon-thumbs-up"></i>Primary</button>
											<button type="button" class="btn btn-outline-secondary"><i class="feather icon-camera"></i>Secondary</button>
											<button type="button" class="btn btn-outline-success"><i class="feather icon-check-circle"></i>Success</button>
											<button type="button" class="btn btn-outline-danger"><i class="feather icon-slash"></i>Danger</button>
											<button type="button" class="btn btn-outline-warning"><i class="feather icon-alert-triangle"></i>Warning</button>
											<button type="button" class="btn btn-outline-info"><i class="feather icon-info"></i>Info</button>
										</div>
									</div>
								</div>
								<!-- [ button-outline ] end -->
							</div>
							<div class="row">
								<!-- [ basic-dropdown-button ] start -->
								<div class="col-md-12">
									<div class="card">
										<div class="card-header">
											<h5>Basic Dropdown Button</h5>
										</div>
										<div class="card-body">
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Primary</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Secondary</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Success</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danger</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-warning dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Warning</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Info</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- [ basic-dropdown-button ] end -->
								<!-- [ split-danger-button ] start -->
								<div class="col-md-12">
									<div class="card">
										<div class="card-header">
											<h5>Split Dropdown Button</h5>
										</div>
										<div class="card-body">
											<!-- Example split danger button -->
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-primary">Primary</button>
												<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-secondary">Secondary</button>
												<button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-success">Success</button>
												<button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-danger">Danger</button>
												<button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-warning">Warning</button>
												<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-info">Info</button>
												<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- [ split-danger-button ] end -->
								<!-- [ outline-dropdown-button ] start -->
								<div class="col-md-12">
									<div class="card">
										<div class="card-header">
											<h5>Basic Outline Dropdown Button</h5>
										</div>
										<div class="card-body">
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Primary</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Secondary</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-success dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Success</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-danger dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danger</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-warning dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Warning</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button class="btn btn-outline-info dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Info</button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- [ outline-dropdown-button ] end -->
								<!-- [ split-dropdown-button ] start -->
								<div class="col-md-12">
									<div class="card">
										<div class="card-header">
											<h5>Split Outline Dropdown Button</h5>
										</div>
										<div class="card-body">
											<!-- Example split danger button -->
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-primary">Primary</button>
												<button type="button" class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-secondary">Secondary</button>
												<button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-success">Success</button>
												<button type="button" class="btn btn-outline-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-danger">Danger</button>
												<button type="button" class="btn btn-outline-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-warning">Warning</button>
												<button type="button" class="btn btn-outline-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
											<div class="btn-group mb-2 mr-2">
												<button type="button" class="btn btn-outline-info">Info</button>
												<button type="button" class="btn btn-outline-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle
														Dropdown</span></button>
												<div class="dropdown-menu">
													<a class="dropdown-item" href="#!">Action</a>
													<a class="dropdown-item" href="#!">Another action</a>
													<a class="dropdown-item" href="#!">Something else here</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#!">Separated link</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- [ split-dropdown-button ] end -->
							</div>
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
