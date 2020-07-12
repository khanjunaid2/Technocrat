<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Datatables | UBold - Responsive Admin Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- Sweet Alert-->
    <link href="../assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css"/>

    <!-- third party css -->
    <link href="../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../assets/libs/datatables.net-select-bs4/css//select.bootstrap4.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- third party css end -->

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

    <div class="modal fade" id="centermodal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myCenterModalLabel">Center modal</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div  class="modal-body">
                    <pre id="image-text"></pre>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">CATAPRO</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Add Product</a></li>

                                </ol>
                            </div>
                            <h4 class="page-title">Product Attributes </h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div id="product-modal" class="modal fade" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Add New Product</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                    </button>
                                </div>
                                <div class="modal-body p-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Select Attribute Group</label>
                                                <select id="select-product-category"
                                                        onchange="onChangeAttGrp(this.value)">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Product Name</label>
                                                <input type="text" class="form-control" id="product-name"
                                                       placeholder="Name">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">
                                        Close
                                    </button>
                                    <button type="button" onclick="addProduct()"
                                            class="btn btn-info waves-effect waves-light"> Add Products
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.modal -->


                    <div id="product-attribute-modal" class="modal fade" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Add New Attribute</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                    </button>
                                </div>
                                <div class="modal-body p-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Selected Product :</label>
                                                <label class="control-label" id="selected-product-value">Selected
                                                    Product Name</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Attribute Name</label>
                                                <input type="text" class="form-control" id="attribute-name"
                                                       placeholder="Attribute Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Attribute Value</label>
                                                <input type="text" class="form-control" id="attribute-value"
                                                       placeholder="Value">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">
                                        Close
                                    </button>
                                    <button type="button" onclick="addProductAttribute()"
                                            class="btn btn-info waves-effect waves-light"> Add Attributes
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div><!-- /.modal -->


                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-4">
                                        <!-- Log In modal -->
                                        <button type="button" onclick="populateModalForProduct()"
                                                class="btn btn-success waves-effect waves-light" data-toggle="modal"
                                                data-target="#product-modal">
                                            Add Product
                                        </button>

                                    </div>
                                    <div class="col-4">
                                        <button type="button" onclick="populateModalForProduct()"
                                                class="btn btn-success waves-effect waves-light" data-toggle="modal"
                                                data-target="#product-attribute-modal">
                                            Add Product Attribute
                                        </button>

                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <select id="select-product-list" onchange="onChangeProductName(this.value)">
                                                <option value="all">Some option</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- start page title -->
                                <div class="row">
                                    <div class="col-12">
                                        <div class="page-title-box">
                                            <div class="page-title-right">
                                                <ol class="breadcrumb m-0">
                                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a>
                                                    </li>
                                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a>
                                                    </li>
                                                    <li class="breadcrumb-item active">File Uploads</li>
                                                </ol>
                                            </div>
                                            <h4 class="page-title">File Uploads</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- end page title -->
                                <!-- Image Upload Code -->
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="header-title">Image file upload</h4>
                                                <p class="sub-header">
                                                    Please upload your Image.
                                                </p>
                                                <form method="post" action="" enctype="multipart/form-data" id="myform">
                                                    <div>
                                                        <input type="file" id="file" name="file"/>
                                                        <input type="button" class="button" value="Upload"
                                                               id="image_upload">
                                                    </div>
                                                </form>
                                                </form>
                                                <!-- Preview -->
                                                <div class="dropzone-previews mt-3" id="file-previews"></div>
                                            </div> <!-- end card-body-->
                                        </div> <!-- end card-->
                                    </div><!-- end col -->
                                </div>
                                <table id="Product-Data-Table" class="table dt-responsive nowrap w-100">
                                    <thead>
                                    <tr>
                                        <th>Attribute Name</th>
                                        <th>Attribute Value</th>
                                    </tr>
                                    </thead>
                                    <tbody id="attr-tbl-body">
                                    </tbody>
                                </table>
                            </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
                <!-- end row-->

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

<!-- third party js -->
<script src="../assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<script src="../assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="../assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="../assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="../assets/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/plug-ins/1.10.21/api/fnReloadAjax.js"></script>
<!-- Sweet Alerts js -->
<script src="../assets/libs/sweetalert2/sweetalert2.min.js"></script>

<!-- third party js ends -->

<!-- Datatables init -->
<script src="../assets/js/pages/datatables.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>
<script>

    var dataTable;
    var selectedPrdctId = 0
    $(document).ready(function () {

        dataTable = $('#Product-Data-Table').DataTable({

            "serverSide": true,
            "paging": true,
            "searching": false,
            "bLengthChange": true,
            "responsive": true,
            "sPaginationType": 'full_numbers',
            "iDisplayLength": 20,
            "length": 5,
            "aiDsiplay": 5,
            "bDestroy": true,
            "ordering": false,
            "lengthMenu": [[5, 10, 20, 50, -1], [5, 10, 20, 50, "All"]],
            "ajax": {
                "url": "http://localhost:2080/PIM/api/v1/getProductAttributes",
                "type": "POST",
                "data": function (d) {
                    d.productId = $('#select-product-list').val();
                },
                dataFilter: function (data) {
                    var json = jQuery.parseJSON(data);
                    return JSON.stringify(json);
                }
            },
            "columns": [
                {
                    "data": "name", "mRender": function (data, type, row) {
                        return row.name;
                    }
                },
                {
                    "data": "value", "mRender": function (data, type, row) {
                        return row.value;
                    }
                }
            ],

            "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                debugger;
                var x = "testing";

            }
            ,
            "fnDrawCallback": function (oSettings) {
                debugger;
                var y = "testing";
            }
        });
    });


    function addAttrGroup() {
        debugger;
        $.ajax('http://localhost:2080/PIM/api/v1/addAttributeGroup', {
            type: 'POST',  // http method
            data: {name: document.getElementById("attributeGrp").value},  // data to submit
            success: function (data, status, xhr) {
                debugger;
                populateAttrGrp(data);
                Swal.fire({
                    title: "Success",
                    text: "Attribute Group Saved",
                    type: "success",
                    confirmButtonClass: "btn btn-confirm mt-2"
                });
                $('#login-modal').modal('toggle');
            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });

    }


    function onChangeAttGrp(id) {
        selectedProductGrpId = id;
    }

    function getAttGrp(id) {
        $.ajax('http://localhost:2080/PIM/api/v1/getAttrGrp', {
            type: 'POST',  // http method
            data: {name: ""},  // data to submit
            success: function (data, status, xhr) {
                populateProductAttrGrp(data, id);
            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }

    function getproductList(id) {
        $.ajax('http://localhost:2080/PIM/api/v1/getProductList', {
            type: 'GET',  // http method
            success: function (data, status, xhr) {
                populateProductList(data, id);
            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }

    function populateProductList(data, id) {
        var idd = "#" + id;
        $(idd).empty()
        $(idd).append(new Option("All", "all"));
        for (i = 0; i < data.length; i++) {
            $(idd).append(new Option(data[i]));
        }
    }


    function refreshDataTable(prdctId) {
        debugger;
        $('#Product-Data-Table').DataTable().ajax.reload()
    }


    function populateProductAttrGrp(data, id) {
        var idd = "#" + id;
        $(idd).empty()
        $(idd).append(new Option("All", "0"));
        for (i = 0; i < data.length; i++) {
            $(idd).append(new Option(data[i].groupName));
        }
    }


    function addProduct() {
        $.ajax('http://localhost:2080/PIM/api/v1/addProduct', {
            type: 'POST',  // http method
            data: {
                catGroupId: $('#select-product-category').val(),
                name: $('#product-name').val()
            },  // data to submit
            success: function (data, status, xhr) {
                debugger;
                console.log(data);
                Swal.fire({
                    title: "Success",
                    text: "Product Saved",
                    type: "success",
                    confirmButtonClass: "btn btn-confirm mt-2"
                });
                $('#login-modal').modal('toggle');


                //populateAttrGrp(data , 'select-attrGrp');

            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }


    function addProductAttribute() {
        $.ajax('http://localhost:2080/PIM/api/v1/addProductAttributes', {
            type: 'POST',  // http method
            data: {
                productId: selectedPrdctId,
                attName: $('#attribute-name').val(),
                attValue: $('#attribute-value').val()
            },  // data to submit
            success: function (data, status, xhr) {
                debugger;
                console.log(data);
                Swal.fire({
                    title: "Success",
                    text: "Product Saved",
                    type: "success",
                    confirmButtonClass: "btn btn-confirm mt-2"
                });
                $('#login-modal').modal('toggle');
                //populateAttrGrp(data , 'select-attrGrp');
            },
            error: function (jqXhr, textStatus, errorMessage) {
                console.log(errorMessage);
            }
        });
    }

    function populateModal() {
        getAttGrp('select-product-category');
    }


    getAttGrp('select-product-category');

    getproductList('select-product-list')

    function onChangeProductName(id) {
        selectedPrdctId = id;
        document.getElementById("selected-product-value").innerHTML = selectedPrdctId;
        refreshDataTable($('#select-product-list').val());
    }

    $(document).ready(function () {

        $("#image_upload").click(function () {

            var fd = new FormData();
            var files = $('#file')[0].files[0];
            fd.append('imageFile', files);

            $.ajax({
                url: 'http://localhost:2080/PIM/api/v1/uploadImage',
                type: 'post',
                // data >> The data to send to the server when performing the Ajax request.
                data: fd,
                contentType: false,
                processData: false,
                success: function (response) {
                    //convert response object to array
                    debugger;

                    $.ajax('http://localhost:5000/query?imagePath='+response, {
                        type: 'GET',  // http method
                        data: {

                        },  // data to submit
                        headers: {
                            'Access-Control-Allow-Origin': 'http://localhost:5000'
                        },
                        success: function (data, status, xhr) {
                            debugger;
                            console.log(data);
                            $('#image-text').text(data);
                            $('#centermodal').modal('toggle');
                        },
                        error: function (jqXhr, textStatus, errorMessage) {
                            console.log(errorMessage);
                        }
                    });

                    if (response != "") {

                        // var array = $.map(response, function (value, index) {
                        //     return [value];
                        // });
                        // localStorage.setItem("test", JSON.stringify(array));
                        debugger;

                        Swal.fire({
                            title: "Success",
                            text: "Image Uploaded",
                            type: "success",
                            confirmButtonClass: "btn btn-confirm mt-2"
                        });
                        $('#login-modal').modal('toggle');
                    }
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