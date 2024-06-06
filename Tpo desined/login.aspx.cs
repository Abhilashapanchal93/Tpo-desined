using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=register;Integrated Security=True;Pooling=False");
           
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (username.Text == "Admin" && password.Text == "Admin")
        {
            Response.Redirect("adminpanel.aspx");
        }
        else
        {
             conn.Open();
            string commandString = "Select id from std_personal where email=@email and pass=@pass";
            SqlCommand sqlCmd = new SqlCommand(commandString, conn);
            sqlCmd.Parameters.AddWithValue("@email", username.Text);
            sqlCmd.Parameters.AddWithValue("@pass", password.Text);
            sqlCmd.Parameters.AddWithValue("@id", Label3.Text);
            SqlDataReader dr5 = sqlCmd.ExecuteReader();
            if (dr5.HasRows)
            {
                dr5.Read();
                Label3.Text = dr5["id"].ToString();
                 Response.Redirect("~/studentpanel.aspx?id="+Label3.Text);
            }
            Response.Write("<script> alert('invalid password')</script>");
            username.Text = "";
            username.Focus();
            dr5.Close();
            conn.Close();
        }





            
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("register1.aspx");
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
      
        MultiView1.ActiveViewIndex = 0;
    }
 
    protected void Button3_Click1(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select pass from std_personal where email ='" + TextBox1.Text + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label5.Text = dr["pass"].ToString();
        }
        conn.Close();
        MailMessage m = new MailMessage();
                SmtpClient sc = new SmtpClient();
        try
        {
            m.From = new MailAddress("Dmcetposample@gmail.com", "DMCE TPO");
            m.To.Add(new MailAddress(TextBox1.Text));

            //similarly BCC
            m.Subject = "Forget Password"; m.IsBodyHtml = true; m.Body = "Your password is["+Label5.Text+"]  please change your password";
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.Credentials = new System.Net.NetworkCredential("Dmcetposample@gmail.com", "dmcetpo4");
            sc.EnableSsl = true;
            sc.Send(m);
            Response.Write("<script>alert('mail send')</script>");
        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('not sent mail')</script>");
        }

    }
}