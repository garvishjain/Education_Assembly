<!-- Import Package  -->
<%@ include file="inc/stdimport.jsp" %> 
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/header2.jsp" %>  

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
                        <h1 class="page-title">Students</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Students</li>
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
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Aadhar Number">
                                        </div>
                                    </div>
                                    
                                                                   
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
                                        <th>Aadhar Number</th>
                                        <th>Name</th>
                                        <th>Department</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                       
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<%
	                                      try {
										String query = "select * from student_information where college='"+name+"' AND (status ='0' or status='1')" ;
										//get Table data
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
											
									    String stdname = rs.getString("pk_id");		
									    session.setAttribute("stdname", stdname);
	                                 %>
                                    <tr>
                                        
                                        <td id="pk_id"><%=rs.getString("pk_id") %></td>
                                        <td >
                                           <%=rs.getString("aadhar_number") %>
                                        </td>
                                        <td><span class="font-16"><%=rs.getString("first_name") %></span></td>
                                        <td><%=rs.getString("course") %></td>
                                        <td><%=rs.getString("email") %></td>
                                        <td><%=rs.getString("s_contact") %></td>
                                        
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View Profile" ><a href="College-student-profile.jsp"><i class="fa fa-eye"></i></a></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><a href="College-student-update.jsp"><i class="fa fa-edit"></i></button>
                                             <form action="../delete" method="post" id='university_info'>
					                         <input type="hidden" name="uid"   value="<%=rs.getString("pk_id")%>">
                                             <button type="submit" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </form>
                                        </td>
                                    </tr>
										<%
											}
											        } catch (Exception e) {
												e.printStackTrace();
											}
										%>
										<tr>
                                        <td>A26</td>
                                        <td class="w60">
                                            <img class="avatar" src="../assets/images/xs/avatar2.jpg" alt="">
                                        </td>
                                        <td><span class="font-16">Gerald K Smith</span></td>
                                        <td>M.C.A.</td>
                                        <td>Gerald@gmail.com</td>
                                        <td>(154) 646-2486</td>
                                        
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View" ><i class="fa fa-eye" href="#College-student-profile.jsp"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A25</td>
                                        <td class="w60">
                                            <img class="avatar" src="../assets/images/xs/avatar3.jpg" alt="">
                                        </td>
                                        <td><span class="font-16">Ken Smith</span></td>
                                        <td>Mechanical</td>
                                        <td>ken@gmail.com</td>
                                        <td>(417) 646-8377</td>
                                        
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </td>
                                    </tr>
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
                                    <form class="card-body">
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">First Name <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="Enter First name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Last Name <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="Enter Last name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Roll No <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Email</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Registration Date <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input data-provide="datepicker" data-date-autoclose="true" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Class <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <select class="form-control input-height" name="department">
                                                    <option value="">Select...</option>
                                                    <option value="Category 1">Computer</option>
                                                    <option value="Category 2">Mechanical</option>
                                                    <option value="Category 3">Mathematics</option>
                                                    <option value="Category 3">Commerce</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Gender <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <select class="form-control input-height" name="gender">
                                                    <option value="">Select...</option>
                                                    <option value="Category 1">Male</option>
                                                    <option value="Category 2">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Mobile No. <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Parents Name <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Parents Mobile No. <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Date Of Birth  <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Address <span class="text-danger">*</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-md-3 col-form-label">Profile Picture</label>
                                            <div class="col-md-9">
                                                <input type="file" class="dropify">
                                                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
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
