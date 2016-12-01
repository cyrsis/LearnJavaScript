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

public partial class Default2 : System.Web.UI.Page
{
    public static string path;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["sName"]!= null)
        {
            path = Server.MapPath("~\\App_Data\\" + Session["sName"].ToString() + ".Txt");
        }
        else
        { 
            string sName = Page.Request.QueryString["TextName"].ToString();
            Session["sName"] = sName;
            path = Server.MapPath("~\\App_Data\\" + Session["sName"].ToString() + ".Txt");
        }
            System.IO.StreamReader reader = new System.IO.StreamReader(path, System.Text.Encoding.Default);
            this.labHelp.Text = reader.ReadLine();
            this.txtRead.Text = reader.ReadToEnd();
            reader.Close();  
           
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();</script>");
    }
}
