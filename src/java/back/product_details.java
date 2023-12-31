package back;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class product_details extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");
            // Example URL with the new driver class
            String url = "jdbc:mysql://localhost:3306/auth";
                        Connection con = DriverManager.getConnection(url, "root", "");


            String id = request.getParameter("id");
            String name = request.getParameter("productName");
            String price = request.getParameter("productPrice");
            String description = request.getParameter("productDescription");
            String status = request.getParameter("productStatus");
            

            // User does not exist, insert new user
            PreparedStatement insertPs = con.prepareStatement("INSERT INTO product (id, name, price, description, status) VALUES (?, ?, ?, ?, ?) ");
            insertPs.setString(1, id);
            insertPs.setString(2, name);
            insertPs.setString(3, price);
            insertPs.setString(4, description);
            insertPs.setString(5, status);

            int rowsAffected = insertPs.executeUpdate();

            if (rowsAffected > 0) {
                // User successfully inserted, redirect to welcome.jsp
                out.println("<script type=\"text/javascript\">");
                out.println("alert('product added');");
                out.println("window.location.href = 'home.jsp';"); // Redirect to failed.jsp or handle accordingly
                out.println("</script>");
            } else {
                // Insert failed, handle the error or redirect accordingly
                response.sendRedirect("error.jsp");
            }

            insertPs.close(); // Close the PreparedStatement

            // Image handling
            Part file = request.getPart("file2");
            String imagefile = file.getSubmittedFileName();
            String uploadDirectory = "C:/Users/Falcon_9/Documents/NetBeansProjects/greensupermarket/web/images";
            String uploadPath = uploadDirectory + File.separator + imagefile;

            System.out.println(imagefile);
            
            try (FileOutputStream fos = new FileOutputStream(uploadPath);
                    InputStream is = file.getInputStream()) {

                byte[] data = new byte[1024];
                int bytesRead;

                while ((bytesRead = is.read(data)) != -1) {
                    fos.write(data, 0, bytesRead);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

            // Insert image file name into the database
            PreparedStatement imageStmt = con.prepareStatement("INSERT INTO product (image) VALUES (?)");
            imageStmt.setString(1, imagefile);

            int imageRowsAffected = imageStmt.executeUpdate();

            if (imageRowsAffected > 0) {
                System.out.println("Image uploaded successfully");
            } else {
                System.out.println("Image upload failed");
            }

            imageStmt.close();

            con.close(); // Close the connection

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(product_details.class.getName()).log(Level.SEVERE, null, ex);
        }

        processRequest(request, response);
    }
}
