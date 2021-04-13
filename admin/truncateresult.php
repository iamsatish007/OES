<?php
include("../database.php");

$stm="truncate table mst_result";
$tmp=$conn->query($stm);
echo '<script>window.location.href="superuser.php";</script>';
?>