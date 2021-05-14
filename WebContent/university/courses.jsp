<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 
<%@ include file="inc/header.jsp" %>  

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
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Courses</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Courses-bachelor">Bachelor Courses</a></li>
                        <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#Courses-master">Master Courses</a></li>
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
										String query = "select * from university_courses INNER JOIN course_name ON university_courses.course_name=course_name.pk_id where course_type='"+"Bachelor Degree"+"'";
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
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="card ribbon">
                                    <div class="ribbon-box orange"><i class="fa fa-star"></i></div>
                                    <a href="#"><img class="card-img-top" src="../assets/images/gallery/2.jpg" alt=""></a>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="courses-details.html">Account Management Course</a></h5>
                                        <div class="text-muted">Look, my liege! The Knights Who Say Ni demand a sacrifice!</div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right">1 Year</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$1,674</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Students</td>
                                                    <td class="text-right">50+</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex align-items-center mt-auto">
                                            <img class="avatar avatar-md mr-3" src="../assets/images/xs/avatar2.jpg" alt="avatar">
                                            <div>
                                                <a href="#">Pro. Alan</a>
                                                <small class="d-block text-muted">Head OF Dept.</small>
                                            </div>
                                            <div class="ml-auto text-muted">
                                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3"><i class="fe fe-heart mr-1"></i> 521</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="card">
                                    <a href="#"><img class="card-img-top" src="../assets/images/gallery/3.jpg" alt=""></a>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="courses-details.html">Angular Programmer Course</a></h5>
                                        <div class="text-muted">Look, my liege! The Knights Who Say Ni demand a sacrifice!</div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right">6 Months</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$1,674</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Students</td>
                                                    <td class="text-right">125+</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex align-items-center mt-auto">
                                            <img class="avatar avatar-md mr-3" src="../assets/images/xs/avatar3.jpg" alt="avatar">
                                            <div>
                                                <a href="#">Pro. Jane</a>
                                                <small class="d-block text-muted">Head OF Dept.</small>
                                            </div>
                                            <div class="ml-auto text-muted">
                                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3"><i class="fe fe-heart mr-1"></i> 521</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="card">
                                    <a href="#"><img class="card-img-top" src="../assets/images/gallery/5.jpg" alt=""></a>
                                    <div class="card-body d-flex flex-column">
                                        <h5><a href="courses-details.html">Magento Programmer Course</a></h5>
                                        <div class="text-muted">Look, my liege! The Knights Who Say Ni demand a sacrifice!</div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-vcenter mb-0">
                                            <tbody>
                                                <tr>
                                                    <td class="w20"><i class="fa fa-calendar text-blue"></i></td>
                                                    <td class="tx-medium">Duration</td>
                                                    <td class="text-right">1 Year</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-cc-visa text-danger"></i></td>
                                                    <td class="tx-medium">Fees</td>
                                                    <td class="text-right">$1,674</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-users text-warning"></i></td>
                                                    <td class="tx-medium">Students</td>
                                                    <td class="text-right">50+</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex align-items-center mt-auto">
                                            <img class="avatar avatar-md mr-3" src="../assets/images/xs/avatar5.jpg" alt="avatar">
                                            <div>
                                                <a href="#">Pro. Corrine</a>
                                                <small class="d-block text-muted">Head OF Dept.</small>
                                            </div>
                                            <div class="ml-auto text-muted">
                                                <a href="javascript:void(0)" class="icon d-none d-md-inline-block ml-3"><i class="fe fe-heart mr-1"></i> 521</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    <div class="tab-pane" id="Courses-master">
                        <div class="row row-deck">
                        <%
                                       try {
										String query = "select * from university_courses INNER JOIN course_name ON university_courses.course_name=course_name.pk_id where course_type='"+"Master Degree"+"'";
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
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Courses Basic Info</h3>
                                <div class="card-options ">
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                </div>
                            </div>
                            <form action="../courses" method="post" enctype="multipart/form-data">
                            <div class="card-body">
                                <div class="row clearfix">
                                <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Course Id</label>
                                            <input type="number" name="id" class="form-control" placeholder="Course Id">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Course Type</label>
                                            <select type="text" name="type" class="form-control" >
                                            <option>--Select Course Type</option>
                                            <option>Bachelor Degree</option>
                                            <option>Master Degree</option>
                                            <option>Diploma Degree</option>
                                            </select>	
                                        </div>
                                    </div>
                                   <%--  <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Course Name</label>
                                            <select type="text" name="name" class="form-control" >
                                            <option>--Select Course Name</option>
                                            <%
                                                try {
        											String query = "select * from course_name";
        											//get Table data
        											ResultSet rs = stmt.executeQuery(query);
        											while (rs.next()) {
                                            	%>
                                            	<option><%=rs.getString("course") %></option>
                                            	<%
                                            		}
                                            		} catch (Exception e) {
                                            			e.printStackTrace();
                                            		}
                                            	%>
                                            </select>	
                                        </div>
                                    </div> --%>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Courses Duration</label>
                                            <select type="text" name="duration" class="form-control" placeholder="Course Duration Months">
                                            	<option>---Course Duration Months---</option>
                                            	<%
                                                try {
        											String query = "select * from duration";
        											//get Table data
        											ResultSet rs = stmt.executeQuery(query);
        											while (rs.next()) {
                                            	%>
                                            	<option><%=rs.getString("duration") %></option>
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
                                        <label>Fees</label>
                                            <input type="number" name="fees" class="form-control" placeholder="Course Fees">
                                        </div>
                                    </div>
                                     <div class="col-sm-6">
                                        <div class="form-group">
                                        <label>Seats</label>
                                            <input type="number" name="seats" class="form-control" placeholder="Course Student Seats">
                                        </div>
                                    </div>
                                     <!-- <div class="col-sm-12">
                                         <div class="form-group mt-2 mb-3">
                                         <label>Upload Course Picture</label>
                                             <input type="file" id="image" name="image" class="dropify">
                                             <small id="fileHelp" class="form-text text-muted">Upload Course picture.</small>
                                         </div>
                                     </div> -->
                                     <div class="col-sm-12">
                                         <div class="form-group">
                                             <textarea rows="4" class="form-control no-resize" name="brief" placeholder="Write Course Brief"></textarea>
                                         </div>
	                                 </div> 
                                     <div class="col-sm-12">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="submit" class="btn btn-outline-secondary btn-default">Cancel</button>
                                    </div>
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

