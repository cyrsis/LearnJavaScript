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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "" && this.TextBox2.Text != "" && this.TextBox3.Text != "" && this.TextBox4.Text != "")
        {
            this.Label1.Visible = true;
            this.Label1.Text = "類別別名為："+this.TextBox1.Text +"<br>";
            this.Label1.Text += "商品名為：" + this.TextBox2.Text + "<br>";
            this.Label1.Text += "商品數量：" + this.TextBox3.Text + "<br>";
            this.Label1.Text += "商品描述：" + this.TextBox4.Text;           
        }
      
    }
}
