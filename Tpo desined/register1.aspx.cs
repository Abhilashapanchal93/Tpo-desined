using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class register1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=register;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    


    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList6.SelectedItem.Text == "Diploma")
        {
            TextBox17.Visible = false;
            TextBox18.Visible = false;
            TextBox19.Visible = false;
            TextBox20.Visible = false;
            TextBox21.Visible = false;
            TextBox22.Visible = false;
            TextBox23.Visible = false;
            TextBox24.Visible = false;
            TextBox25.Visible = false;
            TextBox26.Visible = false;
        }
        else
            if (DropDownList6.SelectedItem.Text == "12th Pass")
            {
                TextBox17.Visible = true;
                TextBox18.Visible = true;
                TextBox19.Visible = true;
                TextBox20.Visible = true;
                TextBox21.Visible = true;
                TextBox22.Visible = true;
                TextBox23.Visible = true;
                TextBox24.Visible = true;
                TextBox25.Visible = true;
                TextBox26.Visible = true;
            }
    }





    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "" || TextBox7.Text == "" ||  (TextBox7.Text != TextBox60.Text))
        {
            Response.Write("<script>alert('Fill the textbox')</script>");
        }
           else
            {
                SqlDataSource1.InsertParameters["fname"].DefaultValue = TextBox1.Text;
                SqlDataSource1.InsertParameters["mnane"].DefaultValue = TextBox2.Text;
                SqlDataSource1.InsertParameters["lname"].DefaultValue = TextBox3.Text;
                SqlDataSource1.InsertParameters["dob"].DefaultValue = TextBox61.Text;
                SqlDataSource1.InsertParameters["gender"].DefaultValue = DropDownList1.SelectedValue.ToString();
                SqlDataSource1.InsertParameters["sid"].DefaultValue = TextBox4.Text;
                SqlDataSource1.InsertParameters["dept"].DefaultValue = DropDownList2.SelectedValue.ToString();
                SqlDataSource1.InsertParameters["mob"].DefaultValue = TextBox5.Text;
                SqlDataSource1.InsertParameters["email"].DefaultValue = TextBox6.Text;
                SqlDataSource1.InsertParameters["pass"].DefaultValue = TextBox7.Text;
                SqlDataSource1.InsertParameters["address"].DefaultValue = TextBox62.Text;

                SqlDataSource1.Insert();

                SqlDataSource2.InsertParameters["x_board"].DefaultValue = DropDownList3.SelectedValue.ToString();
                SqlDataSource2.InsertParameters["x_month"].DefaultValue = TextBox8.Text;
                SqlDataSource2.InsertParameters["x_year"].DefaultValue = TextBox9.Text;
                SqlDataSource2.InsertParameters["x_per"].DefaultValue = TextBox10.Text;
                SqlDataSource2.InsertParameters["xii_board"].DefaultValue = DropDownList4.SelectedValue.ToString();
                SqlDataSource2.InsertParameters["xii_month"].DefaultValue = TextBox11.Text;
                SqlDataSource2.InsertParameters["xii_year"].DefaultValue = TextBox12.Text;
                SqlDataSource2.InsertParameters["xii_per"].DefaultValue = TextBox13.Text;
                SqlDataSource2.InsertParameters["d_board"].DefaultValue = DropDownList5.SelectedValue.ToString();
                SqlDataSource2.InsertParameters["d_month"].DefaultValue = TextBox14.Text;
                SqlDataSource2.InsertParameters["d_year"].DefaultValue = TextBox15.Text;
                SqlDataSource2.InsertParameters["d_per"].DefaultValue = TextBox16.Text;
                SqlDataSource2.Insert();
                SqlDataSource3.InsertParameters["I_year"].DefaultValue = TextBox17.Text;
                SqlDataSource3.InsertParameters["I_month"].DefaultValue = TextBox18.Text;

                SqlDataSource3.InsertParameters["I_total"].DefaultValue = TextBox19.Text;
                SqlDataSource3.InsertParameters["I_marks"].DefaultValue = TextBox20.Text;
                SqlDataSource3.InsertParameters["I_CGPA"].DefaultValue = TextBox21.Text;
                SqlDataSource3.InsertParameters["II_year"].DefaultValue = TextBox22.Text;
                SqlDataSource3.InsertParameters["II_month"].DefaultValue = TextBox23.Text;

                SqlDataSource3.InsertParameters["II_total"].DefaultValue = TextBox24.Text;
                SqlDataSource3.InsertParameters["II_marks"].DefaultValue = TextBox25.Text;
                SqlDataSource3.InsertParameters["II_CGPA"].DefaultValue = TextBox26.Text;
                SqlDataSource3.InsertParameters["III_month"].DefaultValue = TextBox28.Text;
                SqlDataSource3.InsertParameters["III_year"].DefaultValue = TextBox27.Text;
                SqlDataSource3.InsertParameters["III_total"].DefaultValue = TextBox29.Text;
                SqlDataSource3.InsertParameters["III_marks"].DefaultValue = TextBox30.Text;
                SqlDataSource3.InsertParameters["III_CGPA"].DefaultValue = TextBox31.Text;
                SqlDataSource3.InsertParameters["IV_month"].DefaultValue = TextBox33.Text;
                SqlDataSource3.InsertParameters["IV_year"].DefaultValue = TextBox32.Text;
                SqlDataSource3.InsertParameters["IV_total"].DefaultValue = TextBox34.Text;
                SqlDataSource3.InsertParameters["IV_marks"].DefaultValue = TextBox35.Text;
                SqlDataSource3.InsertParameters["IV_CGPA"].DefaultValue = TextBox36.Text;
                SqlDataSource3.InsertParameters["V_month"].DefaultValue = TextBox38.Text;
                SqlDataSource3.InsertParameters["V_year"].DefaultValue = TextBox37.Text;
                SqlDataSource3.InsertParameters["V_total"].DefaultValue = TextBox39.Text;
                SqlDataSource3.InsertParameters["V_marks"].DefaultValue = TextBox40.Text;
                SqlDataSource3.InsertParameters["V_CGPA"].DefaultValue = TextBox41.Text;
                SqlDataSource3.InsertParameters["VI_month"].DefaultValue = TextBox43.Text;
                SqlDataSource3.InsertParameters["VI_year"].DefaultValue = TextBox42.Text;
                SqlDataSource3.InsertParameters["VI_total"].DefaultValue = TextBox44.Text;
                SqlDataSource3.InsertParameters["VI_marks"].DefaultValue = TextBox45.Text;
                SqlDataSource3.InsertParameters["VI_CGPA"].DefaultValue = TextBox46.Text;
                SqlDataSource3.InsertParameters["VII_month"].DefaultValue = TextBox48.Text;
                SqlDataSource3.InsertParameters["VII_year"].DefaultValue = TextBox47.Text;
                SqlDataSource3.InsertParameters["VII_total"].DefaultValue = TextBox49.Text;
                SqlDataSource3.InsertParameters["VII_marks"].DefaultValue = TextBox50.Text;
                SqlDataSource3.InsertParameters["VII_CGPA"].DefaultValue = TextBox51.Text;
                SqlDataSource3.InsertParameters["VIII_month"].DefaultValue = TextBox53.Text;
                SqlDataSource3.InsertParameters["VIII_year"].DefaultValue = TextBox52.Text;
                SqlDataSource3.InsertParameters["VIII_total"].DefaultValue = TextBox54.Text;
                SqlDataSource3.InsertParameters["VIII_marks"].DefaultValue = TextBox55.Text;
                SqlDataSource3.InsertParameters["VIII_CGPA"].DefaultValue = TextBox56.Text;
                SqlDataSource3.InsertParameters["Agg"].DefaultValue = TextBox59.Text;
                SqlDataSource3.InsertParameters["Class"].DefaultValue = DropDownList6.SelectedValue.ToString();
                SqlDataSource3.InsertParameters["live_kt"].DefaultValue = TextBox57.Text;
                SqlDataSource3.InsertParameters["dead_kt"].DefaultValue = TextBox58.Text;
                SqlDataSource3.Insert();
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into proj_detail(BE_proj_title,BE_proj_desc,BE_proj_role,OS,languages,tools,Dblang,careerobj) values(@BE_proj_title,@BE_proj_desc,@BE_proj_role,@OS,@languages,@tools,@Dblang,@careerobj)", conn);
                cmd.Parameters.AddWithValue("BE_proj_title", "");
                cmd.Parameters.AddWithValue("BE_proj_desc", "");
                cmd.Parameters.AddWithValue("BE_proj_role", "");
                cmd.Parameters.AddWithValue("OS", "");
                cmd.Parameters.AddWithValue("languages", "");
                cmd.Parameters.AddWithValue("tools", "");
                cmd.Parameters.AddWithValue("Dblang", "");
                cmd.Parameters.AddWithValue("careerobj", "");
                cmd.ExecuteNonQuery();
                conn.Close();


                Response.Redirect("login.aspx");
           
                
            }

        
       
        }
    
   






    protected void Button2_Click1(object sender, EventArgs e)
    {
        double sum;
        sum = Convert.ToDouble(TextBox20.Text) + Convert.ToDouble(TextBox25.Text) + Convert.ToDouble(TextBox30.Text) + Convert.ToDouble(TextBox35.Text) + Convert.ToDouble(TextBox40.Text) + Convert.ToDouble(TextBox45.Text) + Convert.ToDouble(TextBox50.Text) + Convert.ToDouble(TextBox55.Text);
        double sum2;
        sum2 = Convert.ToDouble(TextBox19.Text) + Convert.ToDouble(TextBox24.Text) + Convert.ToDouble(TextBox29.Text) + Convert.ToDouble(TextBox34.Text) + Convert.ToDouble(TextBox39.Text) + Convert.ToDouble(TextBox44.Text) + Convert.ToDouble(TextBox49.Text) + Convert.ToDouble(TextBox54.Text);

        double avg;
        avg = (sum / sum2) * 100;
        TextBox59.Text = avg.ToString();
    }





    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        TextBox7.Focus();
    }

    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select id from std_personal where email='" + TextBox6.Text + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Response.Write("<script>alert('mailid is already exist')</script>");
            TextBox6.Text = "";

        }
        conn.Close();
    }
}




