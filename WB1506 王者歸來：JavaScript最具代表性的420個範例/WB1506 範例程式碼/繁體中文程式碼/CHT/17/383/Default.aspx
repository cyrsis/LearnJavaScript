<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>出現網頁模式交談視窗</title>
    <script language="javascript">
	function opendialog()
	{
	var someValue=window.showModalDialog("Default2.aspx","","dialogWidth=300px;dialogHeight=250px;status=no;help=no;scrollbars=no")
	document.form1.TextBox1.value=someValue;
	}
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 311px; height: 51px;  font-size :9pt" border="1" bordercolor="#000000">
            <tr>
                <td colspan="2" align="center">
                    商品進貨管理</td>
            </tr>
            <tr>
                <td style="width: 64px">
                    類別別名：</td>
                <td style="color: red">
                    <asp:TextBox ID="TextBox1" runat="server" onClick="opendialog()" Width="148px">點擊這裡,選取類別別名</asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 64px">
                    商品名：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="148px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 64px">
                    商品數量：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="只能輸入整數" ValidationExpression="(0|[1-9][0-9]*)$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 64px">
                    商品描述：</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="106px" TextMode="MultiLine" Width="169px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="顯示" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
