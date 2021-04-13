<?php

session_start();

?>

<html>
<head>
<title>Welcome to Online Exam</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">

<style>
    
    td
    {
        color:white;
    }
    
</style>


</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_GET);


//echo "$var";

$stm="select * from mst_useranswer where sess_id='$var'";
$res=$conn->query($stm);

$i=1;
echo '<center><h2> Review Your Answers </h2></center>';

echo '<center><table border=1>
<th> SN </th>
<th> Question Description </th>
<th> Option 1</th>
<th> Option 2</th>
<th> Option 3</th>
<th> Option 4</th>
<th> Correct Ans </th>
<th> Your Ans </th>
</tr>
';

while($row=mysqli_fetch_array($res))
{
    if($row[7]==$row[8])
    {
    echo '
    <tr bgcolor="green">
    <td> '.$i.'</td>
    <td> '.$row[2].' </td>
    <td> '.$row[3].' </td>
    <td> '.$row[4].' </td>
    <td> '.$row[5].' </td>
    <td> '.$row[6].' </td>
    <td> '.$row[7].' </td>
    <td> '.$row[8].' </td>
    </tr>
    ';
    }
    else
    {
    echo '
    <tr bgcolor="red">
    <td> '.$i.'</td>
    <td> '.$row[2].' </td>
    <td> '.$row[3].' </td>
    <td> '.$row[4].' </td>
    <td> '.$row[5].' </td>
    <td> '.$row[6].' </td>
    <td> '.$row[7].' </td>
    <td> '.$row[8].' </td>
    </tr>
    ';
    }
    $i++;
}


echo '</table></center>';
?>

</body>
</html>