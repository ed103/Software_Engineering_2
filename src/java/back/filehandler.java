
package back;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class filehandler extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet filehandler</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet filehandler at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        
        
        
        // image
    Part file = request.getPart("file2");

    String imagefile = file.getSubmittedFileName();
    System.out.println(imagefile);

    String uploadDirectory = "C:/Users/Falcon_9/Documents/NetBeansProjects/greensupermarket/web/images";
    String uploadPath = uploadDirectory + File.separator + imagefile;
    System.out.println(uploadPath);

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
Connection con = null;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");
        PreparedStatement stmt;
        
        stmt = con.prepareStatement("insert into image (filename) values(?)");
        stmt.setString(1,imagefile);
        
        int row = stmt.executeUpdate();
        
        if(row>0)
        {
            System.out.println("success");
        }
        else
        {
            System.out.println("failed");
        }
    }
    catch(Exception e)
    {
         System.out.println(e);
    }
    
    processRequest(request, response);
}


    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
