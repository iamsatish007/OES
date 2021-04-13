<?php
extract($_POST);
if(isset($submit))
{	
	$i=$loginid;
	session_id($i);
}
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Online Exam</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);

if(isset($submit))
{
	$rs=mysqli_query($con,"select * from mst_user where login='$loginid' and pass='$pass'");
	if(mysqli_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}
if (isset($_SESSION[login]))
{
$logid=$_SESSION[login];
$stmt="select * from mst_result where login='$logid'";
$tmp=$conn->query($stmt);


if(mysqli_num_rows($tmp)==0)
{
	$s=session_id();
echo "<h1 class='text-center bg-danger'>Welcome to Online Quiz</h1>";

$stm="select * from loginstatus";
$tmp=$conn->query($stm);
$sts=mysqli_fetch_array($tmp);

if($sts[0]==1)
{
	echo '<table width="95%"  border="1" align="center">
	<center>
    <tr><td style="color:red;font-size:38px;text-align:center;"> Instructions for the Quiz </td></tr>
    <tr><td style="color:black;font-size:35px;text-align:left;padding-left:5px;">1. This quiz contains 50 questions. </td></tr>
    <tr><td style="color:black;font-size:35px;text-align:left;padding-left:5px;">2. The duration of the quiz will be of 30 minutes.</td></tr>
    <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">3. There will be no any negative marking for the wrong answer.   </td></tr>
    <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">4. A certain color coding has been used in this quiz. </td></tr>
    <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:35px;"><button style="background-color:red;height:50px;width:50px;border:none;border-radius:50%;"></button> - Not Answered <br> 
    <button style="background-color:green;height:50px;width:50px;border:none;border-radius:50%;"></button> - Answered <br>
    <button style="background-color:purple;height:50px;width:50px;border:none;border-radius:50%;"></button> - Marked For Review <br>
    </td></tr>
     <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">5. In order to answer a question or update the answer of a question, just select the option you want and click on <u>Save & Next</u> button. Your answer will not be recorded unless you click on that button. </td></tr>
  <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">6. If you want to mark a question for review, click on <u>Mark For Review</u> button. Note that, Answers for Questions which has been Marked for review will not be submitted if you leave them as it is and finish the quiz. You must have to use <u>Save & Next</u> button in order to submit the answer for that question. </td></tr>
  <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">7. You can change the answer of any question anytime during the quiz. Click on question number and choose your answer and then click on <u>Save & Next</u> button.  </td></tr>
  <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">8. In the last question, you will get <u>Final Submit </u> button, this will finish you quiz.</td></tr>
  <!-- <tr><td colspan=2 style="color:black;font-size:35px;text-align:left;padding-left:5px;">9. If you face any trouble during the quiz, Go to login page and click on <u>Raise a query</u> link.</td></tr> --->
 
 
    <tr>
  <!-- <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td> -->
    <td width="100%" align="center" valign="bottom" bordercolor="#0000FF"><a style="font-size:40px;color:red;" href="sublist.php?var='.$s.'" class="style4">Click Here To Proceed </a></td>
    </tr>
    </center>
    ';
}
else
{
    echo '<p align=center> Login slot has over. Please wait for next time slot.</p>';
}
 }
 else
 {
 	echo "<h1 class='text-center bg-danger'>Welcome to Online Quiz</h1>";
	echo "<h1 class='text-center bg-danger'>#Stay Home, Stay SAFE. Be a Covid19 Warrior.</h1>";	
    echo "<center><h2 class='text-center bg-danger'>You have finished your quiz.</h1></center>";
 	$stmt11="select * from feedback where loginid='$_SESSION[login]'";
    $tmp11=$conn->query($stmt11);
 	
 	if(mysqli_num_rows($tmp11)==0)
 	{
 	echo '<p style="font-size:40px;margin-left:20px;">Please Give your valuable feedback:</p>';
 	include("feedbackform.php");
 		//echo '<img src="images/covid19.jpg" height=300 width=300 style="float:right; position:absolute; margin-top:-280px;margin-left:600px;"</img>';
 	}
 	else
 	{
// echo '<img src="images/covid19.jpg" height=300 width=300 style="position:absolute; margin-top:-50px;margin-left:1100px;"</img>';

echo '<script>
function show()
{

document.getElementById("d").style.display = "block";

}
function closee()
{

document.getElementById("d").style.display = "none";

}
</script>';
echo '<div id="d" style="
    z-index: 5;
    background-color: #7cbcbf;
    position: fixed;
    top: 310px;
    left:100px;
    width:800px;
    height:400px;
    display: none;">
<button onclick="closee()" style="float:right;"/> X </button>
<br><br><br>
<p align="center" style="color:red;font-size:60px;">Congratulations!!!</p>
<p align="center" style="color:purple;font-size:40px;">You have given the quiz successfully.<br>Thank you for your valuable response.</p>
</div>';
echo '<script>show();</script>';

$stmmm="select * from mst_result where login='$_SESSION[login]'";
$resss=$conn->query($stmmm);
$resss=mysqli_fetch_array($resss);
echo '<center><h2 style="color:white;background-color:green;">Your Marks: '.$resss[3].'</h2></center>';

echo '<center><h2><a href="review.php?var='.$_SESSION[login].'"> Review Your Answers </a><h2></center>';


 	}
 	
 	
 }
 // <tr>
   // <td height="58" valign="bottom"><img src="image/DEGREE.JPG" width="43" //height="43" align="absmiddle"></td>
    //<td valign="bottom"> <a href="result.php" class="style4">Result </a></td>
  //</tr>

   
		exit;
		

}
	
?>
<!--
<table width="100%" border="0">
  
  <tr>
    <td height="296" valign="top"><div align="center">
        <h1 class="style8">Welcome to Online Exam</h1>
    <span class="style5"><img src="image/paathshala.jpg" width="129" height="100"><span class="style7"><img src="image/HLPBUTT2.JPG" width="50" height="50"><img src="image/BOOKPG.JPG" width="43" height="43"></span>        </span> 
        <param name="movie" value="english theams two brothers.dat">
        <param name="quality" value="high">
        <param name="movie" value="Drag to a file to choose it.">
        <param name="quality" value="high">
        <param name="BGCOLOR" value="#FFFFFF">
<p align="left" class="style5">&nbsp;</p>
      <blockquote>
          <p align="left" class="style5"><span class="style7">WelCome to Online 
            exam. This Site will provide the quiz for various subject of interest. 
            You need to login to proceed.</span></p>
      </blockquote>
    </div></td>
    -->
    		<table align="center" border="0" WIDTH="50%" height="250">
			<h1 class="text-center bg-warning">LOGIN PAGE</h1>
		<form method="post" action="">
		<center>
		<img class="img-circle" src="1.jpg"  title="this is my profile pic" width="240px" height="190px" border="1" />
		</center>	<br>
	
				<tr>
					<th class="text-primary">LOGIN ID</th>
					<th>
					<input class="form-control"type="TEXT" title="enter your regitered LOGIN ID"  placeholder="LOGIN ID"  maxlength="50" size="25"  id="loginid2" name="loginid"/></tD>
				</th>
				<tr>
					<th class="text-primary">ENTER PASSWORD</th>
					<th><input class="form-control" type="password" name="pass" id="pass2"/></th>
					</tr>
					       <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
         <th></th>
				<th class="errors">
					<input class="btn btn-danger "type="submit" name="submit" id="submit" Value="Login"/> &nbsp;
					<!-- <a href="raisequery.php">Raise a query</a> -->
				</th>
				
      </table>
        <!--<a class="btn btn-success " href="signup.php">New user ? click here</a>-->
      <!--<div align="center">
        <p class="style5"><img src="images/topleft.jpg" width="134" height="128">          </p>
        </div>-->
    </form></td>
  </tr>
</table>
</body>
</html>
