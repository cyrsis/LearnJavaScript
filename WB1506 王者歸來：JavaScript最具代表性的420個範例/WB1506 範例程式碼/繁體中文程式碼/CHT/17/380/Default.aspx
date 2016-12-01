<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>使用JavaScript指令稿出現交談視窗</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 252px; height: 99px; font-size :9pt" border="1" bordercolor="#009900"  >
            <tr>
                <td colspan="2" align="center">
                    會員登入</td>
            </tr>
            <tr>
                <td>
                    會員名：</td>
                <td style="width: 137px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    密 &nbsp;&nbsp; 碼：</td>
                <td style="width: 137px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" />
                </td>
            </tr>
        </table>
        &nbsp; &nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
