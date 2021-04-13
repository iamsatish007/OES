<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Result </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>

<body>
<?php
include("header.php");
include("../database.php");
extract($_SESSION);
/*$rs=mysqli_query($con,"select t.test_name,t.total_que,r.test_date,r.score from mst_test t, mst_result r where
t.test_id=r.test_id",$cn) or die(mysqli_error());
*/
$rs=mysqli_query($con,"select t.test_name,t.total_que,r.login, r.score,r.test_date from mst_test t,mst_result r where 
	t.test_id=r.test_id",$cn) or die(mysqli_error());
	$c=0;

echo "<h1 class='text-center bg-danger'>Result</h1>";
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h1 class=head1> No Result Found.</h1>";
	exit;
}
echo "<table border=1 align=center><tr class=style2><td> SN </td> <td>Login Id <td> Candidate Name <td> Test Name <td> Test Date <td> Total<br> Question <td> Score </td></tr>";
while($row=mysqli_fetch_row($rs))
{   $c++;
	$stmt="select * from mst_user where login='$row[2]'";
	$tmp=$conn->query($stmt);
	$tmp=mysqli_fetch_array($tmp);
echo "<tr class=style4><td> $c <td>$row[2] <td> $tmp[3]  <td>$row[0] <td> $row[4] <td> $row[1] <td> $row[3]";
}
echo "</table>";
?>
</body>
</html>
