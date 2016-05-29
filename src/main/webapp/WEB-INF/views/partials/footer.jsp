     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
     
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
