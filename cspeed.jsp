
<html>
<head>
    <% String temporarysize1=request.getParameter("tempp");
 int temporarysize=Integer.parseInt(temporarysize1);
 if(temporarysize==1){
 temporarysize=16;
 }else if(temporarysize==2){
 temporarysize=24;}else{
 temporarysize=32;}
 %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
var x=1,i;
$(document).ready(function(){
$("td").click(function(){
     var valuetosend = "<%=temporarysize%>";
                          //alert(valuetosend);
                     
    window.location="iquantity.jsp?"+"speed="+speed+"&size="+valuetosend;
});
});

<!--script to get the value from url -->
 var query = window.location.search;
  // Skip the leading ?, which should always be there, 
  // but be careful anyway
  if (query.substring(0, 1) == '?') {
    query = query.substring(1);
  }
  var data = query.split(','); 
  for (i = 0; (i < data.length); i++) {
    data[i] = unescape(data[i]);
  }
  sizetemp=data[0];
  
<!--script to set the value of size-->
 if(sizetemp==1){
 size1=16;
 }else if(sizetemp==2){
 size1=24;}else{
 size1=32;}

        $(".size").attr("style","background-color: white; color: black;text-align: center; padding : 15px 32px;font-size:"+size1+";");
   
</script>
       
<script>
var x=1,i,maxvalue=4,sizetemp,size1,speed=1;
</script>
<script>
function func(){
setInterval(function(){
if(x===1){
var temp=maxvalue;
$("#"+temp).attr("style","background-color: white; font-size:"+size1+"; color: black;text-align: center; padding : 15px 32px;font-size:"+<%=temporarysize%>+";");
    }

    for(i=1;i<x;i++){
    $("#"+i).attr("style","background-color: white; font-size:"+size1+"; color: black;text-align: center; padding : 15px 32px;font-size:"+<%=temporarysize%>+";");
    }
    $("#"+i).attr("style","background-color: red; font-size:"+size1+"; color: black;text-align: center; padding : 15px 32px;font-size:"+<%=temporarysize%>+";");
        speed=x;
            x++;
    if (x > maxvalue){
    x=1;
    }
},3000);

}
</script>
</head>
<body onload='func()'>
 
    <table align="center" style="width : 100%; height: 100%">
    
        <thead><h1><center> CURSOR SPEED </h1></thead>
        <tr>
            <td>   
<table align="center" border="0">
<tr>
<td>
    <h1><%=temporarysize%></h1>
<button id="1" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=temporarysize%>;">Very slow</button>
<button id="2" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=temporarysize%>;">Slow</button>
<button id="3" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=temporarysize%>;">Fast</button>
<button id="4" style="background-color : white; color: black;text-align: center; padding : 15px 32px;font-size:<%=temporarysize%>;">Very Fast</button>
</td>
</tr>
</table>
    </td>
    </table>
    </font>
</body>
</html>
