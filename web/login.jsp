<%-- 
    Document   : login
    Created on : 16-Mar-2020, 13:53:42
    Author     : axelt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to <strong>BOOKER</strong></title>
    </head>
    <body>
         <h1>Login below</h1>
        <form action="Signin" method="POST">
            Email:<br>
            <input type="text" name="username" value="username"><br>
            Password:<br>
            <input type="text" name="password" value="password"><br>
            <input type="submit" value="Login">
        </form>
        <h4><a href="/BookReviewWebsite/index.html">Home Page</a></h4>
    </body>
</html>
