<?php
  include "connection.php";
  include"navbar.php"
?>
<!DOCTYPE html>
<html>
<head>
	<title>Fine Calculation </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		.srch
		{
			padding-left: 850px;
		}
		body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  margin-top: 50px;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #222;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.img-circle
{
	margin-left: 20px;
}
.h:hover
{
	color:white;
	width: 300px;
	height: 50px;
	background-color: #00544c;
}



	</style>
</head>
<body>



	<!--__________________________search bar________________________-->
<div class="container">
	<div class="srch">
		<form class="navbar-form" method="post" name="form1">
			
				<input class="form-control" id="searchtxt" type="text" name="search" placeholder="Student username.." required="">
				<button style="background-color: #6db6b9e6;"  id="btn" type="submit" name="submit" class="btn btn-default">
					<span class="glyphicon glyphicon-search"></span>
				</button>
		</form>
	</div>

<div id="search-result" style="display: none; ">
	<table class='table table-bordered table-hover mb-5'>
	<tr>
		<td id="td1"></td>
		<td id="td2"></td>
		<td id="td3"></td>
		<td id="td4"></td>
		<td id="td5"></td>
		<td id="td6"></td>
	</tr>

	</table>
	</div>

<script>


let btn = document.querySelector("#btn");  // select button
	
	btn.addEventListener('click', () => {  //add click event

	let searchTxt = document.getElementById("searchtxt").value;    // get input field value

	let td1=document.getElementById("td1");   //select column
	let td2=document.getElementById("td2");
	let td3=document.getElementById("td3");
	let td4=document.getElementById("td4");
	let td5=document.getElementById("td5");
	let td6=document.getElementById("td6");  ///--


	fetch('http://localhost/fine/connection2.php?username='+searchTxt)  //request backend
		.then(response => response.json())  
		.then(json => {                         // get data in json format

			
		
			td1.innerHTML = json['content'][0]['username'];	   // insert value into table		
		  td2.innerHTML = json['content'][0]['bid'];
			td3.innerHTML = json['content'][0]['returned'];
			td4.innerHTML = json['content'][0]['day'];
			td5.innerHTML = json['content'][0]['fine'];
			td6.innerHTML = json['content'][0]['status'];

		})
	});



	</script>




	<h2>List Of Students</h2>
	<?php

	
			/*if button is not pressed.*/
		
	$res=mysqli_query($db,"SELECT * FROM `fine`;");

		echo "<table class='table table-bordered table-hover' >";
			echo "<tr style='background-color: #6db6b9e6;'>";
				//Table header
				echo "<th>"; echo " Username ";	echo "</th>";
				echo "<th>"; echo " Bid ";  echo "</th>";
				echo "<th>"; echo " Returned ";  echo "</th>";
				echo "<th>"; echo " Days ";  echo "</th>";
				echo "<th>"; echo " Fines in $ ";  echo "</th>";
				echo "<th>"; echo " Status ";  echo "</th>";
			echo "</tr>";	

			while($row=mysqli_fetch_assoc($res))
			{
				echo "<tr>";
				
				echo "<td>"; echo $row['username']; echo "</td>";
				echo "<td>"; echo $row['bid']; echo "</td>";
				echo "<td>"; echo $row['returned']; echo "</td>";
				echo "<td>"; echo $row['day']; echo "</td>";
				echo "<td>"; echo $row['fine']; echo "</td>";
				echo "<td>"; echo $row['status']; echo "</td>";

				echo "</tr>";
			}
		echo "</table>";

	?>
</div>
</body>
</html>
