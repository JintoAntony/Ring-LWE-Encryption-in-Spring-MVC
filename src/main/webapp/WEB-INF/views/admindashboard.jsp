<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Algorithm Encryption Plugin</title>
        <!-- Bootstrap Core CSS -->
        <link href="<c:url value='/resources/sbadmin2/bower_components/bootstrap/dist/css/bootstrap.min.css' />" rel="stylesheet">  
        <!-- MetisMenu CSS -->
        <link href="<c:url value='/resources/sbadmin2/bower_components/metisMenu/dist/metisMenu.min.css' />" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="<c:url value='/resources/sbadmin2/dist/css/timeline.css' />" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="<c:url value='/resources/sbadmin2/dist/css/sb-admin-2.css' />" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="<c:url value='/resources/sbadmin2/bower_components/morrisjs/morris.css' />" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="<c:url value='/resources/sbadmin2/bower_components/font-awesome/css/font-awesome.min.css' />" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="admindashboard.html">Algorithm Encryption Plugin</a>
                </div>
                <jsp:include page="partials/navigationbar.jsp" />
                <jsp:include page="partials/sidebar.jsp" />
            </nav>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header" style="color: rgb(92,184,92)">Dashboard</h3>
                    </div>
                </div>
                <jsp:include page="partials/widgets.jsp" />
                <%--<jsp:include page="partials/morris-charts.jsp" />--%>
            </div>
        </div>


        <!-- jQuery -->
        <script src="<c:url value='/resources/sbadmin2/bower_components/jquery/dist/jquery.min.js' />"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="<c:url value='/resources/sbadmin2/bower_components/bootstrap/dist/js/bootstrap.min.js' />"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="<c:url value='/resources/sbadmin2/bower_components/metisMenu/dist/metisMenu.min.js' />"></script>

        <!-- Morris Charts JavaScript -->
        <script src="<c:url value='/resources/sbadmin2/bower_components/raphael/raphael-min.js' />"></script>
        <script src="<c:url value='/resources/sbadmin2/bower_components/morrisjs/morris.min.js' />"></script>

        <!--If charts are used, then sen this morris data script for displaying charts-->
        <!--<script src="<c:url value='/resources/sbadmin2/js/morris-data.js' />"></script>-->

        <!-- Custom Theme JavaScript -->
        <script src="<c:url value='/resources/sbadmin2/dist/js/sb-admin-2.js' />"></script>



        <!--  Custom JS Written by Jinto Antony -->
        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>

        <!-- Functionality for Logout -->         
        <c:url value="/j_spring_security_logout" var="logoutUrl" />
        <!-- csrt for log out-->
        <form action="${logoutUrl}" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>

    </body>
</html>
