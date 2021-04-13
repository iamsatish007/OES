<?php
session_start();

error_reporting(0);
//echo "$_SESSION[qn]";
$_SESSION[qn]=$_SESSION[qn]-1;
//echo "$_SESSION[qn]";
echo '<script>window.location.href="quiz.php";</script>';
?>