<?php
session_start();
?>

<?php

 include("../database.php");

if(isset($_POST['setup']))
{
    
    extract($_POST);
    
    $stm="update setup set sid='$sid',tid='$tid'";
    $t=$conn->query($stm);
    
    if(mysqli_affected_rows($conn)>0)
    {
        echo '<script>alert("Done");</script>';
    }
    else
    {
         echo '<script>alert("Failed.");</script>';
    }
    
}


?>



<html>
    <head>
       <link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
    tr
    {
        width:400px;
        height:50px;
    }
    td
    {
        vertical-align:middle;
        margin:2px;
        padding:2px;
    }
</style>
    </head>
    <body>
        <?php
        include("header.php");
        include("../database.php");
       echo' <br><br><br>';
        	if(isset($_SESSION['alogin']))
        	{
        	    $stm="select * from loginstatus";
        	    $tmp=$conn->query($stm);
        	    $tmp=mysqli_fetch_array($tmp);
        	    
        	  echo '<table align=center>
        	  <tr>
        	  <td><a href="list.php"> List of Non appeared Candidates</a></td>
        	  </tr>
        	  <tr>
        	  <td> Login Status : ' .$tmp[0]. ' </td>
        	  <td> <a href="changestatus.php?var=1">Enable </a> </td>
        	  <td> &nbsp; &nbsp; <a href="changestatus.php?var=0">Disable </a> </td>
        	  </tr>
        	  <tr>
        	  <td> Set User Common Password: </td>
        	  <td valign=bottom><form action="changepwd.php" method="POST"> <input type="textbox" name="pwd" required/></td>
        	  <td> &nbsp; &nbsp;<input type="submit" value="Submit"/></form></td>
        	  </tr>
        	  <tr>
        	  <td><a href="viewfulluser.php"> View User full details </a></td>
        	  </tr>
        	  <tr>
        	  <td> <a href="viewfeedback.php"> View Feedback </a> </td>
        	  </tr>
        	  <tr>
        	  <td> Truncate table </td>
        	  <td> <a href="truncateresult.php"> Result </a> </td>
        	   <td> &nbsp;<a href="truncateanswer.php"> Answer </a> </td>
        	    <td>&nbsp; <a href="truncatefeedback.php"> Feedback </a> </td>
        	     <td> &nbsp; <a href="truncatetimer.php"> Timer </a> </td>
        	     <td> &nbsp; &nbsp; <a href="truncateall.php"> ALL </a></td>
        	  </tr>
        	  
        	  <tr>
        	  <td> Configure Test </td>
        	 <td> <form action="#" method="POST"> 
        	 <input type="textbox" name="sid" placeholder="Enter Subject ID" required/></td>
        	<td> <input type="textbox" name="tid" placeholder="Enter Test Id" required/></td>
        	  <td> &nbsp; &nbsp;<input type="submit" name="setup"  value="Submit"/></form></td>
        	  </tr>
        	  
        	  '  ;
        	}
        	?>
    </body>
</html>