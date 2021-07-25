
   <%@ page import="java.util.List" %>

<%@include file="/inc/header.jsp" %>



	<!-- [ custom chart ] begins  -->
	



	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">

	
	</script>
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
										 <!-- <div class="page-header-title">  -->
												<h5>Dashboard</h5>
											 <!-- </div>  -->
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.jsp"><i class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Analytics Dashboard</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- [ breadcrumb ] end -->
							<!-- [ Main Content ] start -->
							<div class="row">

								<!-- product profit start -->
								<div class="col-xl-3 col-md-6">
									<div class="card prod-p-card bg-c-yellow">
										<div class="card-body">
											<div class="row align-items-center m-b-25">
												<div class="col">
													<h6 class="m-b-5 text-white plist"><a href="#">Pending Request</a></h6>
													<h3 class="m-b-0 text-white">&#8358; <%
														if(request.getAttribute("pendingFund")==null){
															out.print("0.00");
														}
														else{
														out.print(request.getAttribute("pendingFund"));
														}
							
													%></h3>
												</div>
												<div class="col-auto">
													<i class="fas fa-tags text-c-yellow f-18"></i>
												</div>
											</div>
											<p class="m-b-0 text-white"><span class="label label-warning m-r-10">+52%</span>From Previous Month</p>
										</div>
									</div>
								</div>
								
								<div class="col-xl-3 col-md-6">
									<div class="card prod-p-card bg-c-red">
										<div class="card-body">
											<div class="row align-items-center m-b-25">
												<div class="col">
													<h6 class="m-b-5 text-white plist"><a href="#">Rejected Request</a></h6>
													<h3 class="m-b-0 text-white">&#8358;<%
													if(request.getAttribute("rejectedFund")==null){
														out.print("0.00");
														
													}else{
											
														out.print(request.getAttribute("rejectedFund"));
													}
							
													%></h3>
												</div>
												<div class="col-auto">
													<i class="fas fa-money-bill-alt text-c-red f-18"></i>
												</div>
											</div>
											<p class="m-b-0 text-white"><span class="label label-danger m-r-10">+11%</span>From Previous Month</p>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card prod-p-card bg-c-blue">
										<div class="card-body">
											<div class="row align-items-center m-b-25">
												<div class="col">
													<h6 class="m-b-5 text-white plist"><a href="#">Approved Request</a></h6>
													<h3 class="m-b-0 text-white">&#8358;<%
														if(request.getAttribute("approvedFund")==null){
															out.print("0.00");
														}
														else{
															out.print(request.getAttribute("approvedFund"));
														}
														
							
													%></h3>
												</div>
												<div class="col-auto">
													<i class="fas fa-database text-c-blue f-18"></i>
												</div>
											</div>
											<p class="m-b-0 text-white"><span class="label label-primary m-r-10">+12%</span>From Previous Month</p>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-md-6">
									<div class="card prod-p-card bg-c-green">
										<div class="card-body">
											<div class="row align-items-center m-b-25">
												<div class="col">
													<h6 class="m-b-5 text-white plist"><a href="#">Disbursed Funds</a></h6>
													<h3 class="m-b-0 text-white">&#8358; <%
														 if(request.getAttribute("disbursedFund")==null){
															out.print("0.00");
														}
														else{
															out.print(request.getAttribute("disbursedFund"));
														} 
														
							
													%></h3>
												</div>
												<div class="col-auto">
													<i class="fas fa-dollar-sign text-c-green f-18"></i>
												</div>
											</div>
											<p class="m-b-0 text-white"><span class="label label-success m-r-10">+52%</span>From Previous Month</p>
										</div>
									</div>
								</div>
								
								<!-- product profit end -->
								<!-- <div class="col-md-12 col-xl-4">
									<div class="card card-social">
										<div class="card-block border-bottom">
											<div class="row align-items-center justify-content-center">
												<div class="col-auto">
													<i class="fab fa-facebook-f text-primary f-36"></i>
												</div>
												<div class="col text-right">
													<h3>12,281</h3>
													<h5 class="text-c-blue mb-0">+7.2% <span class="text-muted">Total Likes</span></h5>
												</div>
											</div>
										</div>
										<div class="card-block">
											<div class="row align-items-center justify-content-center card-active">
												<div class="col-6">
													<h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>35,098</h6>
													<div class="progress">
														<div class="progress-bar progress-c-blue" role="progressbar" style="width:60%;height:6px;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-6">
													<h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>350</h6>
													<div class="progress">
														<div class="progress-bar progress-c-green" role="progressbar" style="width:45%;height:6px;" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xl-4">
									<div class="card card-social">
										<div class="card-block border-bottom">
											<div class="row align-items-center justify-content-center">
												<div class="col-auto">
													<i class="fab fa-twitter text-c-info f-36"></i>
												</div>
												<div class="col text-right">
													<h3>11,200</h3>
													<h5 class="text-c-info mb-0">+6.2% <span class="text-muted">Total Likes</span></h5>
												</div>
											</div>
										</div>
										<div class="card-block">
											<div class="row align-items-center justify-content-center card-active">
												<div class="col-6">
													<h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>34,185</h6>
													<div class="progress">
														<div class="progress-bar progress-c-blue" role="progressbar" style="width:40%;height:6px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-6">
													<h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>800</h6>
													<div class="progress">
														<div class="progress-bar progress-c-green" role="progressbar" style="width:70%;height:6px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xl-4">
									<div class="card card-social">
										<div class="card-block border-bottom">
											<div class="row align-items-center justify-content-center">
												<div class="col-auto">
													<i class="fab fa-google-plus-g text-c-red f-36"></i>
												</div>
												<div class="col text-right">
													<h3>10,500</h3>
													<h5 class="text-c-red mb-0">+5.9% <span class="text-muted">Total Likes</span></h5>
												</div>
											</div>
										</div>
										<div class="card-block">
											<div class="row align-items-center justify-content-center card-active">
												<div class="col-6">
													<h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>25,998</h6>
													<div class="progress">
														<div class="progress-bar progress-c-blue" role="progressbar" style="width:80%;height:6px;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-6">
													<h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>900</h6>
													<div class="progress">
														<div class="progress-bar progress-c-green" role="progressbar" style="width:50%;height:6px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
								<!-- sessions-section start -->
								
								<div class="row">
                                <!-- [ bar-simple Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Monthly Stat</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-bar-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ bar-simple Chart ] end -->
                                <!-- [ bar-stacked Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Yearly Stat</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-bar-stacked-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ bar-stacked Chart ] end -->
                                <!-- [ line-angle Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Request Per Monthly</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-area-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ line-angle Chart ] end -->
                                <!-- [ area-smooth Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Pending, Approved & Disbursed</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-area-curved-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ area-smooth Chart ] end -->
                                <!-- [ line-angle Chart ] start -->
                                <!-- <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Line [ Angle ] Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-line-chart" class="ChartShadow" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                [ line-angle Chart ] end
                                [ line-smooth Chart ] start
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Line [ Smooth ] Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-line-smooth-chart" class="ChartShadow" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                [ line-smooth Chart ] end
                                [ donut-Chart ] start
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Donut Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-donut-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div> -->
                                <!-- [ donut-Chart ] end -->
                            </div>
                                
                             <!-- <div class="col-xl-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Quarterly Stat</h5>
                                        </div>
                                        
                                    </div>
                                </div> -->
                               
                                
								<!-- sessions-section end -->
								<!-- <div class="col-md-6 col-xl-4">
									<div class="card user-card">
										<div class="card-header">
											<h5>Profile</h5>
										</div>
										<div class="card-body  text-center">
											<div class="usre-image">
												<img src="assets/images/widget/img-round.jpg" class="img-radius wid-100 m-auto" alt="User-Profile-Image">
											</div>
											<h6 class="f-w-600 m-t-25 m-b-10">Dennis Shaba</h6>
											<p>Active | Male | Time 23:05</p>
											<hr>
											<p class="m-t-15">Activity Level: 87%</p>
											<div class="bg-c-blue counter-block m-t-10 p-20">
												<div class="row">
													<div class="col-4">
														<i class="fas fa-calendar-check text-white f-20"></i>
														<h6 class="text-white mt-2 mb-0">1256</h6>
													</div>
													<div class="col-4">
														<i class="fas fa-user text-white f-20"></i>
														<h6 class="text-white mt-2 mb-0">8562</h6>
													</div>
													<div class="col-4">
														<i class="fas fa-folder-open text-white f-20"></i>
														<h6 class="text-white mt-2 mb-0">189</h6>
													</div>
												</div>
											</div>
											
											<hr>
											<div class="row justify-content-center user-social-link">
												<div class="col-auto"><a href="#!"><i class="fab fa-facebook-f text-primary f-22"></i></a></div>
												<div class="col-auto"><a href="#!"><i class="fab fa-twitter text-c-info f-22"></i></a></div>
												<div class="col-auto"><a href="#!"><i class="fab fa-dribbble text-c-red f-22"></i></a></div>
											</div>
										</div>
									</div>
								</div> -->
							</div>
							   
							<!-- [ Main Content ] end -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [ Main Content ] end -->
	
<%@include file="/inc/footer.jsp" %>


    