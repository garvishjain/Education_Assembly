<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 
<%@ include file="inc/header2.jsp" %>  

<!-- Connection -->
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
                        <h1 class="page-title">Courses</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">College</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Courses</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Courses-bachelor">Bachelor Courses</a></li>
                        <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#Courses-master">Master Courses</a></li>
                        <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#Courses-diploma">Diploma Courses</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Courses-add">Add</a></li>
                        <!-- <li class="nav-item"><a class="nav-link" id="Courses-tab-Boot" data-toggle="tab" href="#Courses-add-Boot">Add Bootstrap Style</a></li> -->
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                
                    <div class="tab-pane active" id="Courses-bachelor">
                        <div class="row row-deck">
                        <%
                                       try {
										String query = "SELECT * FROM `college_course` INNER JOIN college_registration ON college_course.fk_college_id=college_registration.pk_id INNER JOIN course_name ON college_course.Course_id=course_name.pk_id INNER JOIN course_details ON college_course.Course_brief=course_details.pk_id WHERE college_registration.college_name='"+name+"' AND college_course.course_category='Gradutaion course' ";
										//ge
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
                                   	%>
                                
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="card ribbon">
                                       
                                    <div class="ribbon-box orange"><i class="fa fa-star"></i></div>
                                    <a href="#"><img class="card-img-top" src="../assets/images/gallery/2.jpg" alt=""></a>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="#"><%=rs.getString("course") %></a></h5>
                                        <div class="text-muted"></div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right"><%=rs.getString("duration") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$<%=rs.getString("Course_fees") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Seats</td>
                                                    <td class="text-right"><%=rs.getString("Course_seat") %></td>
                                                </tr>
<!--                                                 <tr> -->
<!--                                                     <td><i class="fa fa-users text-warning"></i></td> -->
<!--                                                     <td class="tx-medium">Seats</td> -->
<%--                                                     <td class="text-right"><%=rs.getString("course category") %></td> --%>
<!--                                                 </tr> -->
                                            </tbody>
                                        </table>
                                    </div>
                                   
                                    <div class="card-footer">
                                        <div class="d-flex align-items-center mt-auto">
                                            <img class="avatar avatar-md mr-3" src="../assets/images/xs/avatar2.jpg" alt="avatar">
                                            <div>
                                                <a href="#">Pro. Rakesh singh Jadon</a>
                                                <small class="d-block text-muted">Head OF Dept.</small>
                                            </div>
                                            <div class="ml-auto text-muted">
                                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3"><i class="fe fe-heart mr-1"></i> 521</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                     <%
	                                    }
	                                    }catch(Exception e)
	                                    {
	                                    	e.printStackTrace();
	                                    }
                                    %>                
                        </div>
                    </div>
                   
                        
                                  
                    <div class="tab-pane" id="Courses-master">
                        <div class="row row-deck">
                        <%
                                       try {
										String query = "SELECT * FROM `college_course` INNER JOIN college_registration ON college_course.fk_college_id=college_registration.pk_id INNER JOIN course_name ON college_course.Course_id=course_name.pk_id INNER JOIN course_details ON college_course.Course_brief=course_details.pk_id WHERE college_registration.college_name='"+name+"' AND college_course.course_category='Master Course' ";
										//get Table data
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
                                   	%>
                                <div class="card">
                                    <%-- <a href="courses-details.jsp"><img class="card-img-top" src="F:\\myImage\\<%=rs.getString("image") %>" alt=""></a> --%>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="#"><%=rs.getString("course") %></a></h5>
                                        <div class="text-muted">Look, my liege! The Knights Who Say Ni demand a sacrifice!</div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right"><%=rs.getString("duration") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$<%=rs.getString("course_fees") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Seats</td>
                                                    <td class="text-right"><%=rs.getString("course_seat") %></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                 <%
	                                    }
	                                    }catch(Exception e)
	                                    {
	                                    	e.printStackTrace();
	                                    }
                                    %>
                        </div>
                    </div>
                    <div class="tab-pane" id="Courses-diploma">
                        <div class="row row-deck">
                        <%
                                       try {
										String query = "SELECT * FROM `college_course` INNER JOIN college_registration ON college_course.fk_college_id=college_registration.pk_id INNER JOIN course_name ON college_course.Course_id=course_name.pk_id INNER JOIN course_details ON college_course.Course_brief=course_details.pk_id WHERE college_registration.college_name='"+name+"' AND college_course.course_category='Diploma course'";
										//get Table data
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
                                   	%>
                                <div class="card">
                                    <%-- <a href="courses-details.jsp"><img class="card-img-top" src="F:\\myImage\\<%=rs.getString("image") %>" alt=""></a> --%>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="#"><%=rs.getString("course") %></a></h5>
                                        <div class="text-muted">Look, my liege! The Knights Who Say Ni demand a sacrifice!</div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right"><%=rs.getString("duration") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$<%=rs.getString("course_fees") %></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Seats</td>
                                                    <td class="text-right"><%=rs.getString("course_seat") %></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                 <%
	                                    }
	                                    }catch(Exception e)
	                                    {
	                                    	e.printStackTrace();
	                                    }
                                    %>
                        </div>
                    </div>
                    <div class="tab-pane" id="Courses-add">
                    <form action="../collegecourse" method="post" enctype="multipart/form-data">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Courses Basic Info</h3>
                                
                                <!-- <div class="card-options "> 
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                </div> -->
                            </div>
                            <div class="card-body">
                            
                            
                                <div class="row clearfix">
                                <div class="col-sm-6">
                                        <div class="form-group">
                                        	<label>College Name</label>
                                             <input type="text"  name="cname" class="form-control" value="<%=name%>" >
		                                       	
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        	<label>Degree type</label>
                                             <select  name="coursecat" class="form-control"  >
		                                       	<option>--Select Course</option>
		                                       	<option>Master Course</option>
		                                       	<option>Gradutaion course</option>
		                                       	<option>Diploma course</option>
		                                       </select>
                                        </div>
                                    </div>
                                <div class="col-sm-6">
                                        <div class="form-group">
                                        	<label>Course Name</label>
                                             <select  name="sname" class="form-control" >
		                                       <option>--Select Course</option>
		                                       <%
		                                           try {
		   											String query = "select * from course_name";
		   											//get Table data
		   											ResultSet rs = stmt.executeQuery(query);
		   											while (rs.next()) {
		                                       	%>
		                                       	<option ><%=rs.getString("course") %></option>
		                                       	<%
		                                       		}
		                                       		} catch (Exception e) {
		                                       			e.printStackTrace();
		                                       		}
		                                       	%>
		                                       </select>	
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        	<label>Course Type</label>
                                            <select  name="name" class="form-control" >
		                                       	<option>--Select Course</option>
		                                       	<option>Engineering</option>
		                                       	<option>Management</option>
		                                       	<option>Medical</option>
		                                       	<option>Design</option>	
		                                       	<option>Agriculture</option>
		                                     </select>	
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Fees</label>
                                            <input type="number" name="fees" class="form-control" placeholder="Course Fees">
                                        </div>
                                    </div>
                                     <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Seats</label>
                                            <input type="number" name="seat" class="form-control" placeholder="Course Student Seats">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                         <div class="form-group mt-2 mb-3">
                                         <label>Upload Course Picture</label>
                                             <input type="file" id="image" name="image" class="dropify">
                                             <small id="fileHelp" class="form-text text-muted">Upload Course picture.</small>
                                         </div>
                                     </div> 
			                    </div>
			                </div>
		                </div>
		                <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Courses About Info</h3>
                                <!-- <div class="card-options "> 
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                </div> -->
                            </div>
                       		<div class="col-sm-12">
                                    <div class="form-group">
                                    <label>About Course</label>
                                        <textarea rows="3" class="form-control no-resize" name="course" placeholder="Write About Course Brief"></textarea>
                                    </div>
                             </div> 
                             
                             <div class="col-sm-12">
                                    <div class="form-group">
                                    <lable>Eligible Criteria</lable>
                                        <textarea rows="3" class="form-control no-resize" name="eligible" placeholder="Write About Eligible Criteria"></textarea>
                                    </div>
                             </div> 
                             <div class="col-sm-12">
                                    <div class="form-group">
                                    	<lable>Scholarship Criteria</lable>
                                        <textarea rows="3" class="form-control no-resize" name="scholar" placeholder="Write About Scholarship Criteria"></textarea>
                                    </div>
                             </div> 
                              <div class="col-sm-6">
                                   <div class="form-group">
                                   <label>Semester</label>
                                       <select  name="sem" class="form-control" >
                                       <option>--Select Semester</option>
                                       <%
                                           try {
   											String query = "select * from semester";
   											//get Table data
   											ResultSet rs = stmt.executeQuery(query);
   											while (rs.next()) {
                                       	%>
                                       	<option><%=rs.getString("sem") %></option>
                                       	<%
                                       		}
                                       		} catch (Exception e) {
                                       			e.printStackTrace();
                                       		}
                                       	%>
                                       </select>	
                                   </div>
                               </div>
                               <div class="col-sm-12">
                                    <div class="form-group">
                                    	<lable>Minimum Percentage</lable>
                                        <textarea rows="3" class="form-control no-resize" name="perc" placeholder="Write About Minimum Percentage"></textarea>
                                    </div>
                             </div> 
                             <div class="col-sm-12">
                                    <div class="form-group">
                                    	<lable>Sub Required</lable>
                                        <textarea rows="3" class="form-control no-resize" name="sub" placeholder="Write About Sub Required"></textarea>
                                    </div>
                             </div> 
                             <div class="col-sm-12">
                                    <div class="form-group">
                                    	<lable>Placement Package</lable>
                                        <textarea rows="3" class="form-control no-resize" name="package" placeholder="Write About Placement Package"></textarea>
                                    </div>
                             </div> 
                              	<div class="col-sm-12">
                                    <div class="form-group">
                                    	<lable>Placement Opportunity</lable>
                                        <textarea rows="3" class="form-control no-resize" name="opportunity" placeholder="Write About Placement Opportunity"></textarea>
                                    </div>
                             </div> 
                                <div class="col-sm-12">
                                   <button type="submit" class="btn btn-primary">Submit</button>
                                   <button type="submit" class="btn btn-outline-secondary btn-default">Cancel</button>
                               </div>
                        </div>
                        </form>
		            </div>
		        </div>
         <%@ include file="inc/footer.jsp" %> 

		<%@ include file="inc/incjs.jsp" %> 
        
    </div>    
</div>

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

