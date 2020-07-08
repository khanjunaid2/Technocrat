<%--
  Created by IntelliJ IDEA.
  User: Junaid Khan
  Date: 7/6/2020
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8" />
    <title>Dashboard 2 | UBold - Responsive Admin Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.ico">

    <!-- plugin css -->
    <link href="<%=request.getContextPath()%>/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

    <link href="<%=request.getContextPath()%>/assets/css/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet" />

    <!-- icons -->
    <link href="<%=request.getContextPath()%>/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

</head>

<body class="loading">

<!-- Begin page -->
<div id="wrapper">

    <!-- Topbar Start -->
    <jsp:include page="topBar.jsp"/>
    <!-- end Topbar -->

    <!-- ========== Left Sidebar Start ========== -->
    <jsp:include page="leftSideBar.jsp"/>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item active">Dashboard 2</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Dashboard</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-md-6 col-xl-3">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-sm bg-blue rounded">
                                        <i class="fe-aperture avatar-title font-22 text-white"></i>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-right">
                                        <h3 class="text-dark my-1">$<span data-plugin="counterup">12,145</span></h3>
                                        <p class="text-muted mb-1 text-truncate">Income status</p>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-3">
                                <h6 class="text-uppercase">Target <span class="float-right">60%</span></h6>
                                <div class="progress progress-sm m-0">
                                    <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end card-box-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xl-3">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-sm bg-success rounded">
                                        <i class="fe-shopping-cart avatar-title font-22 text-white"></i>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-right">
                                        <h3 class="text-dark my-1"><span data-plugin="counterup">1576</span></h3>
                                        <p class="text-muted mb-1 text-truncate">January's Sales</p>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-3">
                                <h6 class="text-uppercase">Target <span class="float-right">49%</span></h6>
                                <div class="progress progress-sm m-0">
                                    <div class="progress-bar bg-success" role="progressbar" aria-valuenow="49" aria-valuemin="0" aria-valuemax="100" style="width: 49%">
                                        <span class="sr-only">49% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end card-box-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xl-3">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-sm bg-warning rounded">
                                        <i class="fe-bar-chart-2 avatar-title font-22 text-white"></i>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-right">
                                        <h3 class="text-dark my-1">$<span data-plugin="counterup">8947</span></h3>
                                        <p class="text-muted mb-1 text-truncate">Payouts</p>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-3">
                                <h6 class="text-uppercase">Target <span class="float-right">18%</span></h6>
                                <div class="progress progress-sm m-0">
                                    <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100" style="width: 18%">
                                        <span class="sr-only">18% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end card-box-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xl-3">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-sm bg-info rounded">
                                        <i class="fe-cpu avatar-title font-22 text-white"></i>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-right">
                                        <h3 class="text-dark my-1"><span data-plugin="counterup">178</span></h3>
                                        <p class="text-muted mb-1 text-truncate">Available Stores</p>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-3">
                                <h6 class="text-uppercase">Target <span class="float-right">74%</span></h6>
                                <div class="progress progress-sm m-0">
                                    <div class="progress-bar bg-info" role="progressbar" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100" style="width: 74%">
                                        <span class="sr-only">74% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end card-box-->
                    </div> <!-- end col -->
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-xl-4 col-md-12">
                        <!-- Portlet card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase1" role="button" aria-expanded="false" aria-controls="cardCollpase1"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Lifetime Sales</h4>
                                <div id="cardCollpase1" class="collapse pt-3 show">
                                    <img src="dashboard/ECDF.png" id="image1">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase2" role="button" aria-expanded="false" aria-controls="cardCollpase2"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Income Amounts</h4>

                                <div id="cardCollpase2" class="collapse pt-3 show">
                                    <img src="" id="image2">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase3" role="button" aria-expanded="false" aria-controls="cardCollpase3"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Total Users</h4>

                                <div id="cardCollpase3" class="collapse pt-3 show">
                                    <div class="text-center">
                                        <div id="total-users" data-colors="#00acc1,#4b88e4,#e3eaef,#fd7e14"></div>
                                        <div class="row mt-3">
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">Target</p>
                                                <h4><i class="fe-arrow-down text-danger mr-1"></i>18k</h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">Last week</p>
                                                <h4><i class="fe-arrow-up text-success mr-1"></i>3.25k</h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">Last Month</p>
                                                <h4><i class="fe-arrow-up text-success mr-1"></i>28k</h4>
                                            </div>
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
                <!-- end row -->

            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->

<!-- Right Sidebar -->
<jsp:include page="rightSideBar.jsp"></jsp:include>
<!-- /Right-bar -->

<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>

<!-- Vendor js -->
<script src="<%=request.getContextPath()%>/assets/js/vendor.min.js"></script>

<!-- Plugins js-->
<script src="<%=request.getContextPath()%>/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>

<!-- Dashboard 2 init -->
<script src="<%=request.getContextPath()%>/assets/js/pages/dashboard-2.init.js"></script>

<!-- App js-->
<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>

<script>

    function sendContextPath(){
        $.ajax('http://localhost:2080/PIM/api/v1/sendContextPath', {
            type: 'GET',  // http method
            success: function (data, status, xhr) {
                debugger;
                document.getElementById("image2").src=data[1];
            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }
    sendContextPath();

</script>

</body>
</html>