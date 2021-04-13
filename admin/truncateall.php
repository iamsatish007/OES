<?php
include("../database.php");

$stm="truncate table mst_result";
$tmp=$conn->query($stm);
$stm="truncate table mst_useranswer";
$tmp=$conn->query($stm);
$stm="truncate table feedback";
$tmp=$conn->query($stm);
$stm="truncate table timer";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>