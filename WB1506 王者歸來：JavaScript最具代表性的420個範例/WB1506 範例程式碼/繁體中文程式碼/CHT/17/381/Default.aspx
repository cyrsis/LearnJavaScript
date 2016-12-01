<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>顯示商品訊息</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 278px; height: 32px; font-size :9pt" border="1" bordercolor="#000000" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td style="height: 21px; font-size: 12pt; color: blue;" align="center">
                    按兩下檢視商品訊息</td>
            </tr>
            <tr>
                <td style="height: 129px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames ="GoodsID" Height="96px" Width="269px" OnRowDataBound="GridView1_RowDataBound">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:BoundField DataField="GoodsID" HeaderText="商品號" > 
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="商品名" DataField ="GoodsName" >
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField> 
                        </Columns>
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
