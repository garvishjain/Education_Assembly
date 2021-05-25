
<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%@ include file="inc/header3.jsp"%>
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
					data-toggle="tab" href="#Dep-all">Departments</a></li>
				
				
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
									String query = "select * from college_department INNER JOIN course_name ON college_department.fk_department_id=course_name.pk_id INNER JOIN college_registration ON college_department.fk_college_id=college_registration.pk_id  ";	//get Table data
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
			
			
			
		</div>
	</div>
</div>
<%@ include file="inc/footer.jsp"%>
<%@ include file="inc/incjs.jsp"%>
