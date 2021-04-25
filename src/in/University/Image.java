package in.University;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



/**
 * Servlet implementation class Image
 */
@WebServlet("/Image")
public class Image extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String fileName;
	String pathName;
	String name;
	Part part;
	
	
	public Image(String fileName,Part part)
	{
		this.fileName=fileName;
		this.part=part;
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			pathName = req.getContextPath()+"\\Images\\";
			name =(LocalDateTime.now().toString().replace(":","")) +"" +fileName;
		
             String finallocation = pathName +(LocalDateTime.now().toString().replace(":","")) +"" +fileName;

             req.setAttribute("fileName", name);
             part.write(finallocation );
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
