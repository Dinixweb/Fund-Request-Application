   <%@ page import="java.util.List" %>
<%@include file="/inc/header.jsp" %>


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
                                                <h5 class="m-b-10">Morris Chart</h5>
                                            </div>
                                            <ul class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                                <li class="breadcrumb-item"><a href="#!">Chart</a></li>
                                                <li class="breadcrumb-item"><a href="#!">Morris Chart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ breadcrumb ] end -->
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ bar-simple Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Bar [ Simple ] Chart</h5>
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
                                            <h5>Bar [ Stacked ] Chart</h5>
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
                                            <h5>Line [ Angle ] Chart</h5>
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
                                            <h5>Area [ Smooth ] Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-area-curved-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ area-smooth Chart ] end -->
                                <!-- [ line-angle Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Line [ Angle ] Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-line-chart" class="ChartShadow" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ line-angle Chart ] end -->
                                <!-- [ line-smooth Chart ] start -->
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
                                <!-- [ line-smooth Chart ] end -->
                                <!-- [ donut-Chart ] start -->
                                <div class="col-xl-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Donut Chart</h5>
                                        </div>
                                        <div class="card-body">
                                            <div id="morris-donut-chart" style="height:300px"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ donut-Chart ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
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

<%@include file="/inc/footer.jsp" %>
