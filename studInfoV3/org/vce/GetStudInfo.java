package org.vce;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class GetStudInfo extends HttpServlet{
    
    public void doGet(HttpServletRequest request, 
                        HttpServletResponse response) throws IOException, ServletException{
       
        /*let servlet call the jsp to produce the output*/
        /*the container provides a mechanism called 'request dispatching' that allows
          one container-managed component to call another (servlet..calling..jsp)
          i.e the servlet will get the info from sInfo and save it in the request object,
          then dispatch the request to the jsp
        */
        
        String rollNumber = request.getParameter("rollNo");
              
        StudInfo sInfo = new StudInfo(rollNumber);
        String dept = sInfo.getDepartment();
         
        /* add an attribute to the request object for the jsp to use*/
        request.setAttribute("department", dept);
        
        /* instantiate a request dispatcher for the jsp*/
        RequestDispatcher rd = request.getRequestDispatcher("getInfo.jsp");
        
        /* use the request dispatcher to ask the container to start the jsp ,
        sending it the request and response*/
        rd.forward(request, response);
        
    }
}
 