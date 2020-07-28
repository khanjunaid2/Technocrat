<%--
  Created by IntelliJ IDEA.
  User: Junaid Khan
  Date: 7/14/2020
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!-- CSS Styles -->
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" type="text/css" media="print" href="print.css"/>
    <!-- jQuery & jQuery-UI's Selectable + Draggable -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/jquery-ui-1.8.18.custom.min.js"></script>
    <!-- EaselJS Canvas Interface -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/easel.js"></script>
    <!-- EaselJS' Built-in Filters -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/ColorFilter.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/ColorMatrixFilter.js"></script>

    <!-- Main Application Structure -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/main.js"></script>
    <!-- User Interface -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/ui.js"></script>
    <!-- File Menu -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/file.js"></script>
    <!-- Tools -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/tools.js"></script>
    <!-- Layer Transformations -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/layer.js"></script>
    <!-- Image Transformations -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/image.js"></script>
    <!-- Custom Filters -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/ConvolutionFilter.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/filters.js"></script>
    <!-- Simple Scripting System -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/cropper/scripts.js"></script>
</head>
<body>
<!-- Shade for all Dialogs -->
<div id="overlay"></div>
<!-- Crop Layer Element -->
<div id="cropoverlay" class="dialog">
    <div></div>
    <button style="position: absolute; top: -33px;" class="button-ok">Crop</button><button style="position: absolute; top: -33px; left: 50px;"  class="button-cancel">Cancel</button>
</div>
<!-- Various Dialogs -->
<div id="dialog-openurl" class="dialog">
    Please enter url to open:<br>
    <input type="text" style="width: 350px;"/>
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-scale" class="dialog">
    Set scale:<br>
    X: <input class="input-scaleX" type="text" style="width: 50px; text-align: right;" value="100"/>%
    Y: <input class="input-scaleY" type="text" style="width: 50px; text-align: right;" value="100"/>%
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-rotate" class="dialog">
    Rotate:<br>
    <input type="text" style="width: 50px; text-align: right;" value="0"/>°
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-skew" class="dialog">
    Skew:<br>
    X: <input class="input-skewX" type="text" style="width: 50px; text-align: right;" value="100"/>°
    Y: <input class="input-skewY" type="text" style="width: 50px; text-align: right;" value="100"/>°
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-layerrename" class="dialog">
    Rename layer:<br>
    <input type="text" style="width: 350px;"/>
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-tooltext" class="dialog">
    Add text layer:<br>
    Font:
    <select>
        <option value="Calibri">Calibri</option>
        <option value="Times New Roman">Times New Roman</option>
        <option value="Courier New">Courier New</option>
    </select>
    Size: <input type="text" class="input-size" style="width: 50px" value="12px"/>
    Color: <input type="text" class="input-color" style="width: 70px; background: black; color: silver;" value="black"/><br>
    <input type="text" class="input-text" style="width: 318px"/>
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-filterbrightness" class="dialog">
    Set brightness:<br>
    <input type="text" style="width: 50px;"/>%
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-filterblur" class="dialog">
    Blur radius:<br>
    <input type="text" style="width: 50px;"/>px
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-filtercolorify" class="dialog">
    Colorify:<br>
    R: <input class="r" type="text" style="width: 30px;"/>
    G: <input class="g" type="text" style="width: 30px;"/>
    B: <input class="b" type="text" style="width: 30px;"/>
    A: <input class="a" type="text" style="width: 30px;"/>
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-filtergaussianblur" class="dialog">
    Blur radius:<br>
    <input type="radio" class="3" name="radius"/> 3px
    <input type="radio" class="2" name="radius"/> 2px
    <input type="radio" class="1" name="radius"/> 1px &nbsp;
    <button class="button-ok">Ok</button><button class="button-cancel">Cancel</button>
</div>
<div id="dialog-executescript" class="dialog">
    Execute script:<br>
    <textarea style="width: 350px; height: 200px;"></textarea><br>
    <button class="button-ok">Execute</button><button class="button-cancel">Cancel</button>
</div>
<!-- Main Menu -->
<ul id="mainmenu">
    <li>
        <button>File</button>
        <ul class="submenu">
            <li><button id="button-openfile"><input type="file"/><span style="margin-top: -32px; display: block;">Open File</span></button></li>
            <li><button id="button-openurl">Open URL</button></li>
            <li><hr/></li>
            <li><button id="button-importfile"><input type="file" multiple="true"/><span style="margin-top: -32px; display: block;">Import File</span></button></li>
            <li><button id="button-importurl">Import URL</button></li>
            <li><hr/></li>
            <li><button id="button-save">Save</button></li>
            <li><button id="button-print">Print</button></li>
        </ul>
    </li>
    <li>
        <button>Edit</button>
        <ul class="submenu">
            <li><button id="button-undo">Undo</button></li>
            <li><button id="button-redo">Redo</button></li>
        </ul>
    </li>
    <li>
        <button>Layer</button>
        <ul class="submenu">
            <li><button id="button-layercrop">Crop</button></li>
            <li><button id="button-layerscale">Scale</button></li>
            <li><hr/></li>
            <li><button id="button-layerrotate">Rotate</button></li>
            <li><button id="button-layerskew">Skew</button></li>
            <li><button id="button-layerflipv">Flip Vertically</button></li>
            <li><button id="button-layerfliph">Flip Horizontally</button></li>
        </ul>
    </li>
    <li>
        <button>Image</button>
        <ul class="submenu">
            <li><button id="button-imagescale">Scale</button></li>
            <li><hr/></li>
            <li><button id="button-imagerotate">Rotate</button></li>
            <li><button id="button-imageskew">Skew</button></li>
            <li><button id="button-imageflipv">Flip Vertically</button></li>
            <li><button id="button-imagefliph">Flip Horizontally</button></li>
        </ul>
    </li>
    <li>
        <button>Filters</button>
        <ul class="submenu">
            <li><button id="button-filterbrightness">Brigtness</button></li>
            <li><button id="button-filtercolorify">Colorify</button></li>
            <li><button id="button-filterdesaturation">Desaturation</button></li>
            <li><hr/></li>
            <li><button id="button-filterblur">Blur</button></li>
            <li><button id="button-filtergaussianblur">Gaussian Blur</button></li>
            <li><button id="button-filteredgedetection">Edge Detection</button></li>
            <li><button id="button-filteredgeenhance">Edge Enhance</button></li>
            <li><button id="button-filteremboss">Emboss</button></li>
            <li><button id="button-filtersharpen">Sharpen</button></li>
        </ul>
    </li>
    <li>
        <button id="button-executescript">Execute Script</button>
    </li>
    <li style="float: right;"><button id="button-text"/></li>
    <li style="float: right;"><button id="button-move"/></li>
    <li style="float: right;"><button id="button-select" class="active"/></li>
</ul>
<!-- Right Layer Panel -->
<ul id="layers"></ul>
<!-- Canvas for Drawing -->
<canvas id="canvas1"/>
</body>
</html>