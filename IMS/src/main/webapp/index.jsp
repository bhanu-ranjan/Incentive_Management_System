<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
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
			width: 800px;
			padding: 16px;
			background-color: white;
			margin: 0 auto;
			margin-top: 100px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		}

		.container h1 {
			text-align: center;
			margin-bottom: 20px;
		}
		
	</style>
	<title>Incentive Management System</title>
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
		<h1>Welcome to the Incentive Management System</h1>
		<p style="text-align:center;">This system allows you to manage incentives for your employees or
			customers.</p>
		<p style="text-align:center;">To get started, please <a href="login.jsp">login</a> or <a href="register.jsp">register</a>.</p>
	</div>
</body>

</html>
