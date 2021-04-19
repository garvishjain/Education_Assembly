package in.common;

import java.io.IOException;

import java.time.LocalDateTime;

import javax.servlet.http.Part;

public class img {
	
	
	String pathname ;
	String name ;

	
	public String image(String filename, Part part)
	{   
			try {	
				pathname = "E:\\notes\\"+" college ";
				name =(LocalDateTime.now().toString().replace(":","")) +"" +filename;
			
                 String finallocation = pathname +(LocalDateTime.now().toString().replace(":","")) +"" +filename;


	 part.write(finallocation );
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
   return  name;
	}
}
