<?php
include("../database.php");

$stm="truncate table feedback";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>