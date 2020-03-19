<%-- 
    Document   : view_reviews
    Created on : 16-Mar-2020, 13:55:11
    Author     : axelt
--%>

<%@page import="application.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><strong>BOOKER'S</strong> Reviews</title>
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
  
    
    <% List<Book> books; %>
    <body>
        <div class="container">
            <jsp:useBean id="BookBean" class="application.BookBean" scope="session"/>

            <header class="">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center text-center">
                        <div class="col-lg-10 align-self-end">
                            <h3 class="text-uppercase text-white font-weight-bold">Review List</h3>
                            <hr class="divider my-4" />
                        </div>
                    </div>
                </div>
            </header>
            <br><br>
            <div class="review_list">
                <% books = BookBean.getBook(); %>
                <%
                    for (int i = 0; i < books.size(); i++) {%>
                <p>
                    <%=(i+1)+". "+books.get(i)%>
                </p> 
                <%}%>
            </div>
            
            <a class="btn btn-primary" href="/BookReviewWebsite/add_review.jsp">Write a Review</a>
            <a class="btn btn-primary" href="/BookReviewWebsite/index.html">Home Page</a>
        </div>
    </body>
</html>
