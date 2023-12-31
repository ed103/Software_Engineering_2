/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package back;

import com.mysql.cj.protocol.Resultset;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayimg")
public class displayimg extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet displayimg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet displayimg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
String imageid = request.getParameter("imageid");

        int id = Integer.parseInt(imageid);
        Connection con = null;
        int imgid=0;
        String imgfilename=null;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");
        Statement stmt;
        String query=("select * from image");
        stmt=con.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        
        while(rs.next())
        {
            if(rs.getInt("id")==id) 
            {
                imgid =rs.getInt("id");
                imgfilename =rs.getString("filename");
            } 
            else 
            {
                ;
            }
        }
        
    }
    catch(Exception e)
    {
         System.out.println(e);
    }
    
    RequestDispatcher rd;
    request.setAttribute("id", String.valueOf(imgid));
    request.setAttribute("imgfilename", imgfilename);

    rd= request.getRequestDispatcher("display.jsp");
    rd.forward(request, response);
   
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
