<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Datatables | UBold - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.ico">

        <!-- Sweet Alert-->
        <link href="<%=request.getContextPath()%>/assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />

        <!-- third party css -->
        <link href="<%=request.getContextPath()%>/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/assets/libs/datatables.net-select-bs4/css//select.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->

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
            <!-- Sidebar -left -->
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Datatables</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Product Attributes </h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->






                        <div class="row">

                            <!-- SignIn modal content -->
                            <div id="login-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="text-center mt-2 mb-4">
                                                <a href="index.html" class="text-success">
                                                    <span><img src="<%=request.getContextPath()%>/assets/images/logo-dark.png" alt="" height="24"></span>
                                                </a>
                                            </div>

                                            <form action="#" class="px-3">

                                                <div class="form-group">
                                                    <label for="attributeGrp">Attribute Group</label>
                                                    <input class="form-control" type="text" id="attributeGrp" required="" placeholder="abcgroup">
                                                </div>

                                                <div class="form-group text-center">
                                                    <button class="btn btn-rounded btn-primary" onclick="addAttrGroup()">Add</button>
                                                </div>

                                            </form>

                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                            <div id="con-close-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Add Attribute</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body p-4">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="select-attrGr" class="control-label">Attribute Group</label>
                                                        <select id="select-attrGr"  class="form-control">
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="attr-name" class="control-label">Name</label>
                                                        <input type="text" class="form-control" id="attr-name" placeholder="Name">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="attr-label" class="control-label">Label</label>
                                                        <input type="text" class="form-control" id="attr-label" placeholder="label Name">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="select-attr-type" class="control-label">Attribute Type</label>
                                                        <select id="select-attr-type"   class="form-control">
                                                            <option value="1">String</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                            <button type="button" onclick="addAttribute()" class="btn btn-info waves-effect waves-light"> Add </button>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.modal -->



                            <div class="col-12">

                                <div class="card">
                                    <div class="card-body">
                                            <h4 class="header-title">Select Attribute Group</h4>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="form-group">
                                                        <select id="select-attrGrp" onchange="onChangeAttGrp(this.value)">
                                                            <option data-display="Select">Nothing</option>
                                                            <option value="1">Some option</option>
                                                            <option value="2">Another option</option>
                                                            <option value="3" disabled>A disabled option</option>
                                                            <option value="4">Potato</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-4">
                                                    <!-- Log In modal -->
                                                    <button type="button" onclick="populateModal()" class="btn btn-success waves-effect waves-light" data-toggle="modal" data-target="#con-close-modal">
                                                        Add Attribute </button>

                                                </div>
                                                <div class="col-4">
                                                        <!-- Log In modal -->
                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#login-modal">
                                                            Add Attribute Groups</button>

                                                </div>

                                            </div>

                                        <table id="Attribute-Data-Table" class="table dt-responsive nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Label</th>
                                                    <th>Type</th>
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
        <script src="<%=request.getContextPath()%>/assets/js/vendor.min.js"></script>

        <!-- third party js -->
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/libs/pdfmake/build/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/plug-ins/1.10.21/api/fnReloadAjax.js"></script>
        <!-- Sweet Alerts js -->
        <script src="<%=request.getContextPath()%>/assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- third party js ends -->

        <!-- Datatables init -->
        <script src="<%=request.getContextPath()%>/assets/js/pages/datatables.init.js"></script>

        <!-- App js -->
        <script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
        <script>

            var dataTable;
            var selectedGrpId=0
            $(document).ready(function() {

                dataTable =  $('#Attribute-Data-Table').DataTable({

                    "serverSide": true,
                    "paging": true,
                    "searching": false,
                    "bLengthChange":true,
                    "responsive": true,
                    "sPaginationType": 'full_numbers',
                    "iDisplayLength": 20,
                    "length":5,
                    "aiDsiplay" : 5,
                    "bDestroy": true,
                    "ordering": false,
                    "lengthMenu": [[5, 10, 20, 50, -1], [5, 10, 20, 50, "All"]],
                    "ajax": {
                        "url": "http://localhost:2080/PIM/api/v1/getAttributes",
                        "type": "POST",
                        "data":function( d ) {
                            d.attrGrpId= $('#select-attrGrp').val();
                        },
                        dataFilter: function(data){
                            var json = jQuery.parseJSON( data );
                            return JSON.stringify( json );
                        }
                    } ,
                    "columns": [

                        { "data":"name" , "mRender":function ( data, type, row ) {
                                return row.name;
                            }
                        },
                        { "data": "label" ,  "mRender":function ( data, type, row ) {
                                return row.label;
                            }
                        },
                        { "data": "type" , "mRender":function ( data, type, row ) {
                                return row.type;
                            }
                        }

                    ],

                    "fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
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


            function addAttrGroup(){
                debugger;
                $.ajax('http://localhost:2080/PIM/api/v1/addAttributeGroup', {
                    type: 'POST',  // http method
                    data: { name: document.getElementById("attributeGrp").value },  // data to submit
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


            function onChangeAttGrp(id){
                selectedGrpId = id;
                refreshDataTable($('#select-attrGrp').val());
            }

            function getAttGrp(id){
                $.ajax('http://localhost:2080/PIM/api/v1/getAttrGrp', {
                    type: 'POST',  // http method
                    data: { name: "" },  // data to submit
                    success: function (data, status, xhr) {
                        populateAttrGrp(data , id);
                    },
                    error: function (jqXhr, textStatus, errorMessage) {
                        console.log(errorMessage);
                    }
                });
            }


            function refreshDataTable(attrGrpId){
                debugger;
                $('#Attribute-Data-Table').DataTable().ajax.reload()
            }


            function populateAttrGrp(data,id){

                var idd = "#"+id;
                $(idd).empty()
                $(idd).append(new Option("All", "0"));
                    for(i=0;i<data.length; i++){
                        $(idd).append(new Option(data[i].groupName, data[i].categoryGrpId
                        ));
                    }
            }

            function addAttribute(){
                $.ajax('http://localhost:2080/PIM/api/v1/saveAttribute', {
                    type: 'POST',  // http method
                    data: { attrGrpId : $('#select-attrGr').val() ,
                        name :$('#attr-name').val()  ,
                        label:  $('#attr-label').val() ,
                        type : $('#select-attr-type').val()  },  // data to submit
                    success: function (data, status, xhr) {
                        debugger;
                        console.log(data);

                        Swal.fire({
                            title: "Success",
                            text: "Attribute Saved",
                            type: "success",
                            confirmButtonClass: "btn btn-confirm mt-2"
                        });
                        $('#con-close-modal').modal('toggle');


                        //populateAttrGrp(data , 'select-attrGrp');

                    },
                    error: function (jqXhr, textStatus, errorMessage) {
                        console.log(errorMessage);
                    }
                });
            }

            function populateModal(){
                getAttGrp('select-attrGr');
            }



            getAttGrp('select-attrGrp');



        </script>
    </body>
</html>