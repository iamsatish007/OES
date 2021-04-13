<?php
session_start();
?>

<html>
    <head>
        <link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <?php
include("header.php");
?>
<br>
<h3 align=center> List of Candidates Not appeared in Exam </h3>

<table align=center border=1>
    <tr>
        <th>SN</th>
        <th>Login</th>
        <th>Password</th>
        <th>Name</th>
        <th>Phone</th>
    </tr>




<?php
include("../database.php");
$stm="select * from mst_user";
$usr=$conn->query($stm);
$t=0;
while($usrrow=mysqli_fetch_array($usr))
{	
	
	$found=0;
	$stm1="select * from mst_result";
    $rs=$conn->query($stm1);
	while($rsrow=mysqli_fetch_array($rs))
	{
		if(strcasecmp($usrrow[login],$rsrow[login])==0)
		{
			$found=1;
		}
	}

	if($found==0)
	{   $t++;
		echo "<tr> <td> $t </td> <td> $usrrow[login] </td> <td> $usrrow[pass]</td> <td> $usrrow[username] </td> <td> $usrrow[phone]</td> </tr>";
	}
	

}

?>
</table>
</body>
</html>