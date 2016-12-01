using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/GoodsInfo.xml"));
            XmlNodeList nodes;
            XmlElement root = doc.DocumentElement;
            nodes = root.SelectNodes("descendant::Item[GoodsID='" + Request["id"] + "']");
            foreach (XmlNode node in nodes )
            {
                this.TextBox1.Text = node.ChildNodes[2].InnerText;
                this.TextBox2.Text = node.ChildNodes[3].InnerText;
                this.TextBox3.Text = node.ChildNodes[4].InnerText;
                this.TextBox4.Text = node.ChildNodes[5].InnerText;
               
            }    
      }
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Write("<script>window.close();</script>");
    }
}
