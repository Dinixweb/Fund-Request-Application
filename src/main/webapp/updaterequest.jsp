
<%@include file="/inc/header.jsp"%>

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
												<h5 class="m-b-10">Fund request</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i
														class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Fund
														Request Dashboard</a></li>
												<li class="breadcrumb-item"><a href="#!">New Request</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- [ breadcrumb ] end -->
							<!-- [ Main Content ] start -->
							<div class="row">
								<!-- [ badge ] start -->
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>New Fund Request</h5>
											
										</div>
										<div class="card-body">
										    <div class="row">
										    <div class="col-md-6">
										     <form action="dashboardController" method="post">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Full Name</label>
                                                            
															<input type="text" name="username" class="form-control" value="${param.username}"/>
	
                                                         
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Amount</label>
                                                            <input type="text" name="amount"  class="form-control" id="exampleInputPassword1" value="${param.amount}" >
                                                        </div>
                                          				
                                                        <div class="form-group">
                                                            <label>Date</label>
                                                            <input type="date" class="form-control" value="${param.date }" name="date" placeholder="">
                                                        </div>
                                                 
                                                        <div class="form-group">
                                                            <label for="exampleFormControlTextarea1">Purpose of Request</label>
                                                            <input class="form-control" id="exampleFormControlTextarea1" placeholder="" name="purpose" value="${param.purpose }"/>
                                                                                                                  </div>  
                                                         <button type="submit" class="btn btn-primary">Approve</button>
                                                         <button type="submit" class="btn btn-primary">Reject</button>
                                                         <input type="hidden" name="userid" value="${param.fundrequestid}" />
                                                        <input type="hidden" name="form" value="approverfundoperation"/> 
                                                                                                      
                                              </form>
                                              </div>
                                            
                                            </div>
										</div>
									</div>


								</div>
								<!-- [ badge ] end -->
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