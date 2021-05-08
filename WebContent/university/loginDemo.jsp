<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="favicon.ico" type="image/x-icon" />

<title>:: Epic :: Login</title>

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet"
	href="../assets/plugins/bootstrap/css/bootstrap.min.css" />

<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function validate() {
		var uname = document.getElementById("uname").value;
		var pass = document.getElementById("pass").value;

		if (uname == "") {
			document.getElementById("unameerr").innerHTML = "Please Enter UserName";
			return false;
		} else {
			document.getElementById("unameerr").innerHTML = "";
		}

		if (pass == "") {
			document.getElementById("passerr").innerHTML = "Please Enter Password";
			return false;
		} else {
			document.getElementById("passerr").innerHTML = "";
		}

		return true;
	}
</script>
</head>
<body class="font-muli theme-cyan gradient">
	<div class="auth option2">
		<div class="auth_left">
			<div class="card">
				<form action="../LoginDemo" method="post" onsubmit="return validate()">
					<div class="card-body">
						<div class="text-center">
							<h4 style="color: green;">
								<%
									String status = (String) request.getAttribute("status");
									if (status != null) {
										out.println(status);
									}
								%>
							</h4>
							<a class="header-brand" href="#"><i
								class="fa fa-graduation-cap brand-logo">Education Assembly</i></a>
							<div class="card-title mt-3">Login to your account</div>
						</div>
						<div class="container-fluid">
							<ul class="nav nav-tabs page-header-tab">
								<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#admin">Admin</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"  href="#university">University</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"  href="#college">College</a></li>
							</ul>
						</div>
						<div class="container-fluid">
						   	<div class="tab-content">
								<div class="tab-pane active" id="admin">
									<div class="form-group">
										<input type="text" id="aname" name="aname" class="form-control"
											aria-describedby="emailHelp"
											placeholder="Enter Admin Username"> <span style="color: red"
											id="unameerr"></span>
									</div>
									<div class="form-group">
										<input type="password"  name="pass" class="form-control"
											id="exampleInputPassword1" placeholder="Enter Password">
										<span style="color: red" id="passerr"></span> <label
											class="form-label"><a href="forgot-password.jsp"
											class="float-right small">forgot password</a></label>
									</div>
									<div class="form-group">
										<label class="custom-control custom-checkbox"> <input
											type="checkbox" class="custom-control-input" id="myCheck" /> <span
											class="custom-control-label">Remember me</span>
										</label>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary btn-block">Sign
											in</button>
										<div class="text-muted mt-4">
											Don't have account yet? <a href="register.jsp">Sign up</a>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="university">
									<div class="form-group">
										<input type="text" id="uname" name="uname" class="form-control"
											 aria-describedby="emailHelp"
											placeholder="Enter University Username"> <span style="color: red"
											id="unameerr"></span>
									</div>
									<div class="form-group">
										<input type="password"  name="pass" class="form-control"
											id="exampleInputPassword1" placeholder="Enter Password">
										<span style="color: red" id="passerr"></span> <label
											class="form-label"><a href="forgot-password.jsp"
											class="float-right small">forgot password</a></label>
									</div>
									<div class="form-group">
										<label class="custom-control custom-checkbox"> <input
											type="checkbox" class="custom-control-input" id="myCheck" /> <span
											class="custom-control-label">Remember me</span>
										</label>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary btn-block">Sign
											in</button>
										<div class="text-muted mt-4">
											Don't have account yet? <a href="register.jsp">Sign up</a>
										</div>
									</div>
								</div>
								<div class="tab-pane " id="college">
									<div class="form-group">
										<input type="text" id="cname" name="cname" class="form-control"
											 aria-describedby="emailHelp"
											placeholder="Enter College Username"> <span style="color: red"
											id="unameerr"></span>
									</div>
									<div class="form-group">
										<input type="password" name="pass" class="form-control"
											id="exampleInputPassword1" placeholder="Enter Password">
										<span style="color: red" id="passerr"></span> <label
											class="form-label"><a href="forgot-password.jsp"
											class="float-right small">forgot password</a></label>
									</div>
									<div class="form-group">
										<label class="custom-control custom-checkbox"> <input
											type="checkbox" class="custom-control-input" id="myCheck" /> <span
											class="custom-control-label">Remember me</span>
										</label>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary btn-block">Sign
											in</button>
										<div class="text-muted mt-4">
											Don't have account yet? <a href="register.jsp">Sign up</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<!-- Start Main project js, jQuery, Bootstrap -->
	<script src="../assets/bundles/lib.vendor.bundle.js"></script>

	<!-- Start project main js  and page js -->
	<script src="../assets/js/core.js"></script>
</body>
</html>