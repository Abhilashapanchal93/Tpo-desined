using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aptitude : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"].ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        string name = LinkButton6.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string name = LinkButton1.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id="+Label1.Text);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string name = LinkButton2.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string name = LinkButton3.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        string name = LinkButton4.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        string name = LinkButton5.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        string name = LinkButton7.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        string name = LinkButton8.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        string name = LinkButton9.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        string name = LinkButton10.Text;
        Session["name"] = name;
        Response.Redirect("Default.aspx?id=" + Label1.Text);
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentpanel.aspx?id=" + Label1.Text);
    }
}