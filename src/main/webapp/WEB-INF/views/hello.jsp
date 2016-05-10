<%-- 
    Document   : home
    Created on : May 9, 2016, 9:51:59 PM
    Author     : prime
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>
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
                <h1>Welcome</h1>
                <h2>Title : ${title}</h2>	
                <h2>Message : ${message}</h2>
                <a href="/admin">Admin Login</a>
                </center>
            </div>
        </div>
    </body>
</html>