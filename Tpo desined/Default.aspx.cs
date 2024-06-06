using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    public int time_second;
    public int time_min;
    public static int i = 0, j = 0, k = 1;
    public static int wrong;
    public static int right;
    public static string[] b = new string[20];
    public static string[] c = new string[20];
    public static string[] a = new string[20];
    Random rd = new Random();
    SqlConnection conn = new SqlConnection("Data Source=198.71.225.145;Initial Catalog=apptitude;User ID=rupeshpawar;Password=ranjeet18");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label13.Text = Request.QueryString["id"].ToString();
        Label7.Text = Session["name"].ToString();


        if (!IsPostBack)
        {
            Timer1.Enabled = false;
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            RadioButton4.Visible = false;
            Label2.Visible = false;
            Button6.Visible = false;
            Label8.Text = "0";
            Label9.Text = "0";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        k = 1;
        time_second = 0;
        time_min = 0;
        lblmin1.Text = "0";
        lblsec1.Text = "0";
        lblsec2.Visible = true;
        Button6.Visible = false;
        Timer1.Enabled = true;
        Label8.Text = "0";
        Label9.Text = "0";
        Label2.Visible = true;
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
        RadioButton4.Visible = true;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        wrong = 0;
        right = 0;
        j = 1;
        i = rd.Next(1, 20);


        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from [" + Label7.Text + "] where id='" + i + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        Label30.Text = j.ToString();
        if (dr.HasRows)
        {
            dr.Read();
            Label2.Text = dr["quest"].ToString();
            b[k] = dr["quest"].ToString();
            RadioButton1.Text = dr["opta"].ToString();
            RadioButton2.Text = dr["optb"].ToString();
            RadioButton3.Text = dr["optc"].ToString();
            RadioButton4.Text = dr["optd"].ToString();
            c[k] = dr["ans"].ToString();
            conn.Close();

        }





    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

        time_second = int.Parse(lblsec1.Text);
        time_second = time_second + 1;
        lblsec1.Text = time_second.ToString();
        if (lblsec1.Text == "10")
        {
            lblsec2.Visible = false;
        }
        if (lblmin1.Text == "10")
        {
            lblmin2.Visible = true;
        }

        if (lblsec1.Text == "60")
        {
            lblsec2.Visible = true;
            time_min = int.Parse(lblmin1.Text);
            lblsec1.Text = "0";
            time_min = time_min + 1;
            lblmin1.Text = time_min.ToString();
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Timer1.Enabled = false;

    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        time_second = 0;
        time_min = 0;
        lblmin1.Text = "0";
        lblsec1.Text = "0";
        lblsec2.Visible = true;
        Timer1.Enabled = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int l = Convert.ToInt16(lblmin1.Text);
        if (l >= 3)
        {
            Button6.Visible = true;
            Label2.Visible = false;
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            RadioButton4.Visible = false;
            Timer1.Enabled = false;

        }
        else
        {
            if (j < 10)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select ans from [" + Label7.Text + "] where id='" + i + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Label4.Text = dr["ans"].ToString();
                    conn.Close();
                }
                if (a[i] == Label4.Text)
                {
                    right++;

                }
                else
                {
                    wrong++;
                }
                conn.Close();
                j++;
                RadioButton4.Checked = false;
                RadioButton3.Checked = false;
                RadioButton2.Checked = false;
                RadioButton1.Checked = false;
                i = rd.Next(1, 20);
                k++;
                Label30.Text = j.ToString();
                conn.Open();
                SqlCommand cmd1 = new SqlCommand("Select * from [" + Label7.Text + "] where id='" + i + "'", conn);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    dr1.Read();
                    Label2.Text = dr1["quest"].ToString();
                    b[k] = dr1["quest"].ToString();
                    RadioButton1.Text = dr1["opta"].ToString();
                    RadioButton2.Text = dr1["optb"].ToString();
                    RadioButton3.Text = dr1["optc"].ToString();
                    RadioButton4.Text = dr1["optd"].ToString();
                    c[k] = dr1["ans"].ToString();
                    conn.Close();


                }
            }
            else
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select ans from [" + Label7.Text + "] where id='" + i + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    Label4.Text = dr["ans"].ToString();
                    conn.Close();
                }
                if (a[i] == Label4.Text)
                {
                    right++;

                }
                else
                {
                    wrong++;
                }

                Button6.Visible = true;



            }
        }
    }



    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        a[i] = RadioButton1.Text;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        a[i] = RadioButton2.Text;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        a[i] = RadioButton3.Text;

    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        a[i] = RadioButton4.Text;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {


    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Timer1.Enabled = false;
        Label8.Text = right.ToString();
        Label9.Text = wrong.ToString();
        LinkButton1.Visible = true;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int l = 1;
        MultiView1.ActiveViewIndex = 2;

        Label5.Text = b[l];
        Label6.Text = c[l];
        Label10.Text = b[l + 1];
        Label11.Text = c[l + 1];
        Label12.Text = b[l + 2];
        Label14.Text = c[l + 2];
        Label15.Text = b[l + 3];
        Label16.Text = c[l + 3];
        Label17.Text = b[l + 4];
        Label18.Text = c[l + 4];
        Label19.Text = b[l + 5];
        Label20.Text = c[l + 5];
        Label21.Text = b[l + 6];
        Label22.Text = c[l + 6];
        Label23.Text = b[l + 7];
        Label24.Text = c[l + 7];
        Label25.Text = b[l + 8];
        Label26.Text = c[l + 8];
        Label27.Text = b[l + 9];
        Label28.Text = c[l + 9];






    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("aptitude.aspx?id=" + Label13.Text);
    }
}
