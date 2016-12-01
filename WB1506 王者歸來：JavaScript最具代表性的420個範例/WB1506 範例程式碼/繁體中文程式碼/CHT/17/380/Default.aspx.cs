using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "" && this.TextBox2.Text != "")
        {
            if (this.TextBox1.Text.Trim() == "mr" && this.TextBox2.Text.Trim() == "mrsoft")
            {
                Response.Redirect("Default2.aspx");
            }
            else
            {
                Response.Write("<script>alert('您的輸入有誤，請核對後，重新輸入！')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('請輸入必要的訊息！')</script>");
        }
    }
}
