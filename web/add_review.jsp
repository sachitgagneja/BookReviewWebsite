<%-- 
    Document   : AddReview
    Created on : 16-Mar-2020, 13:52:24
    Author     : axelt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Share Review</title>
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                <img src="/Users/sachitgagneja/Documents/BookReviewWebsite/BookReviewWebsite/web/assets/img/logo.svg" width="30" height="30" class="d-inline-block align-top" alt="">
                BookWorm World</a>
            </nav>
            
            <header class="addReview">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center text-center">
                        <div class="col-lg-10 align-self-end">
                            <h1 class="text-uppercase text-white font-weight-bold">Share Your Experience</h1>
                            <hr class="divider my-4" />
                        </div>
                        <div class="col-lg-8 align-self-baseline">
                            <p class="text-white-75 font-weight-light mb-5">Enter the details below & share your review to help other readers to find their next Read!</p>
                        </div>
                    </div>
                </div>
            </header>
            <br><br>
                <form action="ReviewServlet" method="POST">
                    <div class="form-row">
                        <div class="col">
                            <input type="text" name="title" class="form-control" placeholder="Title">
                        </div>
                        <div class="col">
                            <input type="text" name="author" class="form-control" placeholder="Author">
                        </div>
                    </div>
                    <br>
                    <div class="form-row">
                        <div class="col">
                            <input type="text" name="pubYear" class="form-control" placeholder="Publication Year">
                            </div>
                            <div class="col">
                            <input type="text" name="rating" class="form-control" placeholder="Rating (1-5)">
                            </div>
                    </div>
                    <br>
                    <div class="form-row">
                        <div class="col">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Review"></textarea>
                          </div>
                    </div>
                    <br>
                    <div class="form-row">
                        <div class="col">
                            <button type="submit" class="btn btn-primary">Submit Review</button>
                            <a class="btn btn-primary" href="/BookReviewWebsite/index.html">Home Page</a>
                        </div>
                    </div>
                    <br><br>
                </form>
        </div>        
    </body>
</html>
