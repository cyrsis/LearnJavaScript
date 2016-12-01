<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>自動隱藏式選單</title>
    <style>#dviID {
	BACKGROUND-COLOR: #66cdaa; 
	BORDER-BOTTOM: white 2px outset; 
	BORDER-LEFT: white 2px outset; 
	BORDER-RIGHT: white 2px outset; 
	BORDER-TOP: white 2px outset; 
	LEFT: 0px; POSITION: absolute; 
	TOP: 0px; VISIBILITY: hidden; 
	WIDTH: 200px; 
	layer-background-color: #e6e6fa
}
a{font-size:9pt}
a:link{text-decoration:none}
a:hover{text-decoration:none;color:#FFFFFF}
a:visited{text-decoration:none}
.40pt{font-size:40pt;color:#e6e6fa;font-family:文鼎琥珀繁}
</style>
<script language="javascript">
a=null
b=null
c=null
d=null
Netscape4 = (document.layers)?1:0
IE4 = (document.all)?1:0;
function MenuHide() //選單隱藏
{
    if(Netscape4) 
    {
        clearTimeout(d)
        if( menu.left > menuW*-1+20+10 ) 
        {  
            menu.left -= 10
            c = setTimeout("MenuHide()", 1)
        }
        else if( menu.left > menuW*-1+20 ) 
        {
            menu.left--
            c = setTimeout("MenuHide()", 1)
        }
    }
    else 
    { 
        clearTimeout(d)
        if( menu.pixelLeft > menuW*-1+20+10 ) 
        {
            menu.pixelLeft -= 10
            c = setTimeout("MenuHide()", 1) 
        }
        else if( menu.pixelLeft > menuW*-1+20 ) 
        {
            menu.pixelLeft--
            c = setTimeout("MenuHide()", 1)
        }
    }
}
function MenuOut() //選單顯示
{
    if(Netscape4) 
    {
        clearTimeout(c)
        if( menu.left < -10) 
        { 
            menu.left += 4
            d = setTimeout("MenuOut()", 1)
        }
        else if( menu.left < 0) 
        { 
            menu.left++
            d = setTimeout("MenuOut()", 1)
        }
    }
    else 
    { 
        clearTimeout(c)
        if( menu.pixelLeftp < -10) 
        {
            menu.pixelLeft += 2
            d = setTimeout("MenuOut()", 1)
        }
        else if( menu.pixelLeft < 0 ) 
        {
            menu.pixelLeft++
            d = setTimeout("MenuOut()", 1)
        }
    }
}
function fireOver() 
{ 
    clearTimeout(b)	       
    a = setTimeout("MenuOut()", 10) 
}
function fireOut() 
{ 
    clearTimeout(a)
    b = setTimeout("MenuHide()", 10)
}
function Init() 
{
    if(Netscape4) 
    {
        menu = document.D1
        menuW = menu.document.Width
        menu.left = menu.document.Width*-1+20 
        menu.onmouseover = menuOut
        menu.onmouseout = menuIn
	    menu.visibility = "visible"
    }
    else if(IE4) 
    {
        menu = dviID.style
        menuW = dviID.offsetWidth
        dviID.style.pixelLeft = dviID.offsetWidth*-1+20
        dviID.onmouseover = fireOver
        dviID.onmouseout = fireOut
        dviID.style.visibility = "visible"
    }
}
</script>

</head>
<body onload="Init()" >
<div id="dviID" style="left: 0px; top: 0px" >
<table border="0" width="150" height ="500">
<TBODY>
  <tr>
    <td  valign =middle  bgColor="#2e8b57" rowSpan="2" style="width: 13px"><font color="#00ff99">
    菜<br>
    單
    欄</font></td>
    <td colspan="2" valign =middle rowspan="2" > <ul>
    <br /><br />
      <li><a href="javascript:void(0)">.NET範例寶典</a></li>  
      <li><a href="javascript:void(0)">C#技術大全</a></li>
      <li><a href="javascript:void(0)">C#案例精選</a></li> 
      <li><a href="javascript:void(0)">C#範例寶典</a></li>
      <li><a href="javascript:void(0)">C#完全手冊</a></li>
      <li><a href="javascript:void(0)">.NET 2.0圖書</a></li>
    </ul>
    </td>
  </tr>
  <tr>
  </tr>
</TBODY>
</table>
</div>
</body>

</html>
