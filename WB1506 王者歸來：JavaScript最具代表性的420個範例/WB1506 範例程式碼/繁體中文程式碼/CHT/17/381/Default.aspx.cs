using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/GoodsInfo.xml"));
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();
        
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("ondblclick", "window.open('Default2.aspx?id=" + e.Row.Cells[0].Text + "','','width=300,height=230')");//按兩下行開啟新頁
        }

    }
}
