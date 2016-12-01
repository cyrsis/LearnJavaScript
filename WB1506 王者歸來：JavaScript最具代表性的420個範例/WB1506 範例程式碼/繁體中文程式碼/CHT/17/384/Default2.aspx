<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>全螢幕顯示網頁</title>
      <script>
        <!--
          function winopen(){
          var targeturl="default2.aspx"
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
<body >
    <form id="form1" runat="server">
    <div align =center>
    <table align =center >
<tr>
<td align=left>
  <a href="#" onclick="winopen()"><span style="font-size: 9pt; color: red; text-decoration: none">全螢幕顯示</span></a>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;
    <asp:Label id="labHelp" style="Z-INDEX: 102; LEFT: 344px;" runat="server"
					Width="188px" Font-Size="9pt" ForeColor="Black"></asp:Label><br /><br />
				<asp:TextBox id="txtRead" style="Z-INDEX: 103; LEFT: 344px;" runat="server"
			Width="530px" Height="355px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
    <br />
<asp:Button ID="Button1" runat="server" Text="復原" OnClick="Button1_Click" />
</td>
</tr>
</table>
    
    </div>
        
    </form>
</body>
</html>
