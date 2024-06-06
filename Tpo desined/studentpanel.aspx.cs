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
using System.Net.Mail;
using System.Net;

public partial class studentpanel : System.Web.UI.Page

{
    string connStr = ConfigurationManager.ConnectionStrings["registerConnectionString2"].ConnectionString;
    SqlCommand com;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["id"];

        // Add any controls that have been previously added dynamically
        for (int i = 0; i < TotalNumberAdded; ++i)
        {
            AddControls(i + 1);
        }

        // Attach the event handler to the button
        Button4.Click += new EventHandler(Button4_Click1);
        if (!IsPostBack)
        {
            Label1.Text = Request.QueryString["id"].ToString();


            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            com = new SqlCommand("select fname,mnane,lname,dob,gender,sid,dept,mob,email,pass,address,photo from std_personal  where id = '" + Label1.Text.Trim() + "'", con);

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


            
            con.Open();
            com = new SqlCommand("select x_board,x_month,x_year,x_per,xii_board,xii_month,xii_year,xii_per,d_board,d_month,d_year,d_per from std_academic  where id = '" + Label1.Text.Trim() + "'", con);

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

           
          
            con.Open();
            com = new SqlCommand("select * from std_Sem1 where id = '" + Label1.Text.Trim() + "'", con);
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
                TextBox30.Text = dr3["II_CGPA"].ToString();
                TextBox60.Text = dr3["III_year"].ToString();
                TextBox31.Text = dr3["III_month"].ToString();
                TextBox32.Text = dr3["III_total"].ToString();
                TextBox33.Text = dr3["III_marks"].ToString();
                TextBox34.Text = dr3["III_CGPA"].ToString();
                TextBox35.Text = dr3["IV_year"].ToString();
                TextBox36.Text = dr3["IV_month"].ToString();
                TextBox37.Text = dr3["IV_total"].ToString();
                TextBox38.Text = dr3["IV_marks"].ToString();
                TextBox39.Text = dr3["IV_CGPA"].ToString();
                TextBox40.Text = dr3["V_year"].ToString();
                TextBox41.Text = dr3["V_month"].ToString();
                TextBox42.Text = dr3["V_total"].ToString();
                TextBox43.Text = dr3["V_marks"].ToString();
                TextBox44.Text = dr3["V_CGPA"].ToString();
                TextBox45.Text = dr3["VI_year"].ToString();
                TextBox46.Text = dr3["VI_month"].ToString();
                TextBox47.Text = dr3["VI_total"].ToString();
                TextBox48.Text = dr3["VI_marks"].ToString();
                TextBox49.Text = dr3["VI_CGPA"].ToString();
                TextBox50.Text = dr3["VII_year"].ToString();
                TextBox51.Text = dr3["VII_month"].ToString();
                TextBox52.Text = dr3["VII_total"].ToString();
                TextBox53.Text = dr3["VII_marks"].ToString();
                TextBox54.Text = dr3["VII_CGPA"].ToString();
                TextBox55.Text = dr3["VIII_year"].ToString();
                TextBox56.Text = dr3["VIII_month"].ToString();
                TextBox57.Text = dr3["VIII_total"].ToString();
                TextBox58.Text = dr3["VIII_marks"].ToString();
                TextBox59.Text = dr3["VIII_CGPA"].ToString();
                TextBox71.Text = dr3["live_kt"].ToString();
                TextBox72.Text = dr3["dead_kt"].ToString();
                Label78.Text = dr3["First_time"].ToString();
                Label79.Text = dr3["Second_time"].ToString();
                Label80.Text = dr3["third_time"].ToString();
                Label81.Text = dr3["four_time"].ToString();
                con.Close();
            }

              con.Open();
            com = new SqlCommand("select * from proj_detail where id = '" + Label1.Text.Trim() + "'", con);
            SqlDataReader dr4 = com.ExecuteReader();

            if (dr4.HasRows)
            {
                dr4.Read();
                TextBox1.Text=dr4["BE_proj_title"].ToString();
                TextBox62.Text=dr4["BE_proj_desc"].ToString();
                TextBox63.Text=dr4["BE_proj_role"].ToString();
                TextBox64.Text=dr4["OS"].ToString();
                TextBox65.Text=dr4["languages"].ToString();
                TextBox66.Text=dr4["tools"].ToString();
                TextBox67.Text=dr4["Dblang"].ToString();
                TextBox68.Text = dr4["careerobj"].ToString();
                TextBox69.Text = dr4["interest"].ToString();
                con.Close();
            }


            if (TextBox38.Text == "" || TextBox38.Text == "0")
            {
                int a=365;
                DateTime d = Convert.ToDateTime(Label78.Text);
                DateTime n = DateTime.Now;
                TimeSpan span = n.Subtract(d);
                if (a < Convert.ToInt16(span.Days))
                {
                    MailMessage m = new MailMessage();
                    SmtpClient sc = new SmtpClient();


                    m.From = new MailAddress("Dmcetposample@gmail.com", "DMCE TPO");
                    m.To.Add(new MailAddress(TextBox8.Text));

                    //similarly BCC
                    m.Subject = "DMCE-TPO"; m.IsBodyHtml = true;
                    m.Body = "This mail is to inform  you that you need to fill your 2nd year details in TPO.";
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 587;
                    sc.Credentials = new System.Net.NetworkCredential("Dmcetposample@gmail.com", "dmcetpo4");
                    sc.EnableSsl = true;
                    sc.Send(m);
                    Response.Write("<script>alert('Please enter 2nd year Details')</script>");
                }
                else if (TextBox48.Text=="" || TextBox48.Text=="0")
                {
                    int b = 365;
                    DateTime c = Convert.ToDateTime(Label79.Text);
                    DateTime f = DateTime.Now;
                    TimeSpan span1 = f.Subtract(c);
                    if (b < Convert.ToInt16(span1.Days))
                    {
                        MailMessage m = new MailMessage();
                        SmtpClient sc = new SmtpClient();


                        m.From = new MailAddress("Dmcetposample@gmail.com", "DMCE TPO");
                        m.To.Add(new MailAddress(TextBox8.Text));

                        //similarly BCC
                        m.Subject = "DMCE-TPO"; m.IsBodyHtml = true;
                        m.Body = "This mail is to inform  you that you need to fill your 3rd year details in TPO.";
                        sc.Host = "smtp.gmail.com";
                        sc.Port = 587;
                        sc.Credentials = new System.Net.NetworkCredential("Dmcetposample@gmail.com", "dmcetpo4");
                        sc.EnableSsl = true;
                        sc.Send(m);
                        Response.Write("<script>alert('Please enter 3rd year Details')</script>");
                    }
                }
                else  if(TextBox58.Text=="" || TextBox58.Text=="0")
                {
                     int g =365;
                DateTime i = Convert.ToDateTime(Label80.Text);
                DateTime j = DateTime.Now;
                TimeSpan span3 = n.Subtract(d);
                if (g < Convert.ToInt16(span3.Days))
                {
                    MailMessage m = new MailMessage();
                    SmtpClient sc = new SmtpClient();


                    m.From = new MailAddress("Dmcetposample@gmail.com", "DMCE TPO");
                    m.To.Add(new MailAddress(TextBox8.Text));

                    //similarly BCC
                    m.Subject = "DMCE-TPO"; m.IsBodyHtml = true;
                    m.Body = "This mail is to inform  you that you need to fill your 4th year details in TPO.";
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 587;
                    sc.Credentials = new System.Net.NetworkCredential("Dmcetposample@gmail.com", "dmcetpo4");
                    sc.EnableSsl = true;
                    sc.Send(m);
                    Response.Write("<script>alert('Please enter 4th year Details')</script>");
                }
                }
            }




        }
    }
    

          public string id { get; set; }
          protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        com = new SqlCommand("update std_personal set fname=@fname,mnane=@mnane,lname=@lname,dob=@dob,gender=@gender,sid=@sid,dept=@dept,mob=@mob,email=@email,pass=@pass,address=@address,photo=@photo where id=@id", con);
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
        com.Parameters.AddWithValue("@id", Label1.Text);
        com.Parameters.AddWithValue("@photo", filename);    
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        Response.Write("<script>alert('updated Successfully')</script>");

    }

    
  
   



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
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
        com.Parameters.AddWithValue("@id", Label1.Text);
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        Response.Write("<script>alert('updated Successfully')</script>");


    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox70.Text == "")
        {
            Response.Write("<script>alert('Please enter marks to be Updated')</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            com = new SqlCommand("update std_Sem1 set I_year=@I_year,I_month=@I_month,I_total=@I_total,I_marks=@I_marks,II_year=@II_year,II_month=@II_month,II_total=@II_total,II_marks=@II_marks,II_CGPA=@II_CGPA,III_year=@III_year,III_month=@III_month,III_total=@III_total,III_marks=@III_marks,III_CGPA=@III_CGPA,IV_year=@IV_year,IV_month=@IV_month,IV_total=@IV_total,IV_marks=@IV_marks,IV_CGPA=@IV_CGPA,V_year=@V_year,V_month=@V_month,V_total=@V_total,V_marks=@V_marks,V_CGPA=@V_CGPA,VI_year=@VI_year,VI_month=@VI_month,VI_total=@VI_total,VI_marks=@VI_marks,VI_CGPA=@VI_CGPA,VII_year=@VII_year,VII_month=@VII_month,VII_total=@VII_total,VII_marks=@VII_marks,VII_CGPA=@VII_CGPA,VIII_year=@VIII_year,VIII_month=@VIII_month,VIII_total=@VIII_total,VIII_marks=@VIII_marks,VIII_CGPA=@VIII_CGPA,Agg=@Agg,live_kt=@live_kt,dead_kt=@dead_kt,first_time=@first_time,Second_time=@Second_time,third_time=@third_time,four_time=@four_time where id=@id", con);

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
            com.Parameters.AddWithValue("@Agg", TextBox70.Text);
            com.Parameters.AddWithValue("@live_kt", TextBox71.Text);
            com.Parameters.AddWithValue("@dead_kt", TextBox72.Text);
            com.Parameters.AddWithValue("@id", Label1.Text);
            com.Parameters.AddWithValue("@first_time", Label78.Text);
            com.Parameters.AddWithValue("@Second_time", Label79.Text);
            com.Parameters.AddWithValue("@third_time", Label80.Text);
            com.Parameters.AddWithValue("@four_time", Label81.Text);
            com.ExecuteNonQuery();
            com.Dispose();
            con.Close();
            Response.Write("<script>alert('updated Successfully')</script>");
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Resume.aspx?id=" + Label1.Text);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        TextBox61.Visible = true;
        Label67.Visible = true;
        
    }
   
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    
  

   
     void AddControls(int controlNumber)
    {
        var newPanel = new Panel();
       
        var newTextbox = new TextBox();

        // textbox needs a unique id to maintain state information
        newTextbox.ID = "TextBox_" + controlNumber;
        newTextbox.CssClass = "textbox";

        

        // add the label and textbox to the panel, then add the panel to the form
       
        newPanel.Controls.Add(newTextbox);
        View4.Controls.Add(newPanel);
    }

     int TotalNumberAdded
    {
        get { return (int)(ViewState["TotalNumberAdded"] ?? 0); }
        set { ViewState["TotalNumberAdded"] = value; }
    }

     protected void Button4_Click1(object sender, EventArgs e)
     {
         if (TextBox1.Text == "")
         {
             Response.Write("<script>alert('Enter Details to be updated')</script>");
         }
         else
         {
             SqlConnection con = new SqlConnection(connStr);
             con.Open();
             SqlCommand cmd = new SqlCommand("update  proj_detail set BE_proj_title=@BE_proj_title,BE_proj_desc=@BE_proj_desc,BE_proj_role=@BE_proj_role,OS=@OS,languages=@languages,tools=@tools,Dblang=@Dblang,careerobj=@careerobj,interest=@interest where id='" + Label1.Text + "'", con);
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
                 Label70.Text="Upload status: File uploaded!";
        }

             catch(Exception ex)
        {
            Label70.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
        }
             }


         }
     protected void LinkButton7_Click(object sender, EventArgs e)
     {
         Response.Redirect("aptitude.aspx?id="+Label1.Text);
     }
     protected void Button5_Click(object sender, EventArgs e)
     {
         if (TextBox24.Text == "" && TextBox24.Text == "")
         {
             double sum;
             sum = Convert.ToDouble(TextBox32.Text) + Convert.ToDouble(TextBox37.Text) + Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox47.Text) + Convert.ToDouble(TextBox52.Text) + Convert.ToDouble(TextBox57.Text);
             double sum2;
             sum2 =  Convert.ToDouble(TextBox33.Text) + Convert.ToDouble(TextBox38.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox48.Text) + Convert.ToDouble(TextBox53.Text) + Convert.ToDouble(TextBox58.Text);

             double avg;
             avg = Math.Round((sum2 / sum) * 100);

             TextBox70.Text = avg.ToString();
             TextBox70.Focus();
         }
         else
	    {
            double sum;
            sum = Convert.ToDouble(TextBox23.Text) + Convert.ToDouble(TextBox28.Text) + Convert.ToDouble(TextBox32.Text) + Convert.ToDouble(TextBox37.Text) + Convert.ToDouble(TextBox42.Text) + Convert.ToDouble(TextBox47.Text) + Convert.ToDouble(TextBox52.Text) + Convert.ToDouble(TextBox57.Text);
            double sum2;
            sum2 = Convert.ToDouble(TextBox24.Text) + Convert.ToDouble(TextBox29.Text) + Convert.ToDouble(TextBox33.Text) + Convert.ToDouble(TextBox38.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox48.Text) + Convert.ToDouble(TextBox53.Text) + Convert.ToDouble(TextBox58.Text);

            double avg;
            avg = (sum2 / sum) * 100;
            TextBox70.Text = avg.ToString();
            TextBox70.Focus();
         }
	}

     protected void TextBox29_TextChanged(object sender, EventArgs e)
     {
         DateTime first = DateTime.Now;
         Label78.Text = first.ToShortDateString();
         TextBox30.Focus();
       
     }
     protected void TextBox38_TextChanged(object sender, EventArgs e)
     {
         DateTime first = DateTime.Now;
         Label79.Text = first.ToShortDateString();
         TextBox39.Focus();
     }
     protected void TextBox48_TextChanged(object sender, EventArgs e)
     {
         DateTime first = DateTime.Now;
         Label80.Text = first.ToShortDateString();
         TextBox49.Focus();

     }
     protected void TextBox58_TextChanged(object sender, EventArgs e)
     {
         DateTime first = DateTime.Now;
         Label81.Text = first.ToShortDateString();
         TextBox59.Focus();
     }
}

