<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>File Uploads | Dropzone | Dropify | UBold - Responsive Admin Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- Plugins css -->
    <link href="../assets/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/libs/dropify/css/dropify.min.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
    <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

    <link href="../assets/css/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" />
    <link href="../assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet" />

    <!-- icons -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css" />

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
                                    <li class="breadcrumb-item"><a href="attribute.html">CATAPRO</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">AI</a></li>
                                    <li class="breadcrumb-item active">File Upload</li>
                                </ol>
                            </div>
                            <h4 class="page-title">File Uploads</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Data file upload</h4>
                                <p class="sub-header">
                                    Please upload your file. Note: CSV format only
                                </p>

                                <form method="post" action="" enctype="multipart/form-data" id="myform">

                                    <input type="file" id="file" name="file" class="form-control-file"/>
                                    <button type="button" id="but_upload" class="btn btn-success waves-effect waves-light">
                                        Upload<span class="btn-label-right"><i class="mdi mdi-check-all"></i></span>
                                    </button>

                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div><!-- end col -->
                </div>
                <!-- end row -->

                <!-- file preview template -->
                <div class="d-none" id="uploadPreviewTemplate">
                    <div class="card mt-1 mb-0 shadow-none border">
                        <div class="p-2">
                            <div class="row align-items-center">
                                <div class="col-auto">
                                    <img data-dz-thumbnail src="#" class="avatar-sm rounded bg-light" alt="">
                                </div>
                                <div class="col pl-0">
                                    <a href="javascript:void(0);" class="text-muted font-weight-bold" data-dz-name></a>
                                    <p class="mb-0" data-dz-size></p>
                                </div>
                                <div class="col-auto">
                                    <!-- Button -->
                                    <a href="" class="btn btn-link btn-lg text-muted" data-dz-remove>
                                        <i class="dripicons-cross"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- end row -->

            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        2020 &copy; Product of <a href="">Technocrats</a>
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-right footer-links d-none d-sm-block">
                            <a href="javascript:void(0);">About Us</a>
                            <a href="javascript:void(0);">Help</a>
                            <a href="javascript:void(0);">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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

<!-- Plugins js -->
<script src="../assets/libs/dropzone/min/dropzone.min.js"></script>
<script src="../assets/libs/dropify/js/dropify.min.js"></script>

<!-- Init js-->
<script src="../assets/js/pages/form-fileuploads.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>
<script>



    $(document).ready(function(){

        $("#but_upload").click(function(){

            var fd = new FormData();
            var files = $('#file')[0].files[0];
            fd.append('file',files);

            $.ajax({
                url: 'http://localhost:2080/PIM/api/v1/importData',
                type: 'post',
                // data >> The data to send to the server when performing the Ajax request.
                data: fd,
                contentType: false,
                processData: false,
                success: function(response) {
                    //convert response object to array
                    console.log(response);
                    var array = $.map(response, function(value, index){
                        return [value];
                    });

                    localStorage.setItem("test", JSON.stringify(array));
                    window.location.href = 'displayData.html';
                },
                error: function (errorMessage) {
                    alert(errorMessage.responseJSON.message);
                },
            });
        });
    });

</script>
</body>
</html>