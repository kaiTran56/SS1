<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
* {
	padding: 0px;
	margin: 0px;
	font-family: sans-serif;
	box-sizing: border-box;
	max-height: 100%;
}

header {
	background-color: #999999;
	min-height: 70px;
	padding: 15px;
}

main {
	background-color: #BBBBBB;
	min-height: 300px;
	padding: 80px 15px;
	background-image: linear-gradient(#b5b5b5, #e8e8e8);
}

footer {
	background-color: #999999;
	min-height: 70px;
	padding: 15px;
}

.login {
	width: 100%;
	max-width: 1200px;
	margin-left: auto;
	margin-right: auto;
}

.form-of-login {
	width: 100%;
	max-width: 400px;
	margin: 20px auto;
	background-color: #ffffff;
	padding: 15px;
	border: 2px #cccccc;
	border-radius: 5%;
}

h1 {
	color: black;
	font-size: 30px;
	margin: 5% 0% 10% 0%;
	text-align: center;
}

.username {
	margin-bottom: 25px;
}

.password {
	margin-bottom: 25px;
}

.username input {
	padding: 8px 2px;
	width: 100%;
	border: 1px solid #cccccc;
	outline: none;
}

.password input {
	padding: 8px 2px;
	width: 100%;
	border: 1px solid #cccccc;
	outline: none;
}

.submitbox {
	text-align: right;
	margin-top: 30px;
}

.submitbox button {
	padding: 7px 15px;
	border-radius: 10%;
	background-color: #363636;
	color: white;
	border: none;
	outline: none;
}

p {
	padding-bottom: 5px;
	font-size: 15px;
}
</style>
<meta charset="UTF-8">
<meta name="viewport"
	contenteditable="width=device-width, initial-scale-1.0">
<title>Login</title>
</head>
<body>
	<header>
		<div class="login"></div>
	</header>
	<main>
		<div class="login">
			<div class="form-of-login">
				<form action="${pageContext.request.contextPath}/admin/login"
					method="post">
					<h1>Log in</h1>
					<div class="username">
						<p>
							<b>Username</b>
						</p>
						<input type="text" id="username"
							placeholder="Username or Email or Phone number" name="username" />
					</div>
					<div class="password">
						<p>
							<b>Password</b>
						</p>
						<input type="password" id="password" placeholder="Enter password"
							name="password" />
					</div>
					<div>
						<span style="color: Red; front-weight: bold">${requestScope.error}</span>
					</div>
					<div class="submitbox">
						<button type="submit">Log in</button>
					</div>
				</form>
			</div>
		</div>
	</main>
	<footer>
		<div class="login"></div>
	</footer>
</body>
</html>