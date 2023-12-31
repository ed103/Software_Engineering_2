package back;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class retreive extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Data Retrieval</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h1>Data Retrieval</h1>");

            // Call the method to retrieve data from the database
            retrieveData(out);

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Data Retrieval Servlet";
    }

    private void retrieveData(PrintWriter out) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            String jdbcUrl = "jdbc:your_database_url";
            String username = "your_username";
            String password = "your_password";
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");

            // Prepare SQL query
            String sql = "SELECT name, price, description FROM product";
            stmt = conn.prepareStatement(sql);

            // Execute the query
            rs = stmt.executeQuery();
            out.println("<table class='table'>");
            out.println("<thead class='thead-dark'>");
            out.println("<tr>");
            out.println("<th scope='col'>Name</th>");
            out.println("<th scope='col'>Price</th>");
            out.println("<th scope='col'>Description</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            // Process the result set
            while (rs.next()) {
                String pname = rs.getString("name");
                String pprice = rs.getString("price");
                String pdescription = rs.getString("description");
                
                out.println("<tr>");
                out.println("<td>" + pname + "</td>");
                out.println("<td>" + pprice + "</td>");
                out.println("<td>" + pdescription + "</td>");
                out.println("</tr>");
               

                // Display the retrieved data in a Bootstrap card
                out.println("<div class='card' style='width: 18rem; margin-bottom: 20px;'>");
                out.println("<div class='card-body'>");
                out.println("<h5 class='card-title'>Name: " + pname + "</h5>");
                out.println("<p class='card-text'>Email: " + pprice + "</p>");
                out.println("<p class='card-text'>Password: " + pdescription + "</p>");
                out.println("</div>");
                out.println("</div>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
