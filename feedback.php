<?php
session_start();
include("header.php");
include("database.php");
extract($_POST);

$d=date("Y/m/d");
echo "$_SESSION[login] $feedback1 $feedback2 $feedback3 $feedback4 $feedback5 $feedback6 $sbox $d";

$stmt="insert into feedback(loginid,q1,q2,q3,q4,q5,q6,suggestion,date
)values('$_SESSION[login]','$feedback1','$feedback2','$feedback3','$feedback4','$feedback5','$feedback6','$sbox','$d')";
$tmp=$conn->query($stmt);

	unset($_SESSION[qn]);
				unset($_SESSION[sid]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);


header("location: index.php");
echo '<script>window.location.href="index.php";</script>';
?>