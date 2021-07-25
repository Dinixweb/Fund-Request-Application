
<%@include file="/inc/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="java.net.URL"%>
<%@ page import="com.admin.UserData"%>




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
											<h5 class="m-b-10">User List</h5>
										</div>
										<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="index.jsp"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Account</a></li>
											<li class="breadcrumb-item"><a href="#!">User List
													</a></li>
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
										<h5>All Users</h5>
										<button type="button" class="btn btn-dark btn-sm" title=""
											data-toggle="tooltip" onclick="addFund()">Add New
											User</button>
									</div>
									<div class="card-body">
										<div class="card-body table-border-style">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">First Name</th>
															<th scope="col">Last Name</th>
															<th scope="col">Email</th>
															<th scope="col">Department</th>
															<th scope="col">Edit User</th>
															<th scope="col">Delete</th>

														</tr>
													</thead>
													<tbody>
														<%!String approveUrl, movetorejectURL; %>
														<%
															
															
															List<UserData> allUser = (List) request.getAttribute("user");

															for (int i = 0; i < allUser.size(); i++) {

																out.print("<td>" + allUser.get(i).getFirstname() + "</td>");
																out.print("<td>" + allUser.get(i).getLastname() + "</td>");
																out.print("<td>" + allUser.get(i).getEmail()+ "</td>");
																out.print("<td>" + allUser.get(i).getDepartment() + "</td>");
															
															
																approveUrl = request.getContextPath()+"/useraccountController?page=edituser&useremail="+allUser.get(i).getEmail()+
																		"&firstname="+allUser.get(i).getFirstname()+"&lastname="+allUser.get(i).getLastname()+"&department="+allUser.get(i).getDepartment();
																
																
																 String newapproveUrl=approveUrl.replaceAll(" ","%20").replaceAll(",", ""); 
																 /* URL url = new URL(newapproveUrl) */;
																
														 		 movetorejectURL = request.getContextPath()+"/dashboardController?page=userlist&useremail="+allUser.get(i).getEmail();
																 
																 String requestRejectUrl=movetorejectURL.replaceAll(" ","%20").replaceAll(",", "");
																 
																out.print(
																"<td><a href="+newapproveUrl+"><button type='button' class='btn btn-primary btn-sm'  title='click to approve request' data-toggle='tooltip'>Edit</button></a> "
																		+ "</td>");
																out.print("<td><a href="+requestRejectUrl+"><button type='button' class='btn btn-danger btn-sm' title='' data-toggle='tooltip'>Delete</button></a>"
																+ "</td>");
																out.print("<tr>");
															}
															%>
													</tbody>

												</table>
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


<!-- Required Js -->

<script>
	
	function addFund(){
		window.location ="http://localhost:8080/FundRequestApp/useraccountController?page=addnewuser";
	}
	function approveFund(){
		
	}
	
	</script>

<%@include file="/inc/footer.jsp"%>