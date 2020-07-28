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

    <meta charset="utf-8"/>
    <title>Dashboard 2 </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.ico">

    <!-- plugin css -->
    <link href="<%=request.getContextPath()%>/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css"
          rel="stylesheet" type="text/css"/>

    <!-- App css -->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"
          id="bs-default-stylesheet"/>
    <link href="<%=request.getContextPath()%>/assets/css/app.min.css" rel="stylesheet" type="text/css"
          id="app-default-stylesheet"/>

    <link href="<%=request.getContextPath()%>/assets/css/bootstrap-dark.min.css" rel="stylesheet" type="text/css"
          id="bs-dark-stylesheet"/>
    <link href="<%=request.getContextPath()%>/assets/css/app-dark.min.css" rel="stylesheet" type="text/css"
          id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="<%=request.getContextPath()%>/assets/css/icons.min.css" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/assets/js/jquery-3.5.0.js"></script>

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
        <iframe src="/crop" name="page" style="width: 1600px; height: 1000px"></iframe>

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
    var selectedStore = "";
    $("div.collapse pt-3 show").scrollLeft(300);

    /*function onStoreChange(store) {
        selectedStore = store;
        if (selectedStore != "none") {
            document.getElementById("select-container").style.display = "block";
            console.log(selectedStore);
        } else {
            document.getElementById("select-container").style.display = "none";
        }
    }*/

    function sendContextPath() {
        $.ajax('http://localhost:2080/PIM/api/v1/generateForeCastImages', {
            type: 'GET',  // http method
            success: function (data, status, xhr) {
                debugger;
                document.getElementById("image1").src = data.image1;
                document.getElementById("image2").src = data.image2;
                document.getElementById("image3").src = data.image3;

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