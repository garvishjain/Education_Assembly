<!-- Import Package  -->
<%@ include file="inc/stdimport.jsp" %> 
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/header3.jsp" %>  

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
                            <li class="breadcrumb-item"><a href="#">College</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Students</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Student-all">Students list </a></li>
                        
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
                                       
                                        <th>College</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<%
	                                      try {
										String query = "select * from student_information";
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
                                        <td><%=rs.getString("college") %></td>
                                        
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
										
                                </tbody>
                            </table>
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
