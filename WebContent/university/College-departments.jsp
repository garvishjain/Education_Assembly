
<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%@ include file="inc/header2.jsp"%>
<!-- <script>

$(document).ready(function() {
        $("#delete").on("change", function() {
            var del = $("#delete").val();
            if (del === "")
            {
                $("#error").html("required");
                return false;
            }
            else
            {
                $("#error").html("");
                $.ajax({
                    url: "delete.jsp",
                    data: {del: del},
                    method: "POST",
                    success: function(data)
                    {
                        $("#delete").html(data);
                        }
                });
            }
        });
    });
</script> -->
<%
	GetConnection getConObj = new GetConnection();
	Connection con = getConObj.getCon();
	Statement stmt = con.createStatement();
%>
<!-- Start Page title and tab -->
<div class="section-body">
	<div class="container-fluid">
		<div class="d-flex justify-content-between align-items-center ">
			<div class="header-action">
				<h1 class="page-title">Departments</h1>
				<ol class="breadcrumb page-breadcrumb">
					<li class="breadcrumb-item"><a href="#">College</a></li>
					<li class="breadcrumb-item active" aria-current="page">Departments</li>
				</ol>
			</div>
			<ul class="nav nav-tabs page-header-tab">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#Dep-all">All</a></li>
				
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#Dep-add">Add</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="section-body mt-4">
	<div class="container-fluid">
		<div class="tab-content">
			<div class="tab-pane active" id="Dep-all">
				<div class="table-responsive">
					<div class="table-responsive card">
						<table
							class="table table-hover table-striped table-vcenter text-nowrap mb-0">
							<thead>
								<tr>
									<th>#</th>
									<th>Dept. Name</th>
									<th>Head OF Dept.</th>
									<th>Phone</th>
									<th>Email</th>
									<th>Std. Capacity</th>
									<th>Edit</th>
								</tr>
							</thead>
							<%
								try {
									String query = "select * from college_department INNER JOIN course_name ON college_department.fk_department_id=course_name.pk_id INNER JOIN college_registration ON college_department.fk_college_id=college_registration.pk_id where college_name='"+name+"'";	//get Table data
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getInt(1)%></td>
								<td><%=rs.getString("course")%></td>
								<td><%=rs.getString("hod_name")%></td>
								<td><%=rs.getString("phone_no")%></td>
								<td><%=rs.getString("email")%></td>
								<td><%=rs.getString("std_capacity")%></td>
								<td>
									
									
									<form action="../updatedepartment" method="post" id='university_info'>
					                         <input type="hidden" name="uid"   value="<%=rs.getString(1)%>">
										     <button type="submit" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
								  </form>
									<form action="../deletedepartment" method="post" id='university_info'>
					                         <input type="hidden" name="uid"   value="<%=rs.getString(1)%>">
                                             <button type="submit" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                        </form>

									</button>
								</td>
							</tr>
							<%
								}
								} catch (Exception e) {
									e.printStackTrace();
								}
							%>
							
						</table>
					</div>
				</div>
			</div>
			
			
			<div class="tab-pane" id="Dep-add">
				<div class="col-lg-12 col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Department Basic Info</h3>
							<div class="card-options ">
								<a href="#" class="card-options-collapse"
									data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
								<a href="#" class="card-options-remove"
									data-toggle="card-remove"><i class="fe fe-x"></i></a>
							</div>
						</div>
						<form action="../collegedepartment" method="post">
							<div class="card-body">
								<div class="row clearfix">
									<div class="col-sm-6 col-sm-12">
										<div class="form-group">
											<label>Department Name</label> <select name="department"
												class="form-control">
												<option>---Please Select Department---</option>
												<%
													try {
														String query = "select * from course_name";
														//get Table data
														ResultSet rs = stmt.executeQuery(query);
														while (rs.next()) {
												%>
												<option value="<%=rs.getString("pk_id")%>"><%=rs.getString("course")%></option>
												<%
													}
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
											</select>
										</div>
									</div>
									<%
										if (name.equals("")) {
									%>
									<div class="col-sm-6 col-sm-12">
										<div class="form-group">
											<label>College Name</label> <select name="collegename"
												class="form-control">
												<option>---Please Select College---</option>
												<%
													try {
															String query = "select * from college_registration";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
												%>
												<option><%=rs.getString("college_name")%></option>
												<%
													}
														} catch (Exception e) {
															e.printStackTrace();
														}
												%>
											</select>
										</div>
									</div>


									<%
										} else {
									%>
									<div class="col-sm-6 col-sm-12">
										<div class="form-group">
											<label>College Name</label> <input type="text"
												class="form-control" name="collname" value="<%=name%>"
												placeholder="<%=name%>">


										</div>
									</div>


									<%
										}
									%>






									<div class="col-sm-6 col-sm-12">
										<div class="form-group">
											<label>Head Of Department</label> <input type="text"
												class="form-control" name="headname"
												placeholder="Head of Department">
										</div>
									</div>
									<!--  <div class="col-sm-6">
	                                            <div class="form-group">
	                                             <label>university name</label>
	                                                <input type="text" class="form-control" name="uname" placeholder="university name ">
	                                            </div>
	                                        </div> -->
									<div class="col-sm-6">
										<div class="form-group">
											<label>phone number</label> <input type="text"
												class="form-control" name="phonenum"
												placeholder="Phone number">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>email</label> <input type="email" class="form-control"
												name="email" placeholder="Email">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>Maximum seat </label> <input type="text"
												class="form-control" name="stdCapacity"
												placeholder="Standard Capacity ">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>Seat available</label> <input type="text"
												class="form-control" name="seat"
												placeholder="Standard Capacity ">
										</div>
									</div>
									<!-- <div class="col-sm-6">
	                                            <div class="form-group">
	                                                <input data-provide="datepicker" data-date-autoclose="true" class="form-control" placeholder="Department Start Date">
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-12">
	                                            <div class="form-group">
	                                                <textarea rows="4" class="form-control no-resize" placeholder="Brief"></textarea>
	                                            </div>
	                                        </div> -->
									<div class="col-sm-12">
										<button type="submit" class="btn btn-primary">Submit</button>
										<button type="submit"
											class="btn btn-outline-secondary btn-default">Cancel</button>
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
<%@ include file="inc/footer.jsp"%>
<%@ include file="inc/incjs.jsp"%>
