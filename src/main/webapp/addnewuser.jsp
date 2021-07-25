
<%@include file="/inc/header.jsp"%>
<%@ page import="com.admin.FundData"%>


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
												<h5 class="m-b-10">User Account</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i
														class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Account</a></li>
												<li class="breadcrumb-item"><a href="#!">New User</a></li>
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
											<h5>Add New User</h5>
											
										</div>
										<div class="card-body">
										    <div class="row">
										    <div class="col-md-6">
										     <form action="useraccountController" method="post">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">First Name</label>
                                                            
															<input type="text" name="firstname" class="form-control" required/>
	
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Last Name</label>
                                                            
															<input type="text" name="lastname" class="form-control" required/>
	
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Email</label>
                                                            <input type="email" class="form-control" name="email" placeholder="" required>
                                                        </div> 
                                                        <div class="form-group">
                                                            <label for="exampleInputPassword1">Department</label>
															<select class="form-control" aria-label=".form-select-lg example" name="department">
															<option>Select Department</option>
															<option>Admin Department</option>
															<option>Account Department</option>
															<option>HR Department</option>
															<option>ICT Department</option>
															<option>Operation Department</option>
															<option>Others</option>
															</select>
                                                        </div>
                                          				
                                                        <div class="form-group">
                                                            <label>Password</label>
                                                            <input type="password" class="form-control" name="password" placeholder="" required>
                                                        </div>
                                                 
                                                         
                                                         <button type="submit" onclick="checkUserExist()" class="btn btn-primary">Add User</button>
                                                        <input type="hidden" name="form" value="adduseraccountoperation"/>                                             
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
	
	<script>
	function checkUserExist(){
		alert("Registation in progress");
	}
	
	
	</script>
	
	
<%@include file="/inc/footer.jsp" %>






