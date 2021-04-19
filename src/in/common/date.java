package in.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class date {

	 SimpleDateFormat formatter;
	    String formatDate  ;
	  	Date datee;
	  public String Date(String date)
	  {
		  
			try {
				
				 formatter = new SimpleDateFormat("yyyy-MM-dd");
				datee = formatter.parse(date);
				 formatDate = formatter.format(datee);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		  
		  
		  
		return formatDate;
		  
	  }
}
