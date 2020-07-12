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
    <title>Dashboard 1</title>
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
    <script src="<%=request.getContextPath()%>/assets/js/jquery-3.5.0.js"></script>

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
                    <div class="col-xl-4 col-md-6">
                        <!-- Portlet card -->
                        <div class="card">
                            <div class="card-body" dir="ltr">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase1" role="button" aria-expanded="false" aria-controls="cardCollpase1"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Lifetime Sales</h4>

                                <div id="cardCollpase1" class="collapse pt-3 show">
                                    <div class="text-center">
                                        <div class="row mt-2">
                                            <div class="col-6">
                                                <h3 data-plugin="counterup">parseInt('${totalSales}', 10)</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Total Sales</p>
                                            </div>

                                            <div class="col-6">
                                                <h3 data-plugin="counterup">'${dailyAvg}'</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Daily Sales</p>
                                            </div>
                                        </div> <!-- end row -->

                                        <div id="lifetime-sales" data-colors="#4fc6e1,#6658dd,#ebeff2" style="height: 270px;" class="morris-chart mt-3"></div>

                                    </div>
                                </div> <!-- end collapse-->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body" dir="ltr">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase2" role="button" aria-expanded="false" aria-controls="cardCollpase2"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Yearly Sales Stats</h4>

                                <div id="cardCollpase2" class="collapse pt-3 show">
                                    <div class="text-center">

                                        <div class="row mt-2">
                                            <div class="col-6">
                                                <h3 >'${yearAvg}'</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Avergate Yearly Sales</p>
                                            </div>
                                            <div class="col-6">
                                                <h3 >2019 : 10733740</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Highest Year Sales</p>
                                            </div>
                                        </div> <!-- end row -->
                                        <div id="statistics-chart" data-colors="#02c0ce" style="height: 270px;" class="morris-chart mt-3"></div>

                                    </div>
                                </div> <!-- end collapse-->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body" dir="ltr">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase8" role="button" aria-expanded="false" aria-controls="cardCollpase8"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Monthly Sales Stats</h4>

                                <div id="cardCollpase8" class="collapse pt-3 show">
                                    <div class="text-center">

                                        <div class="row mt-2">
                                            <div class="col-6">
                                                <h3>'${monthAvg}'</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Avergate Monthly Sales</p>
                                            </div>
                                            <div class="col-6">
                                                <h3>'${highestMonth}' : '${highestMonthValue}'</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">Highest Month Sales</p>
                                            </div>
                                        </div> <!-- end row -->
                                        <div id="statistics-monthly" data-colors="#02c0ce" style="height: 270px;" class="morris-chart mt-3"></div>

                                    </div>
                                </div> <!-- end collapse-->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->


                </div>

                <div class="row">
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase4" role="button" aria-expanded="false" aria-controls="cardCollpase4"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Scatter Plot</h4>

                                <div id="cardCollpase3" class="collapse pt-3 show">
                                    <%--                                    <img src="dashboard/ECDF.png" id="image1" style="height: 433px; width:500px">--%>
                                    <img src="" id="image1" style="height: 433px; width:500px">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase5" role="button" aria-expanded="false" aria-controls="cardCollpase5"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Bar Plot</h4>
                                <div id="cardCollpase4" class="collapse pt-3 show">
                                    <%--                                    <img src="dashboard/histogram.png" id="image2" style="height: 433px; width:500px">--%>
                                    <img src="" id="image2" style="height: 433px; width:500px">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                <!-- end row -->
                <div class="row">
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase4" role="button" aria-expanded="false" aria-controls="cardCollpase4"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Time Series : Store - On Buy , Product - DOORMAT FANCY FONT HOME SWEET HOME </h4>

                                <div id="cardCollpase5" class="collapse pt-3 show">
                                    <%--                                    <img src="dashboard/salesPerYear.png" id="image3" style="height: 433px; width:500px">--%>
                                    <img src="" id="image3" style="height: 433px; width:500px">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-toggle="collapse" href="#cardCollpase5" role="button" aria-expanded="false" aria-controls="cardCollpase5"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">Image4</h4>
                                <div id="cardCollpase6" class="collapse pt-3 show" style="overflow: auto;">
                                    <%--                                    <img src="dashboard/storeWiseYearlySales.png" id="image4" style="height: 433px">--%>
                                    <img src="" id="image4" style="height: 433px">
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                <!-- end row -->

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
<!-- Plugins js -->
<script src="<%=request.getContextPath()%>/assets/libs/morris.js06/morris.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/libs/raphael/raphael.min.js"></script>
<!-- Dashboard 2 init -->
<script src="<%=request.getContextPath()%>/assets/js/pages/dashboard-4.init.js"></script>

<!-- App js-->
<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>


<script>
    $("div.collapse pt-3 show").scrollLeft( 300 );
</script>
<script>

    var xx = '${totalSales}'


    function sendContextPath(){
        $.ajax('http://localhost:2080/PIM/api/v1/sendContextPath', {
            type: 'GET',  // http method
            success: function (data, status, xhr) {
                debugger;

                $("#cardCollpase3").load("http://"+window.location.host+"/html/"+data.Plot1);

                $("#cardCollpase4").load("http://"+window.location.host+"/html/"+data.Plot2);

                $("#cardCollpase5").load("http://"+window.location.host+"/html/"+data.Plot3);

                $("#cardCollpase6").load("http://"+window.location.host+"/html/"+data.Plot4);

               /* document.getElementById("image1").src=data.image1;
                document.getElementById("image2").src=data.image2;
                document.getElementById("image3").src=data.image3;
                document.getElementById("image4").src=data.image4;
                document.getElementById("image5").src=data.image5;
                document.getElementById("image6").src=data.image6;*/

            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }

    var t = $("#statistics-chart").data("colors")
    var a = t.split(",")

    function morrisBar(a, t, e, o, r, i) {
        Morris.Bar({
            element: a,
            data: t,
            xkey: e,
            ykeys: o,
            labels: r,
            dataLabels: !1,
            hideHover: "auto",
            resize: !0,
            gridLineColor: "rgba(65, 80, 95, 0.07)",
            barSizeRatio: .2,
            barColors: i
        })
    }



    var highestYr = parseInt('${highestYear}', 10)
    var highestYearValue = parseInt('${highestYearValue}', 10)
    var avgYearSale = parseInt('${yearAvg}', 10)

    var highestMonth = '${highestMonth}'
    highestMonth = highestMonth.replace(/'/g,'"');
    var highestMonthValue = parseInt('${highestMonthValue}', 10)
    var avgMonthSale = parseInt('${monthAvg}', 10)



    morrisBar("statistics-chart", [{
        y: "2015",
        a: parseInt('${dt0}', 10)
    }, {
        y: "2016",
        a: parseInt('${dt1}', 10)
    }, {
        y: "2017",
        a: parseInt('${dt2}', 10)
    }, {
        y: "2018",
        a: parseInt('${dt3}', 10)
    }, {
        y: "2019",
        a: parseInt('${dt4}', 10)
    }], "y", ["a"], ["Statistics"], a);




    var t = $("#statistics-monthly").data("colors")
    var a = t.split(",")


    morrisBar("statistics-monthly", [{
        y: "Jan",
        a: parseInt('${Jan}', 10)
    }, {
        y: "Feb",
        a: parseInt('${Feb}', 10)
    }, {
        y: "Mar",
        a: parseInt('${Mar}', 10)
    }, {
        y: "Apr",
        a: parseInt('${Apr}', 10)
    }, {
        y: "May",
        a: parseInt('${May}', 10)
    }, {
        y: "Jun",
        a: parseInt('${Jun}', 10)
    }, {
        y: "Jul",
        a: parseInt('${Jul}', 10)
    }, {
        y: "Aug",
        a: parseInt('${Aug}', 10)
    }, {
        y: "Sep",
        a: parseInt('${Sep}', 10)
    }, {
        y: "Oct",
        a: parseInt('${Oct}', 10)
    }, {
        y: "Nov",
        a: parseInt('${Nov}', 10)
    }, {
        y: "Dec",
        a: parseInt('${Dec}', 10)
    }], "y", ["a"], ["Statistics"], a);





    var t;
    a = ["#4fc6e1", "#6658dd", "#ebeff2"];

    t = $("#lifetime-sales").data("colors")
    a = t.split(",")


    function createDonutChart(a, t, e) {
        Morris.Donut({
            element: a,
            data: t,
            barSize: .2,
            resize: !0,
            colors: e,
            backgroundColor: "transparent"
        })
    }



    createDonutChart("lifetime-sales", [{
        label: " Total Sales ",
        value: '${totalSales}'
    }, {
        label: " Avg Daily Sales ",
        value: '${dailyAvg}'
    }], a)

    $($("#cardCollpase8  h3")[0]).text(avgMonthSale)
    $($("#cardCollpase8  h3")[1]).text(highestMonth + " : " + highestMonthValue)

    $($("#cardCollpase2  h3")[0]).text(avgYearSale)
    $($("#cardCollpase2  h3")[1]).text(highestYr + " : " + highestYearValue)

    $($("#cardCollpase8  h3")[0]).text(avgMonthSale)
    $($("#cardCollpase8  h3")[1]).text(highestMonth + " : " + highestMonthValue)

    $($("#cardCollpase2  h3")[0]).text(avgYearSale)



    $($("#cardCollpase1  h3")[0]).text( parseInt('${totalSales}', 10))
    $($("#cardCollpase1  h3")[1]).text( parseInt('${dailyAvg}', 10))


    $($("#cardCollpase2  h3")[1]).text(highestYr + " : " + highestYearValue)

     sendContextPath();

</script>

</body>
</html>