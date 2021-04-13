<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Quiz List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>
<?php
include("header.php");
include("../database.php");
echo '<br><br>';
$stm="select * from feedback";
$tmp=$conn->query($stm);

echo '<table align=center border=1>
<tr><th> Login id </th>
<th> Q1 </th>
<th> Q2 </th>
<th> Q3 </th>
<th> Q4 </th>
<th> Q5 </th>
<th> Q6 </th>
<th> Suggestions </th>
<th> Date </th>
</tr>

';

while($row=mysqli_fetch_array($tmp))
{
 echo '<tr>
 <td>'.$row[0].' </td>
 <td>'.$row[1].' </td>
 <td>'.$row[2].' </td>
 <td>'.$row[3].' </td>
 <td>'.$row[4].' </td>
 <td>'.$row[5].' </td>
 <td>'.$row[6].' </td>
 <td>'.$row[7].' </td>
 <td>'.$row[8].' </td>
 </tr>
 ';   
}

echo '</table>';
?>