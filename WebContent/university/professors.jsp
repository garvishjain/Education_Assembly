<!-- Import Package  -->
<%@ include file="inc/stdimport.jsp" %> 
<%@page import="in.common.GetConnection"%>
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
                        <h1 class="page-title">Professors</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Professors</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Student-all">List View</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Student-add">Add</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane active" id="Student-all">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    
                                    
                                                                   
                                    <div class="col-lg-2 col-md-4 col-sm-6">
                                        <a href="javascript:void(0);" class="btn btn-sm btn-primary btn-block" title="">Search</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive card">
                            <table class="table table-hover table-vcenter table-striped mb-0 text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Roll No.</th>
                                        <th>First name</th>
                                        <th>Last Name</th>
                                        <th>Date of birth</th>
                                        <th>gender</th>
                                       <th>Phone number</th>
                                       <th>Email</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<%
	                                      try {
										String query = "select * from university_professor " ;
										//get Table data
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
											
									    String stdname = rs.getString("pk_id");		
									    session.setAttribute("stdname", stdname);
	                                 %>
                                    <tr>
                                        
                                        <td id="pk_id"><%=rs.getString("pk_id") %></td>
                                        <td >
                                           <%=rs.getString("fname") %>
                                        </td>
                                        <td><span class="font-16"><%=rs.getString("lname") %></span></td>
                                        <td><%=rs.getString("dob") %></td>
                                        <td><%=rs.getString("gender") %></td>
                                         <td><%=rs.getString("phone") %></td>
                                         <td><%=rs.getString("email") %></td>
                                     <td>
                                        <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
	                                </td>
                                    
                                    </tr>
										<%
											}
											        } catch (Exception e) {
												e.printStackTrace();
											}
										%>
										
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane" id="Student-add">
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
        <!-- Start main footer -->
         <%@ include file="inc/footer.jsp" %> 
         <%@ include file="inc/incjs.jsp" %>
    </div>    
</div>

<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start Plugin Js -->
<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="../assets/plugins/dropify/js/dropify.min.js"></script>
<script src="../assets/bundles/summernote.bundle.js"></script>
<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>
<script src="assets/js/form/dropify.js"></script>
<script src="assets/js/page/summernote.js"></script>
<script src="assets/js/page/dialogs.js"></script>
</body>
</html>
