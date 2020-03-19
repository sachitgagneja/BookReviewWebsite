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
        <title>Write a <strong>BOOKER</strong> Review</title>
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
        <jsp:useBean id="BookBean" class="application.BookBean" scope="session"/>

        <%
            check = BookBean.addReview(book);
        %>

        <% if (check == true) { %>
        <h1>Review accepted and added</h1>
        <h2><a href="/BookReviewWebsite/view_reviews.jsp">Review List</a></h2>
        <%} else {
        %>
        <h1>Unsuccessful</h1>
        <h2><a href="/BookReviewWebsite/add_review.jsp">Unsuccessful attempt.</a></h2>
        <%}%>
    </body>
</html>
