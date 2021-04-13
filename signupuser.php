<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Signup</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);
$rs=mysqli_query($con,"select * from mst_user where login='$lid'");
if (mysqli_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Login Id Already Exists</div>";
	echo '<a href="signup.php">Go Back </a>';
	exit;
}

$query="insert into mst_user(login,pass,username,phone,phone2,email,qlf) values('$lid','$pass','$name','$phone','$phone2','$email','$q')";
$rs=mysqli_query($con,$query)or die("Could Not Perform the Query");
echo "<br><br><br><div class=head1>Your Login ID  $lid Created Sucessfully</div>";
echo '<a href="signup.php">Go Back </a>';


?>
</body>
</html>

