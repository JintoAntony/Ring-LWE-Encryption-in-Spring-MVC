<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>AEP - Login</title>
    <link href="<c:url value='/resources/loginform/css/style.css' />" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="container">
        <center>
            <h1>Title : ${title}</h1>
            <h1>Messdsage : ${message}</h1>

            <%--<c:url value="/j_spring_security_logout" var="logoutUrl" />--%>
            <!-- csrt for log out-->
            <!--                    <form action="${logoutUrl}" method="post" id="logoutForm">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    </form>-->
            <script>
                //                        function formSubmit() {
                //                            document.getElementById("logoutForm").submit();
                //                        }
            </script>

            <sec:authorize access="hasRole('ROLE_USER')">
            <!-- For login user -->
            <c:url value="/j_spring_security_logout" var="logoutUrl"/>
            <form action="${logoutUrl}" method="post" id="logoutForm">
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
            </form>
            <script>
                function formSubmit() {
                    document.getElementById("logoutForm").submit();
                }
            </script>

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <h2>
                    Welcome : ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> Logout</a>
                </h2>
            </c:if>
        </center>
    </div>
</div>

</body>
</html>