<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Responsive Tables | RWD Tables | UBold - Responsive Admin Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- Responsive Table css -->
    <link href="../assets/libs/admin-resources/rwd-table/rwd-table.min.css" rel="stylesheet" type="text/css"/>

    <!-- App css -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet"/>
    <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet"/>

    <link href="../assets/css/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet"/>
    <link href="../assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css"/>

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
                                    <li class="breadcrumb-item">
                                        <button id="webscrap" class="list-group-item list-group-item-action list-group-item-primary" onclick="scrapData()">
                                            Compare with Amazon</button></li>
                                </ol>
                            </div>
                            <h4 class="page-title">Product Details from File uploaded.</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="card-box">

                            <div class="table-responsive">
                                <table id="datafromcsv" class="table table-striped">
                                    <thead id="header"></thead>
                                    <tbody></tbody> <!-- gives effect on alternate rows-->
                                </table>
                            </div> <!-- end .table-responsive -->

                        </div> <!-- end .table-rep-plugin-->

                    </div> <!-- end col -->
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
<script src="../assets/js/vendor.min.js"></script>

<!-- Responsive Table js -->
<script src="../assets/libs/admin-resources/rwd-table/rwd-table.min.js"></script>

<!-- Init js -->
<script src="../assets/js/pages/responsive-table.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>
<script>

    var test = JSON.parse(localStorage.getItem("test"));
    //var id ="#header";
    $(document).ready(function(){
        console.log("calling display Headers");
        displayHeaders(test[0]);
        displayData(test);
    });
    function displayHeaders(data) {
        $.each( data, function( index, value ){
            var row = '<th>' + value + '</th>';
            $('#header').append(row);
        });
    }

    function displayData(data) {
        for (var i=1; i<data.length; i++) {
            var row = '<tr>';
            var values = '';
            $.each( data[i], function( index, value ){
                // console.log(value);
                values += '<td>' + value + '</td>';
            });
            row = row + values + '</tr>';
            $('#datafromcsv').append(row);
        }
    }

    function scrapData() {
        window.location.href = 'amazondata.html';
    }

</script>
</body>
</html>