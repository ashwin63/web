<html>
<head>
    <% String temporarysize1=request.getParameter("size");
       String temporaryspeed=request.getParameter("speed");
 int size=Integer.parseInt(temporarysize1);
 int speed1=Integer.parseInt(temporaryspeed);
          int speed=speed1; 
          //assigning correct values to speed variable
        if(speed1 ==1)
            speed=4;
        else if(speed1 == 2)
        speed=3;
        else if(speed1 ==3)
        speed= 2;
        else
            speed= 1;
    
        
    %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
var x=1,i;
$(document).ready(function(){
$("td").click(function(){
     //var valuetosend = "<%=size%>";
                          //alert(valuetosend);
    if(tempdigit<10){                      
    var tempdigitpresent=document.getElementById("text").innerHTML;
    //alert(tempdigitpresent);                      
    document.getElementById("text").innerHTML="";
    tempdigitpresent=tempdigitpresent+tempdigit;
    
    document.getElementById("text").innerHTML=tempdigitpresent;
    }
    else if(tempdigit==10)
    {
        document.getElementById("text").innerHTML="";
    }
    else
    {
        window.location="testing.jsp";
    }
});
});  
</script>
       
<script>
var x=0,i,maxvalue=12,sizetemp,size1,speed=1,tempdigit=0;
</script>
<script>
function func(){
setInterval(function(){
if(x===0){
var temp=maxvalue;
$("#"+temp).attr("style","background-color: white; color: black;text-align: center; padding : 15px 32px;font-size:"+<%=size%>+";");
    }

    for(i=0;i<x;i++){
    $("#"+i).attr("style","background-color: white;color: black;text-align: center; padding : 15px 32px;font-size:"+<%=size%>+";");
    }
    $("#"+i).attr("style","background-color: red; color: black;text-align: center; padding : 15px 32px;font-size:"+<%=size%>+";");
    tempdigit=x;
            x++;
    if (x > maxvalue){
    x=0;
    }
},<%=speed%>*1000);

}
</script>
</head>
<body onload='func()'>
 
    <table border="1" align="center" style="width : 100%; height: 100%">
    
        <thead><h1><center> SELECT THE QUANTITY </h1></thead>
        <tr valign="top">
            <td valign="top">   
<table align="center" border="1">
<tr>
<td>
<button id="0" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">0</button>
<button id="1" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">1</button>
<button id="2" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">2</button>
<button id="3" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">3</button>
<button id="4" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">4</button>
<button id="5" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">5</button>
<button id="6" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">6</button>
<button id="7" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">7</button>
<button id="8" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">8</button>
<button id="9" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">9</button>

</td>
</tr>
<tr>
<td>
    <!--left=01 right=02--><br>   
<button id="10" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">Reset</button>
<!--<button id="11" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;"><--</button>-->
<button id="11" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=size%>;">Submit</button>

</td>
</tr>
</table>
        <br>
       <center><h1> <p>entered digits</p>
        <p id="text"></p>
    </td>
    </table>
    </font>
</body>
</html>
