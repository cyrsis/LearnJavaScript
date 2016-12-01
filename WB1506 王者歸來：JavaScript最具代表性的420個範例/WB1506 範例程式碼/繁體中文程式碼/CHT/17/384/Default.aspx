<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>全螢幕顯示網頁</title>
     <style >
   body {margin-top:0px}
   </style>  
    <script language="JavaScript">
		  function a(someValue)
		  {
		  window.showModalDialog("Default2.aspx?TextName="+someValue,"","dialogWidth=300px;dialogHeight=250px;status=no;help=no;scrollbars=no")
		  }
	 </script>
	  <script>
        <!--
          function winopen(){
          var targeturl="default.aspx"
          newwin=window.open("","","scrollbars")
          if (document.all){
          newwin.moveTo(0,0)
          newwin.resizeTo(screen.width,screen.height)
          }
               
         newwin.location=targeturl
               
         }
         -->        
     </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align =center >
     <table height =784px width =760px >
     <tr>
     <td style="height: 5px" align="left" >
       <a href="#" onclick="winopen()"><span style="font-size: 9pt; color: red; text-decoration: none">全螢幕顯示</span></a>
     </td>
     </tr>
            <tr >
           
                <td width =760px   background ="images/網上購物商城頁面.jpg" style="height: 764px">
                </td>  
            </tr>
           <tr>
           <td>
            <A href="#" style="font-size: 9pt;text-decoration:none; color: black; " onclick="a('jkfs')"> 交款模式</A>│<A href="#"  style="font-size: 9pt;text-decoration:none; color: black;">退換貨原則</A>│<A href="#"  style="font-size: 9pt;text-decoration:none;color: black;">配送範圍</A>│<A href="#"  style="font-size: 9pt;text-decoration:none; color: black;">交易條款</A>│<A href="#"  style="font-size: 9pt;text-decoration:none; color: black;">保密協定</A>
           </td>
           </tr>
        </table>
    </div>
       
    </form>
</body>
</html>
