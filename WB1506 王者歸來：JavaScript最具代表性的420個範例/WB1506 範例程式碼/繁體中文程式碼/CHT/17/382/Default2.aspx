<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>關閉出現視窗更新父視窗</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 269px; height: 20px; font-size :9pt">
            <tr>
                <td style="font-size: 12pt; color: blue" align="center" colspan="2">
                    加入商品訊息</td>
            </tr>
            <tr>
                <td>
                    商品類別別名：</td>
                <td style="width: 152px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 10px">
                    商品名：</td>
                <td style=" height: 10px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 10px">
                    商品單位：</td>
                <td style="height: 10px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 10px">
                    商品價格：</td>
                <td style="height: 10px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 10px">
                    商品描述：</td>
                <td style="height: 10px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 10px">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="加入" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
