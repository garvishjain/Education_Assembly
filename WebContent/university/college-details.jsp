<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %>  
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
                        <h1 class="page-title">About College</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">College</a></li>
                            <li class="breadcrumb-item active" aria-current="page">College List</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#College-professors">Professors</a></li>
                        <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#College-departments">Departments</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#College-courses">Courses</a></li>
                        <!-- <li class="nav-item"><a class="nav-link" id="Courses-tab-Boot" data-toggle="tab" href="#Courses-add-Boot">Add Bootstrap Style</a></li> -->
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane active" id="College-professors">
                     <div class="table-responsive">
                            <table class="table table-hover table-vcenter table_custom text-nowrap spacing5 border-style mb-0">
                                <tbody>
									<%
										try {
											/* String query = "select * from college_professor INNER JOIN course_name ON university_courses.course_name=course_name.pk_id where course_type='"+"Bachelor Degree"+"'"; */
											String query = "select * from college_professor ";
											//get Table data
											ResultSet rs = stmt.executeQuery(query);
											while (rs.next()) {
									%>
									<tr>
                                     	<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15"><%=rs.getString("fname")+" "+rs.getString("lname") %></div></td>
                                        <td><span><%=rs.getString("phone") %></span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><span class="tag tag-success"><%=rs.getString("position") %></span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>
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
									<tr>
										<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15">Gladys J Smith</div></td>
                                        <td><span>(417) 646-8377</span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><strong>04 Jan, 2019</strong></td>
                                        <td><span class="tag tag-success">Full-time</span></td>
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
                    <div class="tab-pane" id="College-departments">
                        <div class="row row-deck">
                           <div class="table-responsive">
                               <table class="table table-hover table-vcenter table_custom text-nowrap spacing5 border-style mb-0">
                                   <tbody>
						<%
							try {
								/* String query = "select * from university_courses INNER JOIN course_name ON university_courses.course_name=course_name.pk_id where course_type='"
										+ "Master Degree" + "'"; */
										String query = "select * from college_department ";
								//get Table data
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) {
						%>
									<tr>
                                     	<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15"><%=rs.getString("fname")+" "+rs.getString("lname") %></div></td>
                                        <td><span><%=rs.getString("phone") %></span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><span class="tag tag-success"><%=rs.getString("position") %></span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </td>
                                    </tr>
                                	 <%
	                                    }
	                                    }catch(Exception e)
	                                    {
	                                    	e.printStackTrace();
	                                    }
                                    %>
                                    <tr>
										<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15">Gladys J Smith</div></td>
                                        <td><span>(417) 646-8377</span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><strong>04 Jan, 2019</strong></td>
                                        <td><span class="tag tag-success">Full-time</span></td>
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
                 </div>
                    <div class="tab-pane" id="College-courses">
                    	<div class="row row-deck">
                           <div class="table-responsive">
                               <table class="table table-hover table-vcenter table_custom text-nowrap spacing5 border-style mb-0">
                                   <tbody>
						<%
							try {
								/* String query = "select * from university_courses INNER JOIN course_name ON university_courses.course_name=course_name.pk_id where course_type='"
										+ "Master Degree" + "'"; */
										String query = "select * from college_course";
								//get Table data
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) {
						%>
									<tr>
                                     	<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15"><%=rs.getString("fname")+" "+rs.getString("lname") %></div></td>
                                        <td><span><%=rs.getString("phone") %></span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><span class="tag tag-success"><%=rs.getString("position") %></span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </td>
                                    </tr>
                                	 <%
	                                    }
	                                    }catch(Exception e)
	                                    {
	                                    	e.printStackTrace();
	                                    }
                                    %>
                                    <tr>
										<td class="w60">
                                            <div class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="" data-original-title="Avatar Name">
                                                <span>GS</span>
                                            </div>
                                        </td>
                                        <td><div class="font-15">Gladys J Smith</div></td>
                                        <td><span>(417) 646-8377</span></td>
                                        <td><span class="text-muted">Computer</span></td>
                                        <td>BCA, MCA</td>
                                        <td><strong>04 Jan, 2019</strong></td>
                                        <td><span class="tag tag-success">Full-time</span></td>
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
            	</div>
            </div>
        </div>
        
         <%@ include file="inc/footer.jsp" %> 

		<%@ include file="inc/incjs.jsp" %> 
        

<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start Plugin Js -->
<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>
<script src="assets/js/page/dialogs.js"></script>
</body>
</html>