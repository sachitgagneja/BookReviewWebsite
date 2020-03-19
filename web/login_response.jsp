<%-- 
    Document   : login_response
    Created on : 16-Mar-2020, 13:58:31
    Author     : axelt
--%>
<%@page import="application.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Response</title>
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    
    <% 
        String username = (String)request.getAttribute("username");
        String password = (String)request.getAttribute("password");
        Client c = new Client(username, password);
        boolean check = false; 
    %>
    
    <body>
        <div class="container">
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                <img src="/Users/sachitgagneja/Documents/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
                BookWorm World</a>
            </nav>
        <jsp:useBean id="ClientBean" class="application.ClientBean" scope="session"/>
        
         <%
            check = ClientBean.login(c);
        %>

        <% if (check == true) { %>
        <header class="addReview">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h3 class="text-uppercase text-white font-weight-bold">Log In Successfull</h3>
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
        <header class="addReview">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h3 class="text-uppercase text-white font-weight-bold">Incorrect Credentials</h3>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">Username and Password didn't match our records.</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="/BookReviewWebsite/login.jsp">Try Again</a>
                    </div>
                </div>
            </div>
        </header>
        <br><br>
        <%}%>
    </body>
</html>
