<%-- 
    Document   : login
    Created on : Dec 30, 2023, 12:54:36 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-image: url('vegi.jpg'); background-size: cover;">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <jsp:include page="includes/header.jsp"/>
        <style>
            /* Add any additional styles here */
            body {
                background-image: url('vegi.jpg');
                background-size: cover;
            }
            .container {
                height: 500px;
                padding: 20px;
                border-radius: 10px;
                margin-top: 50px;
                background-color: rgba(255, 255, 255, 0.9); /* Adjust alpha for container transparency */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Add box shadow for the container */
            }
        </style>
    </head>
    <body>
        <jsp:include page="includes/adminnav.jsp"/>
        <center>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <form action="admin" method="post">
                            <div class="text-center">
                                <h1>Admin Login</h1>
                            </div>

                            <div class="form-group">
                                <label for="username">User Name:</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <br>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </center>
    </body>
    <jsp:include page="includes/footer.jsp"/>
</html>
