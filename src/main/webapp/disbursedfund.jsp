
<%@include file="/inc/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="com.admin.Disbursed"%>


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
												<h5 class="m-b-10">Disbursed Funds</h5>
											</div>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a href="index.html"><i
														class="feather icon-home"></i></a></li>
												<li class="breadcrumb-item"><a href="#!">Fund
														Request Dashboard</a></li>
												<li class="breadcrumb-item"><a href="#!">Disbursed Funds
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
											<h5>All Funds Disbursed</h5>
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
														
				
															</tr>
														</thead>
														<tbody>
															<%
															List<Disbursed> disbursedFunds = (List) request.getAttribute("disbursedFunds");

															for (int i = 0; i < disbursedFunds.size(); i++) {

																out.print("<td>" + disbursedFunds.get(i).getFundReqID() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getDisbursedRequest()+ "</td>");
																out.print("<td>" + disbursedFunds.get(i).getPurpose() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getRequestDate() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getUserName() + "</td>");
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
