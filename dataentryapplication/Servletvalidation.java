        
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author Shubham kumar
 */
public class Servletvalidation extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response); 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         String n=request.getParameter("uname");
         String p=request.getParameter("pwd");
         
         if(n.equals("shubham") && p.equals("123"))
         {
             out.println("suscessfully login...");
             RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
             rd.forward(request, response);
         }
         else
         {
             out.println("login falied...");
             RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
             rd.forward(request, response);
         }
         out.close();
        } 
    }
}