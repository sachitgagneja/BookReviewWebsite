<%-- 
    Document   : ReviewResponse
    Created on : 16-Mar-2020, 13:52:38
    Author     : axelt
--%>
<%@page import="application.Book"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review</title>
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
  <% 
        String title = (String)request.getAttribute("title");
        String author = (String)request.getAttribute("author");
        String pubYear = (String)request.getAttribute("pubYear");
        String review = (String)request.getAttribute("review");
        String rating = (String)request.getAttribute("rating");

        Book book = new Book(title, author, pubYear, review, rating);
        boolean check = false;
        %>
    
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                    <img src="../assets/img/logo.svg" width="30" height="30" class="d-inline-block align-top" alt="">
                        BookWorm World</a>
            </nav>

        <jsp:useBean id="BookBean" class="application.BookBean" scope="session"/>

        <%
            check = BookBean.addReview(book);
        %>

        <% if (check == true) { %>
            <header class="login">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center text-center">
                        <div class="col-lg-10 align-self-end">
                            <h3 class="text-uppercase text-white font-weight-bold">Review Accepted</h3>
                            <hr class="divider my-4" />
                        </div>
                        <div class="col-lg-8 align-self-baseline">
                            <a class="btn btn-primary btn-xl js-scroll-trigger" href="/BookReviewWebsite/view_reviews.jsp">Read Reviews</a>
                        </div>
                    </div>
                </div>
            </header>
            <br><br>
        <%} else {
        %>

        <header class="login">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h3 class="text-uppercase text-white font-weight-bold">Review Unsuccessful</h3>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="/BookReviewWebsite/add_review.jsp">Try Again</a>
                    </div>
                </div>
            </div>
        </header>
        <br><br>
        <%}%>
    </div>
    </body>
</html>
