<!-- Import package -->
<%@page import="com.sun.xml.internal.ws.server.sei.EndpointResponseMessageBuilder"%>
<%@page import="java.io.File"%>
<%@page import="in.University.professors"%>
<%@page import="in.common.GetConnection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.University.GetProfessorsDB"%>
<%@ include file="inc/header2.jsp" %>  
<%@ include file="inc/stdimport.jsp" %>  

<%

int ucid=0;
String isCollege="";
String isUniversity="";
if(session.getAttribute("uid") != null)
{	
	String id=(String)session.getAttribute("uid");
	 ucid = Integer.parseInt(id);
	 isCollege="N";
	 isUniversity="Y";
}
else if (session.getAttribute("cid") != null)
{
	String id=(String)session.getAttribute("cid");
	 ucid = Integer.parseInt(id);
	 isCollege="Y";
	 isUniversity="N";
}

GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();
ResultSet records=null;
try
{	
	String selectwhichID= isUniversity.equals("Y")? "university_professor.fk_university_id="+ucid :  "university_professor.collegeid="+ucid;
			
	String sql="select position.position as position, department_name.Details as dept,university_professor.* from  university_professor,position,"
			+ "department_name where university_professor.department=department_name.pk_id  AND "
			+ "university_professor.iscollege LIKE '"+isCollege+"' and university_professor.isuniversity LIKE'"+isUniversity+"' and "+selectwhichID ;
	
	records = stmt.executeQuery(sql);

	
	
}

catch(Exception e)
{
	System.out.print("This is running");
	e.printStackTrace();
}


professors pf=new professors();
String des=pf.getImageDesination();
String reponsePath = new File(des).getPath() + File.separatorChar;

System.out.println("from JSp \n"+reponsePath);
System.out.print("<p>bufferSize: " + out.getBufferSize() + " remaining: " + out.getRemaining() + " used: " + (out.getBufferSize() - out.getRemaining()) + " autoFlush: " + out.isAutoFlush() + "</p><br>");
%>
    <!-- Start project content area -->

        <!-- Start Page header -->
        
        <!-- Start Page title and tab -->
        <div class="section-body" >
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center ">
                    <div class="header-action">
                        <h1 class="page-title">Professors</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Professors</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active"data-toggle="tab" href="#pro-all">List View</a></li>
                        <li class="nav-item"><a class="nav-link"data-toggle="tab" href="#pro-grid">Grid View</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#pro-add">Add</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane active" id="pro-all">
                        <div class="table-responsive">
                            <table class="table table-hover table-vcenter table_custom text-nowrap spacing5 border-style mb-0">
                                <tbody>
                                <%
                                
                                while(records.next())
								{ 
									String avatar=records.getString("fname").charAt(0) +""+ records.getString("lname").charAt(0);
								%>
								<tr>
                                      <td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span><%=avatar %></span>
                                            </div>
                                        </td>
                                        <td><div class="font-15"><%=records.getString("fname") %> <%=records.getString("lname") %></div></td>
                                        <td><span><%=records.getLong("phone") %></span></td>
                                        <td><span><%=records.getString("gender") %></span></td>
                                        <td><span class="text-muted"><%=records.getString("dept") %></span></td>
                                        <td>
                                        <%
                                        	if(records.getString("position").equalsIgnoreCase("Full Time")){
                                        %>
                                        <span class="tag tag-success">Full-time</span>
                                        <%} 
                                        	else
                                        	{%>
                                        		<span class="tag tag-warning">Part-time</span>
                                        	<%}
                                        %>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </td>
                                    </tr>
								<%}
                                %>
						       
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane" id="pro-grid">
                        <div class="row">
                             <%
                             	records.beforeFirst();
                                while(records.next())
								{ 
									String avatar=records.getString("fname").charAt(0) +""+ records.getString("lname").charAt(0);
								%>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                            
                                <div class="card">
                                    <div class="card-body text-center ribbon">
                                        <div class="ribbon-box orange" data-toggle="tooltip" title="Permanent"><i class="fa fa-star"></i></div>
                                        <img class="card-profile-img" src="img/<%=records.getString("image") %>" alt="<%=records.getString("fname") %> <%=records.getString("lname") %>">
                                        <h5 class="mb-0"><%=records.getString("fname") %> <%=records.getString("lname") %></h5>
                                        <span><%=records.getString("dept") %></span>
                                        <div class="text-muted"><%=records.getLong("phone") %></div>
                                        <button class="btn btn-primary btn-sm">Read More</button>
                                    </div>
                                </div>
                            </div>
                            
                            <%
                            
								}
                                %>
                                
                            
                        </div>
                    </div>
                    <div class="tab-pane" id="pro-add">
                        <div class="row clearfix">
                            <div class="col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Basic Information</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <form action="../professors" method="post" enctype="multipart/form-data" >
                                    <input type="hidden" name="uid" value="<%=ucid%>">
                                    <div class="card-body">
                                        <div class="row clearfix">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <input type="text" name="fname" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <input type="text" name="lname" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-12">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <input data-provide="datepicker" type="date" data-date-autoclose="true" name="dob" class="form-control" placeholder="Date of Birth">
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-12">
                                                <label>Gender</label>
                                                <select name="gender" class="form-control show-tick">
                                                    <option value="">-- Gender --</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3 col-sm-12">
                                                <div class="form-group">
                                                    <label>Department</label>
                                                    <select name="department" class="form-control">
                                                    <option></option>
                                                    <%
	                                                    try {
	            											String query = "select * from department_name";
	            											//get Table data
	            											ResultSet rs = stmt.executeQuery(query);
	            											while (rs.next()) {
                                                    %>
                                                    	<option value="<%=rs.getInt("pk_id") %>"><%=rs.getString("Details") %></option>
                                                   	<%
	            										}
	                                                    }catch(Exception e)
	                                                    {
		                                                 	e.printStackTrace();   	
	                                                    }
                                                   	%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-12">
                                                <div class="form-group">
                                                    <label>Position</label>
                                                    <select name="position" class="form-control">
                                                    <option></option>
                                                    <%
	                                                    try {
	            											String query = "select * from position";
	            											//get Table data
	            											ResultSet rs = stmt.executeQuery(query);
	            											while (rs.next()) {
                                                    %>
                                                    	<option value="<%=rs.getInt("pk_id") %>" > <%=rs.getString("position") %></option>
                                                    <%
	            											}	
	                                                    }	
	            										catch(Exception e)
	                                                    {
	                                                    	e.printStackTrace();
	                                                    }
                                                    %>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input type="text" name="phone" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12">
                                                <div class="form-group">
                                                    <label>Enter Your Email</label>
                                                    <input type="email" name="email" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group mt-2 mb-3">
                                                    <input type="file" name="image" class="dropify">
                                                    <small id="fileHelp" class="form-text text-muted">Upload professor profile picture.</small>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                                <button type="submit" class="btn btn-outline-secondary">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <%@ include file="inc/footer.jsp" %> 

		<%@ include file="inc/incjs.jsp" %> 
