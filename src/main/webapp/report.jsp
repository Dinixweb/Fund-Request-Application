   <%@ page import="java.util.List" %>
<%@ page import="com.admin.FundData"%>
<%@ page import="com.admin.Approved"%>
<%@ page import="com.admin.Disbursed"%>
<%@ page import="com.admin.Rejected"%>
<%@include file="/inc/header.jsp" %>



    <!-- [ Main Content ] start -->
    <section class="pcoded-main-container">
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
                                                <h5 class="m-b-10">Overall Report</h5>
                                            </div>
                                            <ul class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                                <li class="breadcrumb-item"><a href="#!">Fund Request Overall Report</a></li>
                                                <li class="breadcrumb-item"><a href="#!">reports</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ breadcrumb ] end -->
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ basic-table ] start -->
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Pending Fund Request</h5>
                                            <span class="d-block m-t-5">showing the list of <code>fund request</code> from employees</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>REQUEST ID</th>
                                                            <th>NAME</th>
                                                            <th>AMOUNT</th>
                                                            <th>PURPOSE</th>
                                                            <th>DATE</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                         <%
															List<FundData> allRequest = (List) request.getAttribute("allFunds");

															for (int i = 0; i < allRequest.size(); i++) {

																out.print("<td>" + allRequest.get(i).getFundReqID() + "</td>");
																out.print("<td>" + allRequest.get(i).getUserName() + "</td>");
																out.print("<td>" + allRequest.get(i).getPendingRequest() + "</td>");
																out.print("<td>" + allRequest.get(i).getPurpose() + "</td>");
																out.print("<td>" + allRequest.get(i).getRequestDate() + "</td>");
																out.print("<tr>");
															}
															%>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ basic-table ] end -->
                                <!-- [ inverse-table ] start -->
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Approved Funds</h5>
                                            <span class="d-block m-t-5">Showing list of <code>Approved Funds</code>by Management</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table table-inverse">
                                                    <thead>
                                                        <tr>
                                                            <th>APPROVED ID</th>
                                                            <th>NAME</th>
                                                            <th>AMOUNT</th>
                                                            <th>PURPOSE</th>
                                                            <th>DATE</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <%
															List<Approved> approvedFunds = (List) request.getAttribute("approvedFunds");

															for (int i = 0; i < approvedFunds.size(); i++) {

																out.print("<td>" + approvedFunds.get(i).getFundReqID() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getApprovedRequest()+ "</td>");
																out.print("<td>" + approvedFunds.get(i).getPurpose() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getRequestDate() + "</td>");
																out.print("<td>" + approvedFunds.get(i).getUserName() + "</td>");
															}
															%>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ inverse-table ] end -->
                                <!-- [ Hover-table ] start -->
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Rejected Request</h5>
                                            <span class="d-block m-t-5">Showing list of  <code>Rejected Request</code> by Management</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>REJECTED ID</th>
                                                            <th>NAME</th>
                                                            <th>AMOUNT</th>
                                                            <th>PURPOSE</th>
                                                            <th>DATE</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                           <%
															List<Rejected> rejectedRequest = (List) request.getAttribute("rejectedRequest");

															for (int i = 0; i < rejectedRequest.size(); i++) {

																out.print("<td>" + rejectedRequest.get(i).getFundReqID() + "</td>");
																out.print("<td>" + rejectedRequest.get(i).getRejectedRequest()+ "</td>");
																out.print("<td>" + rejectedRequest.get(i).getPurpose() + "</td>");
																out.print("<td>" + rejectedRequest.get(i).getRequestDate() + "</td>");
																out.print("<td>" + rejectedRequest.get(i).getUserName() + "</td>");
																out.print("<tr>");
															}
															%>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Hover-table ] end -->
                                <!-- [ dark-table ] start -->
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Disbursed Funds</h5>
                                            <span class="d-block m-t-5">Showing list of <code>Disbursed Funds</code> by Finance Department</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                    <table class="table table-inverse">
                                                    <thead>
                                                        <tr>
                                                            <th>APPROVED ID</th>
                                                            <th>NAME</th>
                                                            <th>AMOUNT</th>
                                                            <th>PURPOSE</th>
                                                            <th>DATE</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <%
															List<Disbursed> disbursedFunds = (List) request.getAttribute("disbursedFunds");

															for (int i = 0; i < disbursedFunds.size(); i++) {

																out.print("<td>" + disbursedFunds.get(i).getFundReqID() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getDisbursedRequest()+ "</td>");
																out.print("<td>" + disbursedFunds.get(i).getPurpose() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getRequestDate() + "</td>");
																out.print("<td>" + disbursedFunds.get(i).getUserName() + "</td>");

															}
															%>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ dark-table ] end -->
                                <!-- [ stiped-table ] start -->
                                <!-- <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Striped Table</h5>
                                            <span class="d-block m-t-5">use class <code>table-striped</code> inside table element</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Username</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Mark</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>Jacob</td>
                                                            <td>Thornton</td>
                                                            <td>@fat</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                [ stiped-table ] end
                                [ Contextual-table ] start
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Contextual Classes</h5>
                                            <span class="d-block m-t-5">For Make row Contextual add Contextual class like <code>.table-success</code> in <code> tr tag</code> and For cell add Contextual class in <code> td or th tag</code> .</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Username</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="table-active">
                                                            <td>1</td>
                                                            <td>Mark</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>Jacob</td>
                                                            <td>Thornton</td>
                                                            <td>@fat</td>
                                                        </tr>
                                                        <tr class="table-success">
                                                            <td>3</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="table-warning">
                                                            <td>5</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="table-danger">
                                                            <td>7</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>8</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="table-info">
                                                            <td>9</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                [ Contextual-table ] end
                                [ Background-Utilities ] start
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Background Utilities</h5>
                                            <span class="d-block m-t-5">Regular table background variants are not available with the inverse table, however, you may use <code>text or background utilities</code> to achieve similar styles.</span>
                                        </div>
                                        <div class="card-body table-border-style">
                                            <div class="table-responsive">
                                                <table class="table table-inverse">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Username</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="bg-primary">
                                                            <td>1</td>
                                                            <td>Mark</td>
                                                            <td>Otto</td>
                                                            <td>@mdo</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>Jacob</td>
                                                            <td>Thornton</td>
                                                            <td>@fat</td>
                                                        </tr>
                                                        <tr class="bg-success">
                                                            <td>3</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="bg-warning">
                                                            <td>5</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>6</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="bg-danger">
                                                            <td>7</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr>
                                                            <td>8</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                        <tr class="bg-info">
                                                            <td>9</td>
                                                            <td>Larry</td>
                                                            <td>the Bird</td>
                                                            <td>@twitter</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <!-- [ Background-Utilities ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
<%@include file="/inc/footer.jsp" %>
