package back;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class insert extends HttpServlet 
{

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");

            String id = request.getParameter("id");
            String fname = request.getParameter("fname");
            String email = request.getParameter("email");
            String contact_no = request.getParameter("contactno");
            String username = request.getParameter("username");
            String pwd = request.getParameter("password");
           String cs = request.getParameter("confirm_password");
           
           
            

            // Check if the user exists
            PreparedStatement selectPs = con.prepareStatement("SELECT id FROM user WHERE id = ?");
            selectPs.setString(1, id);
            ResultSet selectRs = selectPs.executeQuery();

            // Assuming selectRs is a ResultSet from a SELECT query to check if the user exists

if (selectRs.next()) {
    // User exists, display an error message
    out.println("Id already exists. Please choose a different Id.");
} else {
    // User does not exist, insert new user
    PreparedStatement insertPs = con.prepareStatement("INSERT INTO user (id, fname, email,contact_no, username, password,confirm_password) VALUES (?, ?, ?, ?, ?, ?, ?);");

    insertPs.setString(1, id);
    insertPs.setString(2, fname);
    insertPs.setString(3, email);
    insertPs.setString(4, contact_no);
    insertPs.setString(5, username);
    insertPs.setString(6, pwd);
    insertPs.setString(7, cs);

    int rowsAffected = insertPs.executeUpdate();
System.out.println(rowsAffected);
    if (rowsAffected > 0) {
        // User successfully inserted, redirect to welcome.jsp
        response.sendRedirect("login.jsp");
    } else {
        out.println("<script type=\"text/javascript\">");
                out.println("alert('Register failed. Please try agin.');");
                out.println("window.location.href = 'login.jsp';"); // Redirect to failed.jsp or handle accordingly
                out.println("</script>");
    }

    insertPs.close(); // Close the PreparedStatement
}

con.close(); // Close the connection


        } catch (ClassNotFoundException ex) {
            Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
