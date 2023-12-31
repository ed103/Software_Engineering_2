<%@ page import="java.sql.Connection" %> 
<%@ pageimport="java.sql.DriverManager" %> 
<%@ page import="java.sql.PreparedStatement"%> 
<%@ page import="java.sql.ResultSet" %> 
<%@ pageimport="java.sql.SQLException" %> 
<%@ page import="java.io.PrintWriter" %> 
<%@page contentType="text/html;charset=UTF-8" language="java" %> 

    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User details</title>
    <jsp:include page="includes/header.jsp"/>
    


       <script src="https://kit.fontawesome.com/78e4720a2a.js"></script>

   </head>
  <body>
      <jsp:include page="includes/adminnav.jsp"/>
      <%
    // SQL query to retrieve cart details
    String sqlQuery = "     ";

    // Email to be considered
   
    
	
    try {
        // Load the JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish a connection
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT fname,email,contact_no,username,password FROM user")) {

            
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
%>
<div class="container" style="margin-top: 20px;">
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th scope="col">Full Name</th>
                <th scope="col">Email</th>
                <th scope="col">Contact Information</th>
                <th scope="col">Username</th>
                <th scope="col">Password</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <% while (resultSet.next()) 
            { 
                String fname = resultSet.getString("fname");
                String item = resultSet.getString("email");
                String volume = resultSet.getString("contact_no");
                String username = resultSet.getString("username");
                String pwd = resultSet.getString("password");
            %>
            <tr>
                <td><%= fname %></td>
                <td><%= item %></td>
                <td><%= volume %></td>
                <td><%= username %></td>
                <td><%= pwd %></td>
                <td>
                    <button type="button" class="btn btn-primary">Remove User</button>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>



                                          <%
            }
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }catch(SQLException e){
    	e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }
%>
</body>
<jsp:include page="includes/footer.jsp"/>
</html>
  