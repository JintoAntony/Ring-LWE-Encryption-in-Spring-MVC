<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>AEP - Login</title>
        <link href="<c:url value='/resources/loginform/css/style.css' />" rel="stylesheet">  
    </head>

    <body>
        <div class="wrapper">
            <div class="container">

                <c:if test="${not empty error}">
                    <div class="error">${error}</div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if>

                <h1>Welcome to AEP </h1>
                <p><font color="red">${errorMessage}</font></p>
                <form name='loginForm' action="<c:url value='/login' />" method="GET">
                    <input name="username" type="text" placeholder="Username" />
                    <input name="password" type="password" placeholder="Password" /> 
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                    <input type="submit" value="Login" />
                </form>
            </div>


            <ul class="bg-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="<c:url value='/resources/loginform/js/index.js' />"></script>
    </body>
</html>
