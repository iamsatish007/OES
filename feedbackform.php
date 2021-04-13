<?php
session_start();
echo '
<form action="feedback.php" method="POST" style="margin-left:20px;">
<br><span style="font-size:35px;">
1.  What is your opinion about the Online Quiz.?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback1" value="1" /> 
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback1" value="2"/> 
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback1" value="3"/> 
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback1" value="4"/>  
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback1" value="5"checked/></input>
<br><br>
2. How this Quiz has been in terms of skill enhancement.?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback2" value="1">  </input>
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback2" value="2">  </input>
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback2" value="3">  </input>
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback2" value="4">  </input>
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback2" value="5"checked>  </input>
<br><br>
3. How will you rate to the Response to questions.?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback3" value="1">  </input>
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback3" value="2">  </input>
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback3" value="3">  </input>
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback3" value="4">  </input>
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback3" value="5"checked>  </input>
<br><br>
4. What is your opinion about the Questions  provided in Quiz.?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback4" value="1">  </input>
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback4" value="2">  </input>
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback4" value="3">  </input>
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback4" value="4">  </input>
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback4" value="5"checked>  </input>
<br><br>
5. Do you like to refer your colleagues for attending this Quiz.?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback5" value="1">  </input>
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback5" value="2">  </input>
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback5" value="3">  </input>
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback5" value="4">  </input>
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback5" value="5"checked>  </input>
<br><br>
6. How will you rate the BEEDI College?<br>&nbsp&nbsp&nbsp
1 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback6" value="1">  </input>
2 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback6" value="2">  </input>
3 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback6" value="3">  </input>
4 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback6" value="4">  </input>
5 &nbsp<input style="width:30px;height:30px;" type="radio" name="feedback6" value="5"checked>  </input>
<br>



<br>
Please give some suggestion : &nbsp  <br>
<textarea style="border:1px solid black;padding:0px;" rows = "5" cols = "25" name = "sbox">
         </textarea>
<br><br>
<input style="margin-left:10px;width:250px;height:80px;border:none;outline:none;background-color:orange;color:white;font-size:45px;" type="submit" value="SUBMIT" />
</span>
';
?>