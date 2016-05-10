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

                <h3>Login with Username and Password</h3>

                <c:if test="${not empty error}">  <div style="color:red" >${error}</div>   </c:if>
                <c:if test="${not empty msg}">   <div style="color:greenyellow">${msg}</div>     </c:if>

                <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>                    
                    <input type='text' name='username' placeholder="Username" />
                    <input type='password' name='password' placeholder="Password" />
                    <input name="submit" type="submit"   value="submit"  />
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                </form>
                <a href="/welcome">Welcome Page</a>
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
