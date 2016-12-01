<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>顯示商品詳細訊息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 284px; height: 53px; font-size :9pt">
            <tr>
                <td colspan="2" align="center">
                    顯示商品詳細訊息</td>
            </tr>
            <tr>
                <td>
                    商品名：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    商品單位：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    商品價格：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    商品描述：</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="關閉" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
