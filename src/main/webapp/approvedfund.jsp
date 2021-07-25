
<%@include file="/inc/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="com.admin.Approved"%>


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
												<h5 class="m-b-10">Approved request</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i
														class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Fund
														Request Dashboard</a></li>
												<li class="breadcrumb-item"><a href="#!">Fund
														Approved</a></li>
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
											<h5>All Fund Approved</h5>
											<button type="button" class="btn btn-dark btn-sm" title=""
												data-toggle="tooltip" onclick="addFund()">Add New Request</button>
										</div>
										<div class="card-body">
											<div class="card-body table-border-style">
												<div class="table-responsive">
													<table class="table">
														<thead >
															<tr>
																<th scope="col">Request ID</th>
																<th scope="col">Applicant Name</th>
																<th scope="col">Amount</th>


																<th scope="col">Purpose of funds</th>
																<th scope="col">Request Date</th>
																<th scope="col">Disburse</th>
															


															</tr>
														</thead>
														<tbody>
														
														<%!String disbursedUrl; %>
															<%
															List<Approved> approvedFunds = (List) request.getAttribute("approvedFunds");

															for (int i = 0; i < approvedFunds.size(); i++) {

																out.print("<td>" + approvedFunds.get(i).getFundReqID() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getApprovedRequest()+ "</td>");
																out.print("<td>" + approvedFunds.get(i).getPurpose() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getRequestDate() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getUserName() + "</td>");
																
																disbursedUrl = request.getContextPath()+"/dashboardController?page=disbursednewfund&fundrequestid="+approvedFunds.get(i).getFundReqID()+
																		"&username="+approvedFunds.get(i).getApprovedRequest()+"&amount="+approvedFunds.get(i).getPurpose()+"&date="+approvedFunds.get(i).getUserName()+"&purpose="+
																				approvedFunds.get(i).getRequestDate();
																
																
																 String newdisbursedUrl=disbursedUrl.replaceAll(" ","%20").replaceAll(",", "");
																out.print(
																"<td><a href="+newdisbursedUrl+"><button type='button' class='btn btn-primary btn-sm' title='click to disburse' data-toggle='tooltip'>Disburse</button></a>"
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
	
	</script>
	
	
<%@include file="/inc/footer.jsp" %>
