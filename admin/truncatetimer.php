<?php
include("../database.php");

$stm="truncate table timer";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>