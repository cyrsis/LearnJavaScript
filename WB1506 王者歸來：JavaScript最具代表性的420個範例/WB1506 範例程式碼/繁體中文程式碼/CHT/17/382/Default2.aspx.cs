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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument doc1 = new XmlDocument();
        doc1.Load(Server.MapPath("~/GoodsInfo.xml"));
        XmlNode newNode1;
        XmlNode newNode2;
        newNode1 = doc1.CreateElement("Item");
        newNode2 = doc1.CreateElement("GoodsClass");
        newNode2.InnerText = TextBox1.Text;
        newNode1.AppendChild(newNode2);
        newNode2 = doc1.CreateElement("GoodsName");
        newNode2.InnerText = TextBox2.Text;
        newNode1.AppendChild(newNode2);
        newNode2 = doc1.CreateElement("Unit");
        newNode2.InnerText = TextBox3.Text;
        newNode1.AppendChild(newNode2);
        newNode2 = doc1.CreateElement("Price");
        newNode2.InnerText = TextBox4.Text;
        newNode1.AppendChild(newNode2);
        newNode2 = doc1.CreateElement("Description");
        newNode2.InnerText = TextBox5.Text;
        newNode1.AppendChild(newNode2);
        doc1.DocumentElement.AppendChild(newNode1);
        doc1.Save(Server.MapPath("~/GoodsInfo.xml"));
        Response.Write("<script language=javascript>alert('加入成功！');opener.location.reload();window.close();</script>");
    }
}
