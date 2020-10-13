
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	/* font-family: Georgia, 'Times New Roman', Times, serif; */
	font-size: 18px;
	background-image: url(bg.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.col-xs-6 hr {
	margin-top: -3%;
	border: 0.3px solid #e9eaec;
}

.col-xs-6 p {
	font-style: oblique;
	font-size: 16px;
	color: #84817a;
	/* font-family: Georgia, 'Times New Roman', Times, serif; */
}

.col-xs-6 h4 {
	color: #44840b;
	font-weight: bold;
}

.col-sm-10 {
	margin-left: 3%;
	margin-top: 5%;
	margin-bottom: 3%;
}

.col-sm-10 h1 {
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
	font-size: 50px;
	color: #71ab21;
}

.col-sm-9 a {
	color: #71ab21;
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
	font-size: 25px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #c0e071;
}

button {
	border-radius: 50%;
	font-size: 10px;
	color: #71ab21;
	background-color: #c0d4a2;
	padding-top: 2%;
}
</style>
</head>
















<body>

	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>Profile User</h1>
			</div>

			<div class="row">
				<div class="col-sm-3">
					<!--left col-->


					<div class="text-center">
						<img src="user/profile/avata.jpg"
							class="avatar img-circle img-thumbnail" alt="avatar">

					</div>
					</hr>
					<br>




				</div>
				<!--/col-3-->
				<div class="col-sm-9">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
						<li><a data-toggle="tab" href="#messages">Edit</a></li>
						<li><a data-toggle="tab" href="#settings"> History </a></li>
					</ul>


					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<hr>

							<div class="col-xs-6">
								<h4>User Name</h4>
								<p id="user-name">${requestScope.userDetail.name}</p>
								<hr>
							</div>
							<div class="col-xs-6">
								<h4>Phone</h4>
								<p id="phone">${requestScope.userDetail.phone}</p>
								<hr>
							</div>

							<div class="col-xs-6">
								<h4>Email</h4>
								<p id="email">${requestScope.userDetail.email}</p>
								<hr>
							</div>
							<div class="col-xs-6">
								<h4>Location</h4>
								<p id="location">${requestScope.userDetail.address}</p>
								<hr>
							</div>
							<div class="col-xs-6">
								<h4>Date of Birth</h4>
								<p id="password">${requestScope.userDetail.dateOfBirth}</p>
								<hr>

							</div>
							<div class="col-xs-6">
								<h4>Created Day</h4>
								<p id="">${requestScope.userDetail.created}</p>
								<hr>

							</div>
						</div>
						<!--/tab-pane-->
						<div class="tab-pane" id="messages">

							<hr>
							<form class="form"
								action="${pageContext.request.contextPath}/user/edit"
								method="get" id="registrationForm">

								<div class="form-group">

									<div class="col-xs-6">
										<label for="last_name"><h4>User Name</h4></label> <input
											type="text" class="form-control" name="nameTemp"
											id="last_name" value="${requestScope.userDetail.name}">
									</div>
								</div>

								<div class="form-group">

									<div class="col-xs-6">
										<label for="phone"><h4>Phone</h4></label> <input type="text"
											class="form-control" name="phoneTemp" id="phone"
											value="${requestScope.userDetail.phone}">
									</div>
								</div>


								<div class="col-xs-6">
									<h4>Email</h4>
									<p id="email">${requestScope.userDetail.email}</p>
									<hr>
								</div>

								<div class="form-group">

									<div class="col-xs-6">
										<label for="email"><h4>Location</h4></label> <input
											type="text" class="form-control" name ="addressTemp"id="location"
											value="${requestScope.userDetail.address}">
									</div>
								</div>

								<div class="form-group">

									<div class="col-xs-6">
										<label for="password2"><h4>Date of Birth</h4></label> <input
											type="text" class="form-control" name="dobTemp"
											value="${requestScope.userDetail.dateOfBirth}">
									</div>
								</div>

								<div class="col-xs-6">
									<h4>Created Day</h4>
									<p id="">${requestScope.userDetail.created}</p>
									<hr>

								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<br>
										<button class="btn btn-lg btn-success" type="submit">
											<i class="glyphicon glyphicon-ok-sign"></i> Save
										</button>
									</div>
								</div>
							</form>

						</div>
						<!--/tab-pane-->
						<div class="tab-pane" id="settings">



							<div class="form-group">
								<table>
									<tr>
										<th>Name Book</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Ordered Date</th>
									</tr>
									<tr>
										<td>Detective Conan
											<button class="icon" type="button">▼</button>
										</td>
										<td>$3</td>
										<td>2</td>
										<td>10/10/2020</td>
									</tr>
									<tr>
										<td>Sherlock Holmes
											<button class="icon" type="button">▼</button>
										</td>
										</td>
										<td>$13</td>
										<td>1</td>
										<td>11/10/2020</td>
									</tr>

								</table>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success pull-right" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Back
									</button>
									<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
								</div>
							</div>

							</form>
						</div>

					</div>
					<!--/tab-pane-->
				</div>
				<!--/tab-content-->

			</div>
			<!--/col-9-->
		</div>
		<!--/row-->
</body>
</html>