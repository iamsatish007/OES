<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}

.blinking{
    animation:blinkingText 1.2s infinite;
}
@keyframes blinkingText{
    0%{     color: red;    }
    49%{    color: red; }
    60%{    color: transparent; }
    99%{    color:transparent;  }
    100%{   color: red;    }
}
-->
</style>
<!--<table border="0" width="100%" cellspacing="0" cellpadding="0" background="image/click.png">
  <tr>
    <td width="90%" valign="top">
You can modify the text, color, size, number of loops and more on the flash header by editing the text file (fence.txt) included in the zip file.-->
<!--<div align="left"><object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000
codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,2,0
width=500
height=68>
<param name=movie value=image/fence.swf>
<param name=quality value=high>
<param name=BGCOLOR value=#000000>
<param name=SCALE value=showall>
<param name=wmode value=transparent> 
<embed src=image/fence.swf
quality=high
pluginspage=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash type=application/x-shockwave-flash
width=500
height=68
bgcolor=#000000
scale= showall>
</embed>
</object></div></td>-->
    <td width="10%">
     <img border="0" src="image/examlogommhapu.jpg" width="100%" height="180" align="right"></td>
  </tr>
</table>
<center>
<!--
<h1>INDIRA GANDHI NATIONAL OPEN UNIVERSITY</h1>
<h3> PSC46012P, Municipal Chowk, Chapra </h3> 
<h3> Email:ignoulscpatna46012@gmail.com, Mobile:+917970746012</h3> -->
<!-- <blink><a style="text-decoration:none; font-size:20px;color:red;" href="../registerforquiz.php"><span class="blinking">Register for Online Quiz for IGNOU Learners</span></a></blink> -->
</center>
<!--<table border="0" width="100%" cellspacing="0" cellpadding="0" bgcolor="#000000" background="img/blackbar.jpg">
  <tr>
    <td width="100%" align="right"><img border="0" src="image/blackbar.jpg" width="89" height="15"></td>
  </tr>
  </Table>-->
  <Table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	<?php
	if(isset($_SESSION['login']))
	{
	 echo "<div align=\"right\"><strong><a href=\"index.php\"> Home </a>|<a href=\"signout.php\">Signout</a></strong></div>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
	</td>
	
  </tr>
  
</table>
