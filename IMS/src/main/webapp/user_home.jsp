<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Incentive Calculator</title>
    <style>
        body {
        background-image: url('https://blog.getcompass.ai/content/images/size/w1384/2023/03/incentive-based-pay-system.webp');
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #result {
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
            background-color: #f0f0f0;
        }
    </style>
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
        <h1>Sales Incentive Calculator</h1>
        <label for="sales">Enter your sales number:</label>
        <input type="number" id="sales" placeholder="Enter sales amount..." required>
        <button onclick="calculateIncentive()">Calculate</button>
        <div id="result"></div>
    </div>

    <script>
        function calculateIncentive() {
            var sales = parseFloat(document.getElementById('sales').value);
            var resultElement = document.getElementById('result');
            var bonus = "";
            var holidayPackage = "";

            // Calculate bonus based on sales amount
            if (sales>0 && sales < 20000) {
        incentive = 0.015 * sales;
        bonus = "None";
        holidayPackage = "Not eligible";
    } else if (sales>20000 && sales < 30000) {
        incentive = 0.03 * sales;
        bonus= "None";
        holidayPackage="Not eligible";
    } else if(sales >30000 && sales<50000){
        incentive=0.035 * sales;
        bonus="$1000";
        holidayPackage="Not eligible";
    } else if(sales<=0){
    	 incentive=0;
         bonus="Invalid or too less sale figure";
         holidayPackage="Invalid or too less sale figure";
    }else{
        incentive=0.05* sales;
        bonus="None";
        holidayPackage="Yes! you are eligible for a holiday package";
    }

            // Display result
            resultElement.innerHTML = "<p>Your Incentive : "+incentive+"</p><p>Your bonus : " + bonus + "</p><p> Your Holiday Package Eligibility : " + holidayPackage + "</p>";
        }
    </script>
</body>
</html>

    