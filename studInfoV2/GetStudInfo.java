import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class GetStudInfo extends HttpServlet{
    
    public void doGet(HttpServletRequest request, 
                        HttpServletResponse response) throws IOException{
        PrintWriter out = response.getWriter();
        String rollNumber = request.getParameter("rollNo");
       
        StudInfo sInfo = new StudInfo(rollNumber);
        String dept = sInfo.getDepartment();
        
        out.println("<html>" +
                    "<head><title> Department Information</title></head>" +
                    "<body>"+
                    "<h1>The Roll Number  " + rollNumber + " belongs to "
                    + dept + " Department </h1>" + 
                    "</body>"+
                    "</html>");
    }
}
 