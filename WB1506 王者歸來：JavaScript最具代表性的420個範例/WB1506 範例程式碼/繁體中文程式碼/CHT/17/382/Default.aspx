<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>關閉出現視窗更新父視窗</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 244px; height: 46px; font-size :9pt">
            <tr>
                <td colspan="1" align="center" style="font-size: 12pt; color: blue">
                    加入商品訊息</td>
            </tr>
            <tr>
                <td style="width: 86px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
                        Height="144px" Width="390px" >
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="GoodsClass" HeaderText="商品類別別" />
                            <asp:BoundField DataField="GoodsName" HeaderText="商品名" />
                            <asp:BoundField DataField="Unit" HeaderText="商品單位" />
                            <asp:BoundField DataField="Price" HeaderText="商品價格" />
                            <asp:BoundField DataField="Description" HeaderText="商品描述" />
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 86px">
                   <a href="#" onClick="window.open('Default2.aspx','','width=300,height=250');"><strong>
        <span style="font-size: 9pt;text-decoration:none" >加入資料</span></strong></a>
</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
