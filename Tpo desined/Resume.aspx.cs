using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;

public partial class Resume : System.Web.UI.Page
{


    string connStr = ConfigurationManager.ConnectionStrings["registerConnectionString2"].ConnectionString;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"].ToString();

        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        com = new SqlCommand("select fname,mnane,lname,mob,email from std_personal  where id = '" + Label1.Text.Trim() + "'", con);

        SqlDataReader dr1 = com.ExecuteReader();

        if (dr1.HasRows)
        {
            dr1.Read();
            fname.Text = dr1["fname"].ToString();
            lname.Text = dr1["lname"].ToString();
            mob.Text = dr1["mob"].ToString();
            mail.Text = dr1["email"].ToString();
            con.Close();
            dr1.Dispose();
        }


        con.Open();
        com = new SqlCommand("select x_month,x_year,xii_month,xii_year,x_per,xii_per from std_academic where id='" + Label1.Text.Trim() + "'", con);

        SqlDataReader dr2 = com.ExecuteReader();
        if (dr2.HasRows)
        {
            dr2.Read();
            hscmonth.Text = dr2["x_month"].ToString();
            hscyear.Text = dr2["x_year"].ToString();
            sscmonth.Text = dr2["xii_month"].ToString();
            sscyear.Text = dr2["xii_year"].ToString();
            hscper.Text = dr2["x_per"].ToString();
            sscper.Text = dr2["xii_per"].ToString();
            con.Close();
            dr2.Dispose();
        }

        con.Open();
        com = new SqlCommand("select * from std_Sem1 where id='" + Label1.Text.Trim() + "'", con);
        SqlDataReader dr3 = com.ExecuteReader();
        if (dr3.HasRows)
        {
            dr3.Read();
            Be_year.Text = dr3["VIII_year"].ToString();
            BE_month.Text = dr3["VIII_month"].ToString();
            sem8marks.Text = dr3["VIII_marks"].ToString();
            sem8total.Text = dr3["VIII_total"].ToString();
            sem7marks.Text = dr3["VII_marks"].ToString();
            sem7total.Text = dr3["VII_total"].ToString();
            sem6marks.Text = dr3["VI_marks"].ToString();
            sem6total.Text = dr3["VI_total"].ToString();
            sem5marks.Text = dr3["V_marks"].ToString();
            sem5total.Text = dr3["V_total"].ToString();
            sem4marks.Text = dr3["IV_marks"].ToString();
            sem4total.Text = dr3["IV_total"].ToString();
            sem3marks.Text = dr3["III_marks"].ToString();
            sem3total.Text = dr3["III_total"].ToString();
            secondmarks.Text = dr3["II_marks"].ToString();
            secondtotal.Text = dr3["II_total"].ToString();
            firstmarks.Text = dr3["VIII_marks"].ToString();
            firsttotal.Text = dr3["VIII_total"].ToString();
            temonth.Text = dr3["VI_month"].ToString();
            semonth.Text = dr3["IV_month"].ToString();
            Femonth.Text = dr3["II_month"].ToString();
            teyear.Text = dr3["VI_year"].ToString();
            seyear.Text = dr3["IV_year"].ToString();
            feyear.Text = dr3["II_year"].ToString();
            Beagg.Text = dr3["Agg"].ToString();
            con.Close();
            dr3.Dispose();
            Double a = Convert.ToDouble(Beagg.Text);
            if (a >= 60 )
            {
                if(a < 75)

                classab.Text = "First Class";

            }
            else if (a < 60)
            {
                classab.Text = "Second Class";
            }
            else
            {
                classab.Text = "Distinction Class";
            }
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from proj_detail where id='" + Label1.Text + "'", con);
        SqlDataReader dr4 = cmd.ExecuteReader();
        if (dr4.HasRows)
        {
            dr4.Read();
            career.Text = dr4["careerobj"].ToString();
            prj_title.Text = dr4["BE_proj_title"].ToString();
            Role.Text = dr4["BE_proj_role"].ToString();
            descp.Text = dr4["BE_proj_desc"].ToString();
            operatingsys.Text = dr4["OS"].ToString();
            Lang.Text = dr4["languages"].ToString();
            tools.Text = dr4["tools"].ToString();
            database.Text = dr4["Dblang"].ToString();
            interest.Text = dr4["interest"].ToString();
            con.Close();
            dr4.Dispose();
        }
          con.Open();
          SqlCommand cmd1 = new SqlCommand("select * from std_personal where id='" + Label1.Text + "'", con);
          SqlDataReader d = cmd1.ExecuteReader();
          if (d.HasRows)
          {
              d.Read();
              dob.Text = d["dob"].ToString();
              gender.Text = d["gender"].ToString();
              address.Text = d["address"].ToString();
              Image2.ImageUrl ="~/Images/"+d["photo"].ToString();
          }
          con.Close();


    }


    protected string Values;
    protected void Post(object sender, EventArgs e)
    {
        string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        this.Values = serializer.Serialize(textboxValues);
        string message = "";
        foreach (string textboxValue in textboxValues)
        {
            message += textboxValue + "\\n";
        }
        

    }
}



















































            



       