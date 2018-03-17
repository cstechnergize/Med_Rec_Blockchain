<!DOCTYPE html>
<html lang="en">
<head>
	<title>Patient Details!</title>
	<link rel="stylesheet" href="style.css">
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet">
</head>
<body>
	<div class="main-banner">
	<div class="heading">
		<h1>Patient Details!</h1>
	</div>
		<div class="container">
			<div class="heading">
				<h2>These are the registered blood donors</h2>
			</div>
			<?php
			$pid=$_POST["Patient_id"];
			$pname=$_POST["Patient_name"];
			$bgp=$_POST["blood_group"];
			echo "<table bgcolor='#757575' border='1'>";
				echo "<tr><td>Patient ID</td><td>Name</td><td>Blood Group</td></tr>";
				echo "<tr><td>01</td><td>Aditya</td><td>O+</td></tr>";
				echo "<tr><td>02</td><td>Vivek</td><td>O+</td></tr>";
				echo "<tr><td>03</td><td>Pranshu</td><td>B+</td></tr>";
				echo "<tr><td>04</td><td>Shshank</td><td>AB+</td></tr>";
				echo "<tr><td>05</td><td>Manju</td><td>O-</td></tr>";
				echo "<tr><td>$pid</td><td>$pname</td><td>$bgp</td></tr>";
				echo "</table>";
			?>
		</div>
		<div class="copyright">
			<p>© 2018 All rights reserved | Design by <a href="https://www.github.com/cstechnergize">CyberSecurity Technergize Team</a></p> 
		</div>
	</div>
</body>
</html>