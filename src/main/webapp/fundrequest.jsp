
<%@include file="/inc/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="java.net.URL"%>
<%@ page import="com.admin.FundData"%>




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
											<li class="breadcrumb-item"><a href="#!">Fund
													Request</a></li>
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
										<h5>All Fund Request</h5>
										<button type="button" class="btn btn-dark btn-sm" title=""
											data-toggle="tooltip" onclick="addFund()">Add New
											Request</button>
									</div>
									<div class="card-body">
										<div class="card-body table-border-style">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">Request ID</th>
															<th scope="col">Applicant Name</th>
															<th scope="col">Amount</th>


															<th scope="col">Purpose of funds</th>
															<th scope="col">Request Date</th>
															<th scope="col">Approve</th>
															<th scope="col">Reject</th>


														</tr>
													</thead>
													<tbody>
														<%!String approveUrl, movetorejectURL; %>
														<%
															
															
															List<FundData> allRequest = (List) request.getAttribute("allFunds");

															for (int i = 0; i < allRequest.size(); i++) {

																out.print("<td>" + allRequest.get(i).getFundReqID() + "</td>");
																out.print("<td>" + allRequest.get(i).getUserName() + "</td>");
																out.print("<td>" + allRequest.get(i).getPendingRequest() + "</td>");
																out.print("<td>" + allRequest.get(i).getPurpose() + "</td>");
																out.print("<td>" + allRequest.get(i).getRequestDate() + "</td>");
															
																approveUrl = request.getContextPath()+"/dashboardController?page=approvenewfund&fundrequestid="+allRequest.get(i).getFundReqID()+
																		"&username="+allRequest.get(i).getUserName()+"&amount="+allRequest.get(i).getPendingRequest()+"&date="+allRequest.get(i).getRequestDate()+"&purpose="+
																		allRequest.get(i).getPurpose();
																
																
																 String newapproveUrl=approveUrl.replaceAll(" ","%20").replaceAll(",", "");
																 /* URL url = new URL(newapproveUrl) */;
																
																 movetorejectURL = request.getContextPath()+"/dashboardController?page=movetoreject&fundrequestid="+allRequest.get(i).getFundReqID()+
																			"&username="+allRequest.get(i).getUserName()+"&amount="+allRequest.get(i).getPendingRequest()+"&date="+allRequest.get(i).getRequestDate()+"&purpose="+
																			allRequest.get(i).getPurpose();
																 
																 
																 String requestRejectUrl=movetorejectURL.replaceAll(" ","%20").replaceAll(",", "");
																 
																out.print(
																"<td><a href="+newapproveUrl+"><button type='button' class='btn btn-primary btn-sm'  title='click to approve request' data-toggle='tooltip'>Approve</button></a> "
																		+ "</td>");
																out.print("<td><a href="+requestRejectUrl+"><button type='button' class='btn btn-danger btn-sm' title='' data-toggle='tooltip'>Reject</button></a>"
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
		window.location ="http://localhost:8080/FundRequestApp/addfund.jsp";
	}
	function approveFund(){
		
	}
	
	</script>

<%@include file="/inc/footer.jsp"%>