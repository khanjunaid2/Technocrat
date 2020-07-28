<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />

    <title>PIM</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/frontend/src/stylesheets/reset.css" />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/frontend/src/stylesheets/index.css" />
</head>

<body>
<div class="container">
    <div class="sidebar">
        <div class="logo">
            <img src="<%=request.getContextPath()%>/frontend/src/assets/logo_pim.png" alt="logo" />
        </div>
        <div class="icons">
            <a href="<%=request.getContextPath()%>/frontend/src/pages/image-processing/image-processing.html"><img src="<%=request.getContextPath()%>/frontend/src/assets/icon_dashboard.png"
                                                                            alt="dash" /></a>
            <img src="<%=request.getContextPath()%>/frontend/src/assets/icon_data.png" alt="data" />
            <a href="<%=request.getContextPath()%>/frontend/src/pages/dashboard/dashboard.html"><img src="<%=request.getContextPath()%>/frontend/src/assets/icon_analytics.png"
                                                              alt="analytics" /></a>
        </div>
    </div>
    <div class="content">
        <div>
            <h1>Hi, Raghu</h1>
            <h2 id="date">July 15th, 2020, <span>Wednesday</span></h2>
            <h3> <img src="<%=request.getContextPath()%>/frontend/src/assets/arrow_left.png" alt="arrow"> Click on the menu to begin</h3>
        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/frontend/index.js"></script>
</body>
</html>