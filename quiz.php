<?php
extract($_GET);
	if(isset($var2))
	{
	$i=$var2;
	session_id($i);
}
session_start();
error_reporting(1);
include("database.php");
extract($_POST);
extract($_SESSION);

/*$rs=mysql_query($con,"select * from mst_question where test_id=$tid",$cn) or die(mysql_error());
if($_SESSION[qn]>mysql_num_rows($rs))
{
unset($_SESSION[qn]);
exit;
}*/
if($_SESSION[temp]<2)
{
	$_SESSION[temp]=$_SESSION[temp]+1;
	echo '<script>window.location.reload(true);</script>';
}
if(isset($subid) && isset($testid))
{
$_SESSION[sid]=$subid;
$_SESSION[tid]=$testid;
$ctt=time();
$logout=$ctt+1800;
$logid=$_SESSION[login];
mysqli_query($con,"insert into timer(loginid,logouttime)values('$logid','$logout')");
}
if(!isset($_SESSION[sid]) || !isset($_SESSION[tid]))
{
	header("location: index.php");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
<title>Online Quiz</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<style>
    .blinking{
    animation:blinkingText 1s infinite;
}
@keyframes blinkingText{
    0%{     color: red;    }
    49%{    color: red; }
    60%{    color: transparent; }
    99%{    color:transparent;  }
    100%{   color: red;    }
}
</style>
</head>

<body>
<?php
$id=$_SESSION[login];
$rs1=mysqli_query($con,"select * from timer where loginid='$id'");
$rs1=mysqli_fetch_array($rs1);
$lt=$rs1[1];
$ct=time();
$diff=$lt-$ct;
$rs2=mysqli_query($con,"select * from mst_user where login='$id'");
$rs2=mysqli_fetch_array($rs2);
echo '<script type="text/javascript">
	var x='.$diff.';
	var t=setInterval(function(){
		
		var m=parseInt(x/60);
		var s=x%60;
		if(x>0)
		{
		x=x-1;
		}
		document.getElementById("fortimer").innerHTML="Time Left:"+m+":"+s;
		if('.$diff.'<=0 || x<=0)
		{	
			clearInterval(t);	
			alert("Your time is up.");
			window.location.href="autosubmit.php";		
		}
	},1000);
</script>';
include("headerforquiz.php");
echo '<p align="left" style="font-size:25px;float:left;"> Candidate Name: '.$rs2[3].'  </p>';
echo '<p align="right" id="fortimer" class="blinking" style="color:red; font-size:25px;"> Time Left: </p>';
$query="select * from mst_question";
$rs=mysqli_query($con,"select * from mst_question where test_id=$tid ORDER BY temp DESC",$cn) or die(mysqli_error());
if(!isset($_SESSION[qn]))
{	

	$_SESSION[qn]=0;
	mysqli_query("delete from mst_useranswer where sess_id='" . session_id() ."'") or die(mysqli_error());
	$_SESSION[trueans]=0;
	
}
else
{               if(isset($_POST['shift']))
                {
                    $var=@$_POST['var'];
                    $_SESSION[qn]=$var;
                    
                }
    
                 if(isset($_POST['submit3']))
				    {
			            	mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);
				$sessionid=session_id();
				$st="select * from mst_useranswer where sess_id='$sessionid' AND que_des='$row[2]'";
				$tm=$conn->query($st);	    
				        $ans=$ans+5;
				        if(mysqli_fetch_row($tm)<1)
				{ 
				mysqli_query($con,"insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error());
			    	if($ans==$row[7])
			    	{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
			    	}
				}
				else
				{   $xy="select * from mst_useranswer where sess_id='$sessionid' AND que_des='$row[2]'";
				    $tmpxy=$conn->query($xy);
				    $tmpxy=mysqli_fetch_array($tmpxy);
				    if($tmpxy[8]!=$ans)
				    {
				       if($ans==$row[7])
				        {
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				        } 
				    }
				    $st1="update mst_useranswer set your_ans='$ans' where sess_id='$sessionid' AND que_des='$row[2]'";
				    $tm1=$conn->query($st1);
				}        
				$_SESSION[qn]=$_SESSION[qn]+1;
				    
				    }
    
    
    
    
	//	if($submit=='Next Question')
	    if(isset($_POST['submit1']))
		{		
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);
				$sessionid=session_id();
				$st="select * from mst_useranswer where sess_id='$sessionid' AND que_des='$row[2]'";
				$tm=$conn->query($st);
				if(mysqli_fetch_row($tm)<1)
				{ 
				mysqli_query($con,"insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error());
			    	if($ans==$row[7])
			    	{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
			    	}
				}
				else
				{   $xy="select * from mst_useranswer where sess_id='$sessionid' AND que_des='$row[2]'";
				    $tmpxy=$conn->query($xy);
				    $tmpxy=mysqli_fetch_array($tmpxy);
				    if($tmpxy[8]!=$ans)
				    {
				       if($ans==$row[7])
				        {
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				        } 
				    }
				    $st1="update mst_useranswer set your_ans='$ans' where sess_id='$sessionid' AND que_des='$row[2]'";
				    $tm1=$conn->query($st1);
				}
				
				
				
					$_SESSION[qn]=$_SESSION[qn]+1;
					
				
		} //end of if submit 1
	//	else if($submit=='Final Submit')
        else if(isset($_POST['submit2']))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);
			    $stmt="insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')";
			    $tmpppp=$conn->query($stmt);
				if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				mysqli_query($con,"insert into mst_result(login,test_id,test_date,score) values('$login',$tid,'".date("Y/m/d")."',$_SESSION[trueans])");
				unset($_SESSION[qn]);
				unset($_SESSION[sid]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);
				echo '<script>window.location.href="index.php";</script>';
				exit;
		} //end of final submit
} //end of else


if($_SESSION[qn]>mysqli_num_rows($rs)-1)
{
unset($_SESSION[qn]);
	echo '<script>window.location.href="index.php";</script>';
}
$rs=mysqli_query($con,"select * from mst_question where test_id=$tid ORDER BY temp DESC" ,$cn) or die(mysqli_error());
mysqli_data_seek($rs,$_SESSION[qn]);
$row= mysqli_fetch_row($rs);
$sessionidd=session_id();
$xyy="select * from mst_useranswer where sess_id='$sessionidd' AND que_des='$row[2]'";
$tmpxyy=$conn->query($xyy);
$tmpxyy=mysqli_fetch_array($tmpxyy);
if($tmpxyy[8]>4)
{
  $tmpxyy[8]=$tmpxyy[8]-5;  
}
$_SESSION[radio]=$tmpxyy[8];

echo '<div style="border:1px solid black;"><br>';
echo "<form id=myf name=myfm method=post action=quiz.php>";

echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION[qn]+1;
echo "<tR><td><span class=style2 style=\"vertical-align:middle; font-size:45px; \">Que ".  $n .": $row[2]</style>";
echo "<tr><td>";
if($_SESSION[radio]==1)
{
 echo "<tr><td style=\"font-size:25px; \" class=style8><input type=radio style=\" width:40px; height:40px; \" name=ans id=\"r1\" value=1 checked>$row[3] "; 
}
else
{
    echo "<tr><td style=\"font-size:25px; \" class=style8><input type=radio style=\" width:40px; height:40px; \" name=ans id=\"r1\" value=1>$row[3] ";
}
echo "<tr><td>";
if($_SESSION[radio]==2)
{
 echo "<tr><td style=\"font-size:25px; \" class=style8> <input type=radio style=\" width:40px; height:40px; \" name=ans id=\"r2\" value=2 checked>$row[4]"; 
}
else
{
echo "<tr><td style=\"font-size:25px; \" class=style8> <input type=radio style=\" width:40px; height:40px; \" name=ans id=\"r2\" value=2>$row[4]";
}
echo "<tr><td>";
if($_SESSION[radio]==3)
{
 echo "<tr><td style=\"font-size:25px; \" class=style8><input type=radio style=\" width:40px; height:40px; \" name=ans id=r3 value=3 checked>$row[5] "; 
}
else
{
echo "<tr><td style=\"font-size:25px; \" class=style8><input type=radio style=\" width:40px; height:40px; \" name=ans id=r3 value=3>$row[5] ";
}
echo "<tr><td>";
if($_SESSION[radio]==4)
{
echo "<tr><td style=\"font-size:25px; \" class=style8 style=\"vertical-align:middle;\"><input type=radio style=\" width:40px; height:40px; \" name=ans id=r4 value=4 checked>$row[6] "; 
}
else
{
echo "<tr><td style=\"font-size:25px; \" class=style8 style=\"vertical-align:middle;\"><input type=radio style=\" width:40px; height:40px; \" name=ans id=r4 value=4>$row[6] ";
}
echo "<tr><td></td></tr>";
echo "<tr><td></td></tr>";
echo "<tr><td>";
echo "<tr><td>";
if($_SESSION[qn]<mysqli_num_rows($rs)-1)
{
echo '<tr></tr>';
echo "<tr><td><input style=\"width:150px;height:40px;font-size:20px;\" type=submit name=submit1 value='Save & Next'>";
echo "<input style=\"width:170px;height:40px;font-size:20px;float:right;margin-right:10px;\" type=submit name=submit3 value='Mark For Review'></form>";
}
else
{
    echo '<script>function confirmSubmit()
{
var agree=confirm("Do you really want to finish the quiz?");
if (agree)
 return true ;
else
 return false ;
}</script>';
echo "<tr><td><input style=\"width:150px;height:40px;font-size:20px;\" type=submit name=submit2 value='Final Submit' onClick='return confirmSubmit()'></form>";
}
echo "</table></table>";
echo "<br></div>";
echo '<p align=center style=" font-size:30px;">List of Questions</p>';

echo '<br><br><table align=center><tr>';
$statement="select * from mst_useranswer where sess_id='$sessionidd'";
$results=$conn->query($statement);
$stm111="select * from mst_question where test_id=$tid ORDER BY temp DESC";
$results111=$conn->query($stm111);
//$results111=mysqli_fetch_array($results111);
$tmpp=0;
$found=0;

while($results1111=mysqli_fetch_array($results111))
{ 
    
   
        $statement="select * from mst_useranswer where sess_id='$sessionidd'";
        $results=$conn->query($statement);
      // mysqli_data_seek($results111,$tmpp);
        while($roww=mysqli_fetch_array($results))
        {
            
        if($roww[2]==$results1111[2])
        {   
            if($roww[8]==0)
                {
                    break 1;
                }
            if($tmpp==$_SESSION[qn] && 0)
            {
         echo '<td><form method=post action="quiz.php"><input type="hidden" name="var" value='.$tmpp.' /><input type="submit" style="width:50px;height:50px;border-radius:50%;background-color:green;border:none;outline:none;display:block;font-size:20px;color:black;" name="shift" value='.($tmpp+1).' /></form></td>' ;
            $found=1;
            break 1;
            }
            else
            {
                if($roww[8]>4)
                { echo '<td><form method=post action="quiz.php"><input type="hidden" name="var" value='.$tmpp.' /><input type="submit" style="width:50px;height:50px;border-radius:50%;background-color:purple;border:none;outline:none;display:block;font-size:20px;color:white;" name="shift" value='.($tmpp+1).' /></form></td>' ;
                    $found=1;
                    break 1;
                }
                
             echo '<td><form method=post action="quiz.php"><input type="hidden" name="var" value='.$tmpp.' /><input type="submit" style="width:50px;height:50px;border-radius:50%;background-color:green;border:none;outline:none;display:block;font-size:20px;color:white;" name="shift" value='.($tmpp+1).' /></form></td>' ;
                
             $found=1;
             break 1;
                
             }
             
        }
        }
        if(!$found)
        {
            
            if($tmpp==$_SESSION[qn])
            {
          echo '<td><form method=post action="quiz.php"><input type="hidden" name="var" value='.$tmpp.' /><input type="submit" style="width:50px;height:50px;border-radius:50%;background-color:red;border:none;outline:none;display:block;font-size:20px;color:black;" name="shift" value='.($tmpp+1).' /></form></td>' ;
            }
            else
            {
             echo '<td><form method=post action="quiz.php"><input type="hidden" name="var" value='.$tmpp.' /><input type="submit" style="width:50px;height:50px;border-radius:50%;background-color:red;border:none;outline:none;display:block;font-size:20px;color:white;" name="shift" value='.($tmpp+1).' /></form></td>' ;
             }
            
            
        }
        
    
  
  if(($tmpp+1)%10==0)
  {
      
      echo '</tr><tr>';
  }
  $found=0;
    $tmpp++;
}
echo '</table>';
?>
</body>
</html>