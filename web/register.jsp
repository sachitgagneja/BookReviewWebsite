<%-- 
    Document   : register
    Created on : 16-Mar-2020, 13:54:35
    Author     : axelt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register for <strong>BOOKER</strong></title>
    </head> 
    <body>
        <h1>Sign up below</h1>
        <form action="UserServlet" method="POST">
            Email:<br>
            <input type="text" name="username" value="username"><br>
            Password:<br>
            <input type="text" name="password" value="password"><br>
            <input type="submit" value="Register">
        </form>
        <h4><a href="/BookReviewWebsite/index.html">Home Page</a></h4>
    </body>
</html>