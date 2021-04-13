<?php
include("../database.php");
extract($_GET);

$stm="update loginstatus set status='$var'";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>