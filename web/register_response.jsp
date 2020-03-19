<%-- 
    Document   : register_response
    Created on : 16-Mar-2020, 13:54:48
    Author     : axelt
--%>

<%@page import="application.Client"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register for <strong>BOOKER</strong></title>
    </head>

    <% 
        String username = (String)request.getAttribute("username");
        String password = (String)request.getAttribute("password");
        Client c = new Client(username, password);
        boolean check = false; 
    %>

    <body>
        <jsp:useBean id="ClientBean" class="application.ClientBean" scope="session"/>
        
        <%
            check = ClientBean.register(c);
        %>

        <% if (check == true) { %>
        <h1>You have successfully created an account!</h1>
        <h2><a href="/BookReviewWebsite/view_reviews.jsp">See Reviews</a></h2>
        <%} else {
        %>
        <h1>Register failed</h1>
        <h2><a href="/BookReviewWebsite/register.jsp">Try again?</a></h2>
        <%}%>
    </body>
</html>
