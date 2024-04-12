<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<style>
		body {
		background-image: url('https://blog.getcompass.ai/content/images/size/w1384/2023/03/incentive-based-pay-system.webp');
			background-color: #f0f0f0;
			font-family: Arial, sans-serif;
		}

		nav {
			background-color: #987c7c;
			padding: 10px;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}

		nav ul li {
			display: inline;
			margin-right: 10px;
		}

		nav ul li a {
			color: white;
			text-decoration: none;
		}

		.container {
			width: 300px;
			padding: 75px;
			background-color: white;
			margin: 0 auto;
			margin-top: 100px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		.container h2 {
			text-align: center;
			margin-bottom: 20px;
		}

		.container label {
			display: block;
			margin-bottom: 5px;
		}

		.container input[type="text"],
		.container input[type="password"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 10px;
		}

		.container input[type="submit"] {
			width: 100%;
			padding: 10px;
			background-color: #4CAF50;
			color: white;
			border: none;
		}

		.container input[type="submit"]:hover {
			background-color: #45a049;
		}

		.container a {
			display: block;
			text-align: center;
			margin-top: 10px;
			color: #4CAF50;
		}
	</style>
	<title>Admin Login Page</title>
</head>

<body>
	<nav>
		<ul>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="register.jsp">Register</a></li>
			<li><a href="admin.jsp">Admin</a></li>
			<li><a href="index.jsp" style="float: right">Incentive Management System</a></li>
		</ul>
	</nav>
	<div class="container">
		<h2>Admin Login</h2>
		<form id="login" action="admn" method="post">
			<label for="email">Email:</label><br>
			<input type="text" id="email" name="email" required><br>
			<label for="password">Password:</label><br>
			<input type="password" id="password" name="password" required><br>
			<input type="submit" value="Submit">
		</form>


	</div>
</body>

</html>