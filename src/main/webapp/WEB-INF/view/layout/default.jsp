<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><tiles:insertAttribute name="title" defaultValue="" /></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Marcos Vidolin">

	<link href="<c:url value="/resources/library/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" media="screen">
	<link href="<c:url value="/resources/library/bootstrap/css/bootstrap-responsive.min.css"/>" rel="stylesheet" media="screen">
	<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" media="screen">

	<tilesx:useAttribute id="styles" name="styles" classname="java.util.List" ignore="true" />
	<c:forEach var="cssName" items="${styles}">
		<link type="text/css" href="<c:url value="/resources/css/${cssName}"/>"
			rel="stylesheet" media="screen" />
	</c:forEach>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<script type="text/javascript">
   (function() {
     var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
     po.src = 'https://apis.google.com/js/client:plusone.js';
     var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
   })();
</script>
<body>

	<tiles:insertAttribute name="navbar" defaultValue="" />

	<div class="container-fluid">
    	<div class="row-fluid">
                
        	<tiles:insertAttribute name="menu" defaultValue="" />
                
            <!--/span-->
            <div class="span9" id="content">

                <div class="row-fluid">
                    <div class="span9">                        
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><tiles:insertAttribute name="navigation" defaultValue="" /></div>
                         	</div>
                            <div class="block-content collapse in">
                            
								<tiles:insertAttribute name="body" defaultValue="" />
                            
                    		</div>
                		</div>
            		</div>
        		</div>            
    		</div>
		</div>
    <hr>

	<tiles:insertAttribute name="footer" defaultValue="" />

    </div>
    <!--/.fluid-container-->

    <script src="<c:url value="/resources/library/jquery-2.0.3.min.js" />"></script>
    <script src="<c:url value="/resources/library/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/menu.js" />"></script>
	<tilesx:useAttribute id="scripts" name="scripts" classname="java.util.List" ignore="true" />
	<c:forEach var="jsName" items="${scripts}">
		<script src="<c:url value="/resources/js/${jsName}" />"></script>
	</c:forEach>

</body>
</html>