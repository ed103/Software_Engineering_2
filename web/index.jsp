<%-- 
    Document   : index
    Created on : Dec 30, 2023, 10:10:11 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <jsp:include page="includes/header.jsp"/>
</head>
<body style="background-image: url('fruits.jpg'); background-size: cover; background-attachment: fixed; background-color: rgba(255, 255, 255, 0.7);">
    <jsp:include page="includes/adminnav.jsp"/>
    <center>
        <div class="container mt-5" style="height:700px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); padding: 20px; background-color: rgba(255, 255, 255, 0.9); border-radius: 25px;">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h1 class="text-center">Register here</h1>
                    <img src="fruites.jpg" alt="Background Image" style="width: 100%; height: auto; position: absolute; top: 0; left: 0; z-index: -1; border-radius: 15px;">

                    <form action="insert" method="post">
                        <div class="form-group">
                            <label for="fname">Full Name:</label>
                            <input type="text" class="form-control" id="fname" name="fname" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="contactno">Contact no:</label>
                            <input type="number" class="form-control" id="contactno" name="contactno" required>
                        </div>

                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Create Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="form-group">
                            <label for="confirm_password">Confirm Password:</label>
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" required>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Register</button>
                        <br>
                        Already have an account<a href="login.jsp"> Login</a>
                    </form>
                </div>
            </div>
        </div>
    </center>
    
</body>
<jsp:include page="includes/footer.jsp"/>
</html>
