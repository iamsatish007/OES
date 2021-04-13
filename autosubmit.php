<?php
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
if(!isset($_SESSION[trueans]))
{
	$_SESSION[trueans]=0;
}

mysqli_query($con,"insert into mst_result(login,test_id,test_date,score) values('$_SESSION[login]',$_SESSION[tid],'".date("Y/m/d")."',$_SESSION[trueans])") or die(mysqli_error());
			/*
				unset($_SESSION[login]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);
	echo "<h1 class=head1>Thank You!!! Your answer has been recorded. This page will be closed automatically.</h1>";	
	sleep(2);
	*/
		echo '<script>window.location.href="index.php";</script>';
	header("Location:index.php");
	?>
</body>
</html>
