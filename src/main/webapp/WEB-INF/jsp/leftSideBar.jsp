<%--
  Created by IntelliJ IDEA.
  User: Junaid Khan
  Date: 6/30/2020
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="left-side-menu">

    <div class="h-100" data-simplebar>

        <!-- User box -->
        <div class="user-box text-center">
            <img src="<%=request.getContextPath()%>/assets/images/users/user-1.jpg" alt="user-img" title="Mat Helme"
                 class="rounded-circle avatar-md">
            <div class="dropdown">
                <a href="javascript: void(0);" class="text-dark dropdown-toggle h5 mt-2 mb-1 d-block"
                   data-toggle="dropdown">Geneva Kennedy</a>
                <div class="dropdown-menu user-pro-dropdown">

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-user mr-1"></i>
                        <span>My Account</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-settings mr-1"></i>
                        <span>Settings</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-lock mr-1"></i>
                        <span>Lock Screen</span>
                    </a>

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-log-out mr-1"></i>
                        <span>Logout</span>
                    </a>

                </div>
            </div>
            <p class="text-muted">Admin Head</p>
        </div>

        <!--- Sidemenu -->
        <div id="sidebar-menu">

            <ul id="side-menu">

                <li class="menu-title"> Statistics </li>

                <li>
                    <a href="#sidebarDashboards" data-toggle="collapse">
                        <i class="mdi mdi-chart-areaspline-variant"></i>

                        <span> Dashboards </span>
                    </a>
                    <div class="collapse" id="sidebarDashboards">
                        <ul class="nav-second-level">
                            <li>

                                <a href="/dashboard">Sales Statistics</a>
                            </li>
                            <li>

                                <a href="/forecasting">Sales Forecasting</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="menu-title mt-2">Apps</li>

                <li>
                    <a href="/attribute">
                        <i data-feather="plus-circle" class="icon-dual"></i>
                        <span> Add Groups</span>
                    </a>
                </li>

                <li>
                    <a href="/product">
                        <i data-feather="plus-circle" class="icon-dual"></i>
                        <span> Add Product </span>
                    </a>
                </li>

                <li>
                    <a href="/sales">
                        <i class="mdi mdi-chart-bar-stacked"></i>
                        <span> Total Sales </span>
                    </a>
                </li>

                <li>
                    <a href="#sidebarEcommerce" data-toggle="collapse">
                        <i data-feather="shopping-cart"></i>
                        <span> Comparative Analysis </span>
                        <span class="menu-arrow"></span>
                    </a>
                    <div class="collapse" id="sidebarEcommerce">
                        <ul class="nav-second-level">
                            <li>

                                <a href="/amazon">Compare MarketPlace</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li>
                    <a href="#sidebarCrm" data-toggle="collapse">
                        <i data-feather="users"></i>
                        <span> AI </span>
                        <span class="menu-arrow"></span>
                    </a>
                    <div class="collapse" id="sidebarCrm">
                        <ul class="nav-second-level">
                            <li>
                                <a href="crm-dashboard.html">Dashboard</a>
                            </li>

                            <li>

                                <a href="/fileUpload">File Upload</a>
                            </li>
                        </ul>

                    </div>
                </li>
            </ul>

        </div>
        <!-- End Sidebar -->

        <div class="clearfix"></div>

    </div>
</div>