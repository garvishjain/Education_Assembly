<!-- Import Package  -->
<%@ include file="inc/stdimport.jsp" %> 
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/header2.jsp" %>  

<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();
%>
<%
String stdname = session.getAttribute("stdname") != null ? (String) session.getAttribute("stdname") : "";


%>

<%
	String collegeCategory[]={"Registration pending","registration conform"};
	int i=0;
	
%>
<script type="text/javascript">
function update(){
    $.ajax({
    	
    	var sts = request.getParameter("stdname");
        if (sts === "")
        {
            $("#error").html("required");
            return false;
        }
        else
        {
            $("#error").html("");
            $.ajax({
                url: "update.jsp",
                data: {sts: sts},
                method: "POST",
                success: function(data)
                {
                    $("#status").html(data);
                    }
            });
        }
     });
}
</script>
        <!-- Start Page title and tab -->
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center ">
                    <div class="header-action">
                        <h1 class="page-title">Student Profile</h1>
                        <ol class="breadcrumb page-breadcrumb">
                        	<li class="breadcrumb-item"><a href="#">College</a></li>
                            <li class="breadcrumb-item"><a href="#">Student</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Student Profile</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div  id="Student-profile">
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                            <%
                            try {
								String query = "SELECT * FROM `student_information` INNER JOIN student_education on student_education.pk_id=student_information.fk_education where student_information.pk_id = '"+stdname+"'";
								//get Table data
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) {
                            %>
                                <div class="card">
                                    <div class="card-body w_user">
                                        <div class="user_avtar">
                                            <img class="rounded-circle" src="../assets/images/sm/avatar2.jpg" alt="">
                                        </div>
                                        <div class="wid-u-info">
                                            <h5><%=rs.getString("first_name") %></h5>
                                            <h5><%=rs.getString("last_name") %></h5>
                                            <p class="text-muted m-b-0" id="pk" name="pk"><%=rs.getString("pk_id") %></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">About Me</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
									<div class="card-body">
											<ul class="list-group">
											<li class="list-group-item">
                                                <strong>Father Name </strong>
                                                <div class="pull-right"><%=rs.getString("f_name") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Mother Name </strong>
                                                <div class="pull-right"><%=rs.getString("m_name") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Gender </strong>
                                                <div class="pull-right"><%=rs.getString("gender") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Email </strong>
                                                <div class="pull-right"><%=rs.getString("email") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Phone</strong>
                                                <div class="pull-right"><%=rs.getString("s_contact") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>10th Percentage </strong>
                                                <div class="pull-right"><%=rs.getString("high") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>12th Percentage </strong>
                                                <div class="pull-right"><%=rs.getString("higher") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Department</strong>
                                                <div class="pull-right"><%=rs.getString("course") %></div>
                                            </li>
                                          
                                            <li class="list-group-item">
                                                <strong>Status</strong>
                                                <div class="pull-right" id="status" name="status"><%=rs.getString("status") %></div>
                                            </li>
                                            
                                            <li class="button">
                                                
                                               <form action="../update" method="post" id='university_info'>
					                         <input type="hidden" name="uid"   value="<%=rs.getString("pk_id")%>">
										     <button type="submit"class="button_outline">Conform your status</button>
								       </form>     </li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                <%
                                	}
                                	} catch (Exception e) {
                                		e.printStackTrace();
                                	}
                                %>
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
