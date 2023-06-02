<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="tiles" uri = "http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><tiles:getAsString name="title"/></title>
    <link rel="shortcut icon" type="image/png" href="/resources/images/logos/favicon.png" />
    <link rel="stylesheet" href="/resources/css/styles.min.css" />
</head>
	<body>
		<!--  Body Wrapper -->
		<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
		     data-sidebar-position="fixed" data-header-position="fixed">
		    
		    <!-- Sidebar Start -->
		    <aside class="left-sidebar">
		       <tiles:insertAttribute name="nav" />
		    </aside>
		    <!--  Sidebar End -->
		    
		    
		    <!--  Main wrapper -->
		    <div class="body-wrapper">
		    	<tiles:insertAttribute name="header" />
		    	<tiles:insertAttribute name="body" />
		    </div>
		</div><!--  Body Wrapper -->
		<script src="/resources/libs/jquery/dist/jquery.min.js"></script>
		<script src="/resources/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/resources/js/sidebarmenu.js"></script>
		<script src="/resources/js/app.min.js"></script>
		<script src="/resources/libs/apexcharts/dist/apexcharts.min.js"></script>
		<script src="/resources/libs/simplebar/dist/simplebar.js"></script>
		<script src="/resources/js/dashboard.js"></script>
	</body>
</html>

