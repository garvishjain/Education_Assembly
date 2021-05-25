<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %>  
<%@ include file="inc/header.jsp" %>  
<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();

%>
<!-- Start Page title and tab -->
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center ">
                    <div class="header-action">
                        <h1 class="page-title">College List</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">College List</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
	                <div class="tab-pane active" id="college-list">
	                        <div class="table-responsive">
	                            <div class="table-responsive card">
	                                <table class="table table-hover table-striped table-vcenter text-nowrap mb-0">
	                                    <thead>
	                                        <tr>
	                                            <th>#</th>
	                                            <th>Registration Number</th>
	                                            <th>College Name</th>
	                                            <th>Phone</th>
	                                            <th>Email</th>
	                                            <th>Address</th>
	                                            <th>Edit</th>
	                                        </tr>
	                                    </thead>
	                                     <tbody>
	                                    <%
											try {
												/* String query = "select * from college_registration INNER JOIN department_name ON university_department.fk_department_name=department_name.pk_id"; */
												 String query = "select * from college_registration";
												//get Table data
												ResultSet rs = stmt.executeQuery(query);
												while (rs.next()) {
										%>
	                                    <tr>
	                                    	<td><%=rs.getString("pk_id")%></td>
		                                    <td><%=rs.getString("registration_number")%></td>
		                                    <td><%=rs.getString("college_name") %></td>
		                                    <td><%=rs.getString("Dean_name") %></td>
		                                    <td><%=rs.getString("phone_num") %></td>
		                                    <td><%=rs.getString("Email") %></td>
		                                    <%-- <td><%=rs.getString("address") %></td> --%>
		                                    <td>
	                                            <button type="button" class="btn btn-icon btn-sm" title="View"><a href="college-details.jsp"><i class="fa fa-eye"></i></a></button>
	                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
	                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" name="delete" id="delete" data-type="confirm" value="<%=rs.getString("pk_id") %>"><i class="fa fa-trash-o text-danger"></i></button>
	                                        </td>
	                                    </tr>
	                                   <%
										}
										}catch(Exception e)
	                                    {
											e.printStackTrace();	
	                                    }
	                                   %>
	                                    </tbody>
	                                </table>
	                            </div>        
	                        </div>
	                    </div>
                </div>
            </div>
        </div>
        <%@ include file="inc/footer.jsp" %> 
        <%@ include file="inc/incjs.jsp" %> 
