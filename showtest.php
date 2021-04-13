<?php
extract($_GET);
	$i=$var1;
	session_id($i);
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Test List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>
<?php
include("header.php");
include("database.php");
extract($_GET);
$rs1=mysqli_query($con,"select * from mst_subject where sub_id=$subid");
$row1=mysqli_fetch_array($rs1);
echo "<h1 align=center><font color=blue> $row1[1]</font></h1>";
$rs=mysqli_query($con,"select * from mst_test where sub_id=$subid");
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h2 class=head1> No Exam for this Subject </h2>";
	exit;
}
$_SESSION[temp]=0;
echo "<h1 class='text-center bg-danger'> Select Exam </h1>";
echo "<table align=center>";
$s=session_id();

$count=0;
while($row=mysqli_fetch_row($rs))
{
    $count++;
}
$temp=0;
$rs=mysqli_query($con,"select * from mst_test where sub_id=$subid");

$stm="select * from setup";
$testid=$conn->query($stm);
$testid=mysqli_fetch_array($testid);

while($row=mysqli_fetch_row($rs))
{
   /* 
     if($temp!=$count-1)
    {
        $temp++;    
        continue;
    }
    */
    if($row[0]==$testid[1])
echo "<tr><td align=center ><a style=\"font-size:25px;\" href=quiz.php?testid=$row[0]&subid=$subid&var2=$s>$row[2]</a>";
}
echo "</table>";
?>
</body>
</html>
