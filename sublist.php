<?php
extract($_GET);
	$i=$var;
	session_id($i);
	session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Quiz List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>
<?php
include("header.php");
include("database.php");
echo "<h1 class='text-center bg-danger'>Select Subject</h1>";
/*$rs=mysqli_query($con,"select * from mst_subject");
$count=0;
while($row=mysqli_fetch_row($rs))
{
    $count++;
}
$temp=0;
*/
$rs=mysqli_query($con,"select * from mst_subject");
echo "<table class='table table-striped'>";
$s=session_id();
$stm="select * from setup";
$subid=$conn->query($stm);
$subid=mysqli_fetch_array($subid);
while($row=mysqli_fetch_row($rs))
{	
  /*  if($temp!=$count-1)
    {
        $temp++;    
        continue;
    } */
    if($row[0]==$subid[0])
    {
	echo "<tr><td align=center ><a style=\"font-size:25px;\" href=showtest.php?subid=$row[0]&var1=$s>$row[1]</font></a>";
    }
}
echo "</table>";
?>
</body>
</html>
