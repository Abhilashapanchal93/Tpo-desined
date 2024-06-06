using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using ASPSnippets.SmsAPI;

public partial class adminpanel : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["registerConnectionString5"].ConnectionString;
    SqlCommand com;
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=register;Integrated Security=True;Pooling=False");


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataSource1.InsertParameters["Comp_name"].DefaultValue = TextBox1.Text;
        SqlDataSource1.InsertParameters["Comp_info"].DefaultValue = TextBox2.Text;
        SqlDataSource1.InsertParameters["Comp_Req"].DefaultValue = TextBox3.Text;
        SqlDataSource1.InsertParameters["Comp_10th_crit"].DefaultValue = TextBox5.Text;
        SqlDataSource1.InsertParameters["Comp_12th_crit"].DefaultValue = TextBox6.Text;
        SqlDataSource1.InsertParameters["Comp_dip_crit"].DefaultValue = TextBox7.Text;
        SqlDataSource1.InsertParameters["Comp_be_agg"].DefaultValue = TextBox9.Text;
        SqlDataSource1.InsertParameters["Comp_Location"].DefaultValue = TextBox4.Text;
        SqlDataSource1.InsertParameters["Comp_pkg"].DefaultValue = TextBox8.Text;
        SqlDataSource1.InsertParameters["year"].DefaultValue = TextBox10.Text;
        SqlDataSource1.InsertParameters["time"].DefaultValue = TextBox15.Text;
        SqlDataSource1.InsertParameters["Date"].DefaultValue = TextBox16.Text;
        SqlDataSource1.Insert();
        Response.Write("<script>alert('Inserted Successfully')</script>");
        TextBox1.Text = "";


    }



    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connStr);
        conn.Open();
        com = new SqlCommand("SELECT distinct std_personal.id,std_personal.fname, std_personal.mnane, std_personal.lname, std_personal.dept, std_personal.mob, std_personal.email FROM std_personal CROSS JOIN std_Sem1 CROSS JOIN std_academic WHERE std_academic.x_per >= '" + TextBox11.Text + "' and std_academic.xii_per >= '" + TextBox12.Text + "' and std_Sem1.Agg>='" + TextBox14.Text + "' and std_personal.dept='" + DropDownList5.SelectedValue.ToString() + "' and std_Sem1.placed='unplaced'", con);
        DataTable dt = new DataTable();
        SqlDataAdapter dr = new SqlDataAdapter(com);
        dr.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        conn.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox CheckBox1 = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (CheckBox1.Checked)
            {
                string name = GridView1.Rows[i].Cells[6].Text;
                MailMessage m = new MailMessage();
                SmtpClient sc = new SmtpClient();

                try
                {
                    m.From = new MailAddress("Dmcetposample@gmail.com", "DMCE TPO");
                    m.To.Add(new MailAddress(name));

                    //similarly BCC
                    m.Subject = "DMCE-TPO"; m.IsBodyHtml = true;
                    m.Body = DropDownList4.SelectedValue.ToString()
                        +"<br>"+"a pool campus has been  organised by our college for B.E fresher"+DropDownList7.SelectedValue.ToString();
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


    }



    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }







    protected void Button4_Click(object sender, EventArgs e)
    {
        conn.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select COUNT(place_company)as Quan,place_year from placement where place_year='" + DropDownList1.SelectedValue.ToString() + "'   group by place_company,place_year", conn);

        da.Fill(ds, "placement");
        if (ds.Tables["placement"].Rows.Count > 1)
        {
            Chart1.DataSource = ds;
            Chart1.Series[0].XValueMember = "place_year";
            Chart1.ChartAreas[0].AxisX.Title = " place_year";
            Chart1.ChartAreas[0].AxisY.Title = "place company";
            Chart1.Series[0].YValueMembers = "Quan";
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        conn.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select COUNT(place_company)as Quan,place_year from placement where place_branch='" + DropDownList2.SelectedValue.ToString() + "'   group by place_company,place_year", conn);

        da.Fill(ds, "placement");
        if (ds.Tables["placement"].Rows.Count > 1)
        {
            Chart1.DataSource = ds;
            Chart1.Series[0].XValueMember = "place_year";
            Chart1.ChartAreas[0].AxisX.Title = " place_year";
            Chart1.ChartAreas[0].AxisY.Title = "place company";
            Chart1.Series[0].YValueMembers = "Quan";
        }


    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        conn.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select COUNT(place_company)as Quan,place_year from placement where place_company='" + DropDownList3.SelectedValue.ToString() + "'   group by place_company,place_year", conn);

        da.Fill(ds, "placement");
        if (ds.Tables["placement"].Rows.Count > 1)
        {
            Chart1.DataSource = ds;
            Chart1.Series[0].XValueMember = "place_year";
            Chart1.ChartAreas[0].AxisX.Title = " place_year";
            Chart1.ChartAreas[0].AxisY.Title = "place company";
            Chart1.Series[0].YValueMembers = "Quan";
          
        }

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Comp_10th_crit,Comp_12th_crit,Comp_dip_crit,Comp_be_agg from Company where Comp_name='" + DropDownList4.SelectedValue.ToString() + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            TextBox11.Text = dr["Comp_10th_crit"].ToString();
            TextBox12.Text = dr["Comp_12th_crit"].ToString();
            TextBox13.Text = dr["Comp_dip_crit"].ToString();
            TextBox14.Text = dr["Comp_be_agg"].ToString();
            conn.Close();
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox CheckBox1 = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (CheckBox1.Checked)
            {
                string mobno = GridView1.Rows[i].Cells[5].Text;
                string msg = "THIS IS TO INFORM YOU THAT YOU HAVE BEEN CALLED FOR INTERVIEW ROUND FOR"+DropDownList4.SelectedValue.ToString();
                string username = "mayursutar00@gmail.com";
                string password = "jtdt0";



                using (System.Net.WebClient client = new System.Net.WebClient())
                {
                    string url = "http://smsc.vianett.no/v3/send.ashx?" + "src=" + mobno + "&" +
                        "dst=" + mobno + "&" + "msg=" + System.Web.HttpUtility.UrlEncode(msg, System.Text.Encoding.GetEncoding("ISO-8859-1")) + "&" +
                        "username=" + System.Web.HttpUtility.UrlEncode(username) +
                            "&" + "password=" + System.Web.HttpUtility.UrlEncode(password);

                    string result = client.DownloadString(url);
                    if (result.Contains("OK"))
                    {
                        Response.Write("<script> <alert>('send msg')</script>");
                    }
                    else
                    {
                        Response.Write("<script> <alert>('no send msg')</script>");
                    }
                }
            }
        }
    }
 
    protected void Button8_Click1(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox CheckBox1 = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (CheckBox1.Checked)
            {
                string plac_name = GridView1.Rows[i].Cells[1].Text;
                string plac_mname = GridView1.Rows[i].Cells[2].Text;
                string plac_lname = GridView1.Rows[i].Cells[3].Text;
                string ID=GridView1.Rows[i].Cells[7].Text;

                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into placement(place_name,place_mname,place_lname,place_company,place_year,place_branch) values(@place_name,@place_mname,@place_lname,@place_company,@place_year,@place_branch)", conn);
                cmd.Parameters.AddWithValue("@place_name", plac_name);
                cmd.Parameters.AddWithValue("@place_mname", plac_mname);
                cmd.Parameters.AddWithValue("@place_lname", plac_lname);
                cmd.Parameters.AddWithValue("@place_company", DropDownList4.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@place_year", DropDownList7.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@place_branch", DropDownList5.SelectedValue.ToString());
                cmd.ExecuteNonQuery();
                conn.Close();
                conn.Open();
                SqlCommand cmd1 = new SqlCommand("update std_Sem1 set placed=@placed where id='" + ID + "'", conn);
                cmd1.Parameters.AddWithValue("@placed", "placed");
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script> alert('inserted')</script>");

            }



        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatepanel.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
 
        conn.Open();
        SqlCommand com = new SqlCommand("Select * from placement where place_branch ='" + DropDownList6.SelectedValue.ToString() + "' and place_year='"+ DropDownList8.SelectedValue.ToString()+"'", conn);
        DataTable dt = new DataTable();
        SqlDataAdapter dr = new SqlDataAdapter(com);
        dr.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        conn.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
}