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
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                <img src="/Users/sachitgagneja/Documents/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
                BookWorm World</a>
            </nav>

            <header class="login">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center text-center">
                        <div class="col-lg-10 align-self-end">
                            <h2 class="text-uppercase text-white font-weight-bold">Log In to your account</h2>
                            <hr class="divider my-4" />
                        </div>
                    </div>
                </div>
            </header>
        <br><br>

            <form action="Signin" method="POST">
                <div class="form-row">
                    <div class="col">
                        <input type="text" name="username" class="form-control" placeholder="Username">
                    </div>
                    <div class="col">
                        <input type="text" name="password" class="form-control" placeholder="Password">
                    </div>
                </div>
                <br>
                <div class="form-row">
                    <div class="col-sm-12" style="text-align: center;">
                        <button type="submit" class="btn btn-primary">Log In</button>
                        <a class="btn btn-primary" href="/BookReviewWebsite/index.html">Home Page</a>
                    </div>
                </div>
                <br><br>
            </form>
        </div>
    </body>
</html>
