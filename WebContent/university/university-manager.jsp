 <!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %>  
<%@ include file="inc/header.jsp" %>  
<%@page import="in.common.GetName"%>
<%@page import="in.common.hashed"%>

<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();

%>
<%
		String status = request.getParameter("status");
		if(status != null)
						{
							hashed gethash = new hashed();
							if(status.equals(gethash.getHash("trueCBC")))
							{
								String sid = request.getParameter("sid");
								String cname = request.getParameter("cname");
								if(sid != null)
								{
									GetName universityname= new GetName();
									universityname.getNameData(cname, sid);
									session.setAttribute("nameUser", universityname.getName());
									session.setAttribute("EmailUser", universityname.getEmail());
								}
							}
						 }
%>

    <!-- Start Main top header -->
    
    <!-- Start Rightbar setting panel -->
   
    <!-- Start Theme panel do not add in project -->
  
    <!-- Start Quick menu with more functio -->
    
    <!-- Start Main leftbar navigation -->
    
    <!-- Start project content area -->
    
        <!-- Start Page title and tab -->
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="header-action">
                        <h1 class="page-title">Dashboard</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Education Assembly</a></li>
                            <li class="breadcrumb-item"><a href="#">University</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="row clearfix row-deck">
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="professors.jsp" class="my_sort_cut text-muted">
                                    <i class="fa fa-black-tie"></i>
                                    <span>Professors</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="app-contact.html" class="my_sort_cut text-muted">
                                    <i class="fa fa-address-book"></i>
                                    <span>Contact</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="staff.html" class="my_sort_cut text-muted">
                                    <i class="fa fa-user-circle-o"></i>
                                    <span>Student</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="app-filemanager.html" class="my_sort_cut text-muted">
                                    <i class="fa fa-folder"></i>
                                    <span>FileManager</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="library.html" class="my_sort_cut text-muted">
                                    <i class="fa fa-book"></i>
                                    <span>Department</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <div class="card">
                            <div class="card-body">
                                <a href="affilated-college.jsp" class="my_sort_cut text-muted">
                                    <i class="fa fa-bullhorn"></i>
                                    <span>Affilated College</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</div>

<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start all plugin js -->
<script src="../assets/bundles/counterup.bundle.js"></script>
<script src="../assets/bundles/apexcharts.bundle.js"></script>
<script src="../assets/bundles/summernote.bundle.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>
<script src="assets/js/page/index.js"></script>
<script src="assets/js/page/summernote.js"></script>
</body>
</html>
