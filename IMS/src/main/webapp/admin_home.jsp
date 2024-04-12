<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>
<style>
body {
background-image: url('https://blog.getcompass.ai/content/images/size/w1384/2023/03/incentive-based-pay-system.webp');
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f2f2f2;
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
	max-width: 600px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

input[type="text"], textarea {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

.btn-secondary {
	background-color: #6c757d;
}

.btn-secondary:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="register.jsp">Register</a></li>
			<li><a href="admin.jsp">Admin</a></li>
			<li><a href="index.jsp" style="float: right">Incentive
					Management System</a></li>
		</ul>
	</nav>
	<h1 style="text-align:center">Admin Panel</h1>
	<div class="container">
		<h2>Add Holiday Details</h2>
		<form action="add" method="post">
			<label for="holiday-name">Holiday Name:</label> <input type="text"
				id="holiday-name" name="holiday-name" required /> <br /> <label
				for="holiday-duration">Holiday Duration (in days):</label> <input
				type="text" id="holiday-duration" name="holiday-duration" required />
			<br /> <label for="holiday-destination">Holiday Destination:</label>
			<input type="text" id="holiday-destination"
				name="holiday-destination" required /> <br /> <label
				for="holiday-location">Location:</label> <input type="text"
				id="holiday-location" name="holiday-location" required /> <br /> <label
				for="holiday-amenities">Holiday Amenities:</label>
			<textarea id="holiday-amenities" name="holiday-amenities" rows="2"
				required></textarea>
			<br />
			<button type="submit">Add Holiday</button>
		</form>
		<br>
		<form action="show" method="post">
			<button type="submit" class="btn-secondary">Show Holiday</button>
		</form>
	</div>
</body>
</html>


