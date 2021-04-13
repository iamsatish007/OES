<?php
include("../database.php");
extract($_POST);

$stm="update mst_user set pass='$pwd'";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>