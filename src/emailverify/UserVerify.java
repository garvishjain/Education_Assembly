package emailverify;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserVerify
 */

@WebServlet("/UserVerify")
public class UserVerify extends HttpServlet {
	
	private static final long serialVersionUID = -3544581659378619029L;



	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        try (PrintWriter out = response.getWriter()) {
	            //feth form value
	           String name = request.getParameter("fname");
	           String email = request.getParameter("sts");
	           
	      		//create instance object of the SendEmail Class
	           SendEmail sm = new SendEmail();
	      		//get the 6-digit code
	           String code = sm.getRandom();
	           
	      		//craete new user using all information
	           User user = new User(name,email,code);
	           
	           //call the send email method
	           boolean test = sm.sendEmail(user);
	           
	      		//check if the email send successfully
	           if(test){
	               HttpSession session  = request.getSession();
	               session.setAttribute("authcode", user);
	               response.sendRedirect("register.jsp");
	           }else{
	      		  out.println("Failed to send verification email");
	      	   }
	           
	        }
	    }

	   
	    
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

}
