<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>出現網頁模式交談視窗</title>
   <script language="javascript">
		  function a(goodsClass)
		  {
		  	parent.window.returnValue=goodsClass;
			window.close();
		  }
	 </script>
   </head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table>
            <tr>
                <td style="width: 249px; height: 35px;">
                    <span style="font-size: 16pt; font-family: 楷體_utf-8"><strong style="color: red">選取商品類別別</strong></span></td>
            </tr>
            <tr>
                <td style="width: 249px">
        <asp:DataList ID="DataList1" runat="server" Font-Size="9pt" RepeatColumns="2" RepeatDirection="Horizontal" Width="232px">
            <ItemTemplate>
                <table style="width: 104px" border="2">
                    <tr>
                        <td style="width: 100px; height: 17px;" align="center"><a href="#" style="text-decoration: none;" onclick="a('<%#Eval("goodsClass") %>')"><%#Eval("goodsClass")%></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></td>
            </tr>
        </table>
        <br />
        &nbsp;</div>
    </form>
</body>
</html>






























