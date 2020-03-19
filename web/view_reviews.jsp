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
    </head>
  
    
    <% List<Book> books; %>
    <body>
        <jsp:useBean id="BookBean" class="application.BookBean" scope="session"/>

        <% books = BookBean.getBook(); %>
        <h1>Movie List</h1>
        
            <%
                for (int i = 0; i < books.size(); i++) {%>
            <p>
                <%=(i+1)+". "+books.get(i)%>
            </p> 
            <%}%>
        <h4><a href="/BookReviewWebsite/add_review.jsp">Write a Review</a></h4>
        <h4><a href="/BookReviewWebsite/index.html">Home Page</a></h4>
    </body>
    
    
</html>
