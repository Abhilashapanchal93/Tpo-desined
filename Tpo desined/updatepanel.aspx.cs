using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class updatepanel : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["registerConnectionString2"].ConnectionString;
    SqlCommand com;

      protected void Button5_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            com = new SqlCommand("select fname,mnane,lname,dob,gender,sid,dept,mob,email,pass,address,photo from std_personal  where id = '" + TextBox70.Text.Trim() + "'", con);

            SqlDataReader dr1 = com.ExecuteReader();


            if (dr1.HasRows)
            {
                dr1.Read();
                TextBox2.Text = dr1["fname"].ToString();
                TextBox3.Text = dr1["mnane"].ToString();
                TextBox4.Text = dr1["lname"].ToString();
                TextBox5.Text = dr1["dob"].ToString();
                DropDownList1.SelectedValue = dr1["gender"].ToString();
                TextBox6.Text = dr1["sid"].ToString();
                DropDownList2.SelectedValue = dr1["dept"].ToString();
                TextBox7.Text = dr1["mob"].ToString();
                TextBox8.Text = dr1["email"].ToString();
                TextBox9.Text = dr1["pass"].ToString();
                TextBox11.Text = dr1["address"].ToString();

                con.Close();
                dr1.Dispose();

            }

        
            con.Close();
            con.Open();
            com = new SqlCommand("select x_board,x_month,x_year,x_per,xii_board,xii_month,xii_year,xii_per,d_board,d_month,d_year,d_per from std_academic  where id = '" + TextBox70.Text.Trim() + "'", con);

            SqlDataReader dr2 = com.ExecuteReader();


            if (dr2.HasRows)
            {
                dr2.Read();
                DropDownList3.SelectedValue = dr2["x_board"].ToString();
                TextBox12.Text = dr2["x_month"].ToString();
                TextBox13.Text = dr2["x_year"].ToString();
                TextBox14.Text = dr2["x_per"].ToString();
                DropDownList4.SelectedValue = dr2["xii_board"].ToString();
                TextBox15.Text = dr2["xii_month"].ToString();
                TextBox16.Text = dr2["xii_year"].ToString();
                TextBox17.Text = dr2["xii_per"].ToString();
                DropDownList5.SelectedValue = dr2["d_board"].ToString();
                TextBox18.Text = dr2["d_month"].ToString();
                TextBox19.Text = dr2["d_year"].ToString();
                TextBox20.Text = dr2["d_per"].ToString();


                con.Close();
                dr1.Dispose();
            }


            con.Close();
            con.Open();
            com = new SqlCommand("select * from std_Sem1 where id = '" + TextBox70.Text.Trim() + "'", con);
            SqlDataReader dr3 = com.ExecuteReader();

            if (dr3.HasRows)
            {
                dr3.Read();

                TextBox21.Text = dr3["I_year"].ToString();
                TextBox22.Text = dr3["I_month"].ToString();
                TextBox23.Text = dr3["I_total"].ToString();
                TextBox24.Text = dr3["I_marks"].ToString();
                TextBox25.Text = dr3["I_CGPA"].ToString();
                TextBox26.Text = dr3["II_year"].ToString();
                TextBox27.Text = dr3["II_month"].ToString();
                TextBox28.Text = dr3["II_total"].ToString();
                TextBox29.Text = dr3["II_marks"].ToString();
                TextBox60.Text = dr3["II_CGPA"].ToString();
                TextBox31.Text = dr3["III_year"].ToString();
                TextBox32.Text = dr3["III_month"].ToString();
                TextBox33.Text = dr3["III_total"].ToString();
                TextBox34.Text = dr3["III_marks"].ToString();
                TextBox35.Text = dr3["III_CGPA"].ToString();
                TextBox36.Text = dr3["IV_year"].ToString();
                TextBox37.Text = dr3["IV_month"].ToString();
                TextBox38.Text = dr3["IV_total"].ToString();
                TextBox39.Text = dr3["IV_marks"].ToString();
                TextBox40.Text = dr3["IV_CGPA"].ToString();
                TextBox41.Text = dr3["V_year"].ToString();
                TextBox42.Text = dr3["V_month"].ToString();
                TextBox43.Text = dr3["V_total"].ToString();
                TextBox44.Text = dr3["V_marks"].ToString();
                TextBox45.Text = dr3["V_CGPA"].ToString();
                TextBox46.Text = dr3["VI_year"].ToString();
                TextBox47.Text = dr3["VI_month"].ToString();
                TextBox48.Text = dr3["VI_total"].ToString();
                TextBox49.Text = dr3["VI_marks"].ToString();
                TextBox50.Text = dr3["VI_CGPA"].ToString();
                TextBox51.Text = dr3["VII_year"].ToString();
                TextBox52.Text = dr3["VII_month"].ToString();
                TextBox53.Text = dr3["VII_total"].ToString();
                TextBox54.Text = dr3["VII_marks"].ToString();
                TextBox55.Text = dr3["VII_CGPA"].ToString();
                TextBox56.Text = dr3["VIII_year"].ToString();
                TextBox57.Text = dr3["VIII_month"].ToString();
                TextBox58.Text = dr3["VIII_total"].ToString();
                TextBox59.Text = dr3["VIII_marks"].ToString();
                TextBox60.Text = dr3["VIII_CGPA"].ToString();
                con.Close();
            }
            con.Close();
            con.Open();
            com = new SqlCommand("select * from proj_detail where id = '" + TextBox70.Text.Trim() + "'", con);
            SqlDataReader dr4 = com.ExecuteReader();

            if (dr4.HasRows)
            {
                dr4.Read();
                TextBox1.Text = dr4["BE_proj_title"].ToString();
                TextBox62.Text = dr4["BE_proj_desc"].ToString();
                TextBox63.Text = dr4["BE_proj_role"].ToString();
                TextBox64.Text = dr4["OS"].ToString();
                TextBox65.Text = dr4["languages"].ToString();
                TextBox66.Text = dr4["tools"].ToString();
                TextBox67.Text = dr4["Dblang"].ToString();
                TextBox68.Text = dr4["careerobj"].ToString();
                TextBox69.Text = dr4["interest"].ToString();
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('please enter valid id')</script>");
                TextBox70.Text = "";
                TextBox70.Focus();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                DropDownList1.SelectedValue = "-Select Gender-";
                TextBox6.Text = "";
                DropDownList2.SelectedValue = "-Select Department-"; ;
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox11.Text = " ";
                DropDownList3.SelectedValue = "-Select Board-";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                DropDownList4.SelectedValue = "-Select Board-";
                TextBox15.Text = " ";
                TextBox16.Text = " ";
                TextBox17.Text = " ";
                DropDownList5.SelectedValue = "-Select Board-";
                TextBox18.Text = " ";
                TextBox19.Text = " ";
                TextBox20.Text = " ";

                TextBox21.Text = " ";
                TextBox22.Text = " ";
                TextBox23.Text = " ";
                TextBox24.Text = " ";
                TextBox25.Text = " ";
                TextBox26.Text = " ";
                TextBox27.Text = " ";
                TextBox28.Text = " ";
                TextBox29.Text = " ";
                TextBox60.Text = " ";
                TextBox31.Text = " ";
                TextBox32.Text = " ";
                TextBox33.Text = " ";
                TextBox34.Text = " ";
                TextBox35.Text = " ";
                TextBox36.Text = " ";
                TextBox37.Text = " ";
                TextBox38.Text = " ";
                TextBox39.Text = " ";
                TextBox40.Text = " ";
                TextBox41.Text = " ";
                TextBox42.Text = " ";
                TextBox43.Text = " ";
                TextBox44.Text = " ";
                TextBox45.Text = " ";
                TextBox46.Text = " ";
                TextBox47.Text = " ";
                TextBox48.Text = " ";
                TextBox49.Text = " ";
                TextBox50.Text = " ";
                TextBox51.Text = " ";
                TextBox52.Text = " ";
                TextBox53.Text = " ";
                TextBox54.Text = " ";
                TextBox55.Text = " ";
                TextBox56.Text = " ";
                TextBox57.Text = " ";
                TextBox58.Text = " ";
                TextBox59.Text = " ";
                TextBox60.Text = " ";
                TextBox1.Text = " ";
                TextBox62.Text = " ";
                TextBox63.Text = " ";
                TextBox64.Text = " ";
                TextBox65.Text = " ";
                TextBox66.Text = " ";
                TextBox67.Text = " ";
                TextBox68.Text = " ";
                TextBox69.Text = " ";

            }
        }
      protected void Button1_Click1(object sender, EventArgs e)
      {
          SqlConnection con = new SqlConnection(connStr);
          con.Open();
          com = new SqlCommand("update std_personal set fname=@fname,mnane=@mnane,lname=@lname,dob=@dob,gender=@gender,sid=@sid,dept=@dept,mob=@mob,email=@email,pass=@pass,address=@address where id=@id", con);
          com.Parameters.AddWithValue("@fname", TextBox2.Text);
          com.Parameters.AddWithValue("@mnane", TextBox3.Text);
          com.Parameters.AddWithValue("@lname", TextBox4.Text);
          com.Parameters.AddWithValue("@dob", TextBox5.Text);
          com.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue.ToString());
          com.Parameters.AddWithValue("@sid", TextBox6.Text);
          com.Parameters.AddWithValue("@dept", DropDownList2.SelectedValue.ToString());
          com.Parameters.AddWithValue("@mob", TextBox7.Text);
          com.Parameters.AddWithValue("@email", TextBox8.Text);
          com.Parameters.AddWithValue("@pass", TextBox9.Text);
          com.Parameters.AddWithValue("@address", TextBox11.Text);
          com.Parameters.AddWithValue("@id", TextBox70.Text);
          
          com.ExecuteNonQuery();
          com.Dispose();
          con.Close();
          Response.Write("<script>alert('updated Successfully')</script>");

      }
      protected void Button2_Click1(object sender, EventArgs e)
      {
          SqlConnection con = new SqlConnection(connStr);
          con.Open();

          com = new SqlCommand("update std_academic set x_board=@x_board,x_month=@x_month,x_year=@x_year,x_per=@x_per,xii_board=@xii_board,xii_month=@xii_month,xii_year=@xii_year,xii_per=@xii_per,d_board=@d_board,d_month=@d_month,d_year=@d_year,d_per=@d_per where id=@id", con);
          com.Parameters.AddWithValue("@x_board", DropDownList3.SelectedValue.ToString());
          com.Parameters.AddWithValue("@x_month", TextBox12.Text);
          com.Parameters.AddWithValue("@x_year", TextBox13.Text);
          com.Parameters.AddWithValue("@x_per", TextBox14.Text);
          com.Parameters.AddWithValue("@xii_board", DropDownList4.SelectedValue.ToString());
          com.Parameters.AddWithValue("@xii_month", TextBox15.Text);
          com.Parameters.AddWithValue("@xii_year", TextBox16.Text);
          com.Parameters.AddWithValue("@xii_per", TextBox17.Text);
          com.Parameters.AddWithValue("@d_board", DropDownList5.SelectedValue.ToString());
          com.Parameters.AddWithValue("@d_month", TextBox18.Text);
          com.Parameters.AddWithValue("@d_year", TextBox19.Text);
          com.Parameters.AddWithValue("@d_per", TextBox20.Text);
          com.Parameters.AddWithValue("@id", TextBox70.Text);
          com.ExecuteNonQuery();
          com.Dispose();
          con.Close();
          Response.Write("<script>alert('updated Successfully')</script>");

      }
      protected void Button3_Click(object sender, EventArgs e)
      {

          SqlConnection con = new SqlConnection(connStr);
          con.Open();

          com = new SqlCommand("update std_Sem1 set I_year=@I_year,I_month=@I_month,I_total=@I_total,I_marks=@I_marks,II_year=@II_year,II_month=@II_month,II_total=@II_total,II_marks=@II_marks,II_CGPA=@II_CGPA,III_year=@III_year,III_month=@III_month,III_total=@III_total,III_marks=@III_marks,III_CGPA=@III_CGPA,IV_year=@IV_year,IV_month=@IV_month,IV_total=@IV_total,IV_marks=@IV_marks,IV_CGPA=@IV_CGPA,V_year=@V_year,V_month=@V_month,V_total=@V_total,V_marks=@V_marks,V_CGPA=@V_CGPA,VI_year=@VI_year,VI_month=@VI_month,VI_total=@VI_total,VI_marks=@VI_marks,VI_CGPA=@VI_CGPA,VII_year=@VII_year,VII_month=@VII_month,VII_total=@VII_total,VII_marks=@VII_marks,VII_CGPA=@VII_CGPA,VIII_year=@VIII_year,VIII_month=@VIII_month,VIII_total=@VIII_total,VIII_marks=@VIII_marks,VIII_CGPA=@VIII_CGPA where id=@id", con);

          com.Parameters.AddWithValue("@I_year", TextBox21.Text);
          com.Parameters.AddWithValue("@I_month", TextBox22.Text);
          com.Parameters.AddWithValue("@I_total", TextBox23.Text);
          com.Parameters.AddWithValue("@I_marks", TextBox24.Text);
          com.Parameters.AddWithValue("@I_CGPA", TextBox25.Text);
          com.Parameters.AddWithValue("@II_year", TextBox26.Text);
          com.Parameters.AddWithValue("@II_month", TextBox27.Text);
          com.Parameters.AddWithValue("@II_total", TextBox28.Text);
          com.Parameters.AddWithValue("@II_marks", TextBox29.Text);
          com.Parameters.AddWithValue("@II_CGPA", TextBox30.Text);
          com.Parameters.AddWithValue("@III_year", TextBox60.Text);
          com.Parameters.AddWithValue("@III_month", TextBox31.Text);
          com.Parameters.AddWithValue("@III_total", TextBox32.Text);
          com.Parameters.AddWithValue("@III_marks", TextBox33.Text);
          com.Parameters.AddWithValue("@III_CGPA", TextBox34.Text);
          com.Parameters.AddWithValue("@IV_year", TextBox35.Text);
          com.Parameters.AddWithValue("@IV_month", TextBox36.Text);
          com.Parameters.AddWithValue("@IV_total", TextBox37.Text);
          com.Parameters.AddWithValue("@IV_marks", TextBox38.Text);
          com.Parameters.AddWithValue("@IV_CGPA", TextBox39.Text);
          com.Parameters.AddWithValue("@V_year", TextBox40.Text);
          com.Parameters.AddWithValue("@V_month", TextBox41.Text);
          com.Parameters.AddWithValue("@V_total", TextBox42.Text);
          com.Parameters.AddWithValue("@V_marks", TextBox43.Text);
          com.Parameters.AddWithValue("@V_CGPA", TextBox44.Text);
          com.Parameters.AddWithValue("@VI_year", TextBox45.Text);
          com.Parameters.AddWithValue("@VI_month", TextBox46.Text);
          com.Parameters.AddWithValue("@VI_total", TextBox47.Text);
          com.Parameters.AddWithValue("@VI_marks", TextBox48.Text);
          com.Parameters.AddWithValue("@VI_CGPA", TextBox49.Text);
          com.Parameters.AddWithValue("@VII_year", TextBox50.Text);
          com.Parameters.AddWithValue("@VII_month", TextBox51.Text);
          com.Parameters.AddWithValue("@VII_total", TextBox52.Text);
          com.Parameters.AddWithValue("@VII_marks", TextBox53.Text);
          com.Parameters.AddWithValue("@VII_CGPA", TextBox54.Text);
          com.Parameters.AddWithValue("@VIII_year", TextBox55.Text);
          com.Parameters.AddWithValue("@VIII_month", TextBox56.Text);
          com.Parameters.AddWithValue("@VIII_total", TextBox57.Text);
          com.Parameters.AddWithValue("@VIII_marks", TextBox58.Text);
          com.Parameters.AddWithValue("@VIII_CGPA", TextBox59.Text);
          com.Parameters.AddWithValue("@id", TextBox70.Text);
          com.ExecuteNonQuery();
          com.Dispose();
          con.Close();
          Response.Write("<script>alert('updated Successfully')</script>");
      }
      protected void Button4_Click1(object sender, EventArgs e)
      {
          SqlConnection con = new SqlConnection(connStr);
          con.Open();
          SqlCommand cmd = new SqlCommand("update  proj_detail set BE_proj_title=@BE_proj_title,BE_proj_desc=@BE_proj_desc,BE_proj_role=@BE_proj_role,OS=@OS,languages=@languages,tools=@tools,Dblang=@Dblang,careerobj=@careerobj,interest=@interest where id='" + TextBox70.Text + "'", con);
          cmd.Parameters.AddWithValue("BE_proj_title", TextBox1.Text);
          cmd.Parameters.AddWithValue("BE_proj_desc", TextBox62.Text);
          cmd.Parameters.AddWithValue("BE_proj_role", TextBox63.Text);
          cmd.Parameters.AddWithValue("OS", TextBox64.Text);
          cmd.Parameters.AddWithValue("languages", TextBox65.Text);
          cmd.Parameters.AddWithValue("tools", TextBox66.Text);
          cmd.Parameters.AddWithValue("Dblang", TextBox67.Text);
          cmd.Parameters.AddWithValue("careerobj", TextBox68.Text);
          cmd.Parameters.AddWithValue("interest", TextBox69.Text);
          cmd.ExecuteNonQuery();
          con.Close();
          Response.Write("<script>alert('updated')</script>");

      }
      public static string filename;
      protected void Button6_Click(object sender, EventArgs e)
      {
          if (FileUpload1.HasFile)
          {
              try
              {
                  filename = Path.GetFileName(FileUpload1.FileName);
                  FileUpload1.SaveAs(Server.MapPath("~/Images/") + filename);
                  Label70.Text = "Upload status: File uploaded!";
              }

              catch (Exception ex)
              {
                  Label70.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
              }
          }

      }
      protected void Button7_Click(object sender, EventArgs e)
      {
          SqlConnection con = new SqlConnection(connStr);
          con.Open();
          SqlCommand cmd=new SqlCommand("delete from std_personal where id='"+TextBox70.Text+"'",con);
          cmd.ExecuteNonQuery();
          con.Close();
          con.Open();
          SqlCommand cmd1 = new SqlCommand("delete from std_Sem1 where id='" + TextBox70.Text + "'", con);
          cmd1.ExecuteNonQuery();
          con.Close();
          con.Open();
          SqlCommand cmd2 = new SqlCommand("delete from std_academic where id='" + TextBox70.Text + "'", con);
          cmd2.ExecuteNonQuery();
          con.Close();
          con.Open();
          SqlCommand cmd3 = new SqlCommand("delete from proj_detail where id='" + TextBox70.Text + "'", con);
          cmd3.ExecuteNonQuery();
          con.Close();
          Response.Write("<script>alert('Deleted')</script>");
          TextBox70.Text = "";
          TextBox70.Focus();
          TextBox2.Text = "";
          TextBox3.Text = "";
          TextBox4.Text = "";
          TextBox5.Text = "";
          DropDownList1.SelectedValue = "-Select Gender-";
          TextBox6.Text = "";
          DropDownList2.SelectedValue = "-Select Department-"; ;
          TextBox7.Text = "";
          TextBox8.Text = "";
          TextBox9.Text = "";
          TextBox11.Text = " ";
          DropDownList3.SelectedValue = "-Select Board-";
          TextBox12.Text = " ";
          TextBox13.Text = " ";
          TextBox14.Text = " ";
          DropDownList4.SelectedValue = "-Select Board-";
          TextBox15.Text = " ";
          TextBox16.Text = " ";
          TextBox17.Text = " ";
          DropDownList5.SelectedValue = "-Select Board-";
          TextBox18.Text = " ";
          TextBox19.Text = " ";
          TextBox20.Text = " ";

          TextBox21.Text = " ";
          TextBox22.Text = " ";
          TextBox23.Text = " ";
          TextBox24.Text = " ";
          TextBox25.Text = " ";
          TextBox26.Text = " ";
          TextBox27.Text = " ";
          TextBox28.Text = " ";
          TextBox29.Text = " ";
          TextBox60.Text = " ";
          TextBox31.Text = " ";
          TextBox32.Text = " ";
          TextBox33.Text = " ";
          TextBox34.Text = " ";
          TextBox35.Text = " ";
          TextBox36.Text = " ";
          TextBox37.Text = " ";
          TextBox38.Text = " ";
          TextBox39.Text = " ";
          TextBox40.Text = " ";
          TextBox41.Text = " ";
          TextBox42.Text = " ";
          TextBox43.Text = " ";
          TextBox44.Text = " ";
          TextBox45.Text = " ";
          TextBox46.Text = " ";
          TextBox47.Text = " ";
          TextBox48.Text = " ";
          TextBox49.Text = " ";
          TextBox50.Text = " ";
          TextBox51.Text = " ";
          TextBox52.Text = " ";
          TextBox53.Text = " ";
          TextBox54.Text = " ";
          TextBox55.Text = " ";
          TextBox56.Text = " ";
          TextBox57.Text = " ";
          TextBox58.Text = " ";
          TextBox59.Text = " ";
          TextBox60.Text = " ";
          TextBox1.Text = " ";
          TextBox62.Text = " ";
          TextBox63.Text = " ";
          TextBox64.Text = " ";
          TextBox65.Text = " ";
          TextBox66.Text = " ";
          TextBox67.Text = " ";
          TextBox68.Text = " ";
          TextBox69.Text = " ";
      }
      protected void LinkButton1_Click(object sender, EventArgs e)
      {
          MultiView1.ActiveViewIndex = 0;
      }
      protected void LinkButton2_Click(object sender, EventArgs e)
      {
          MultiView1.ActiveViewIndex = 1;
      }
      protected void LinkButton6_Click(object sender, EventArgs e)
      {
          MultiView1.ActiveViewIndex = 3;
      }

      protected void LinkButton3_Click(object sender, EventArgs e)
      {
          MultiView1.ActiveViewIndex = 2;
      }

}
 


