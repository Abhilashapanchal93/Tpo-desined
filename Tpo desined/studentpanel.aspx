<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentpanel.aspx.cs" Inherits="studentpanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>TPO | Student Panel</title>
     <link rel="Stylesheet" href="css/StyleSheet.css" />
</head>
<body class="std-pnl">
    <form id="form1" runat="server">
    <div class="box" align="right">
        <asp:Label ID="Label1" runat="server" Visible="true"></asp:Label>
        <ul>
      <li>  
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Personal</asp:LinkButton></li>
       <li> <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Academic</asp:LinkButton></li>
        <li><asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">B.E</asp:LinkButton></li>
        <li><asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Projects And Internship</asp:LinkButton></li>
        <li> <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" >Resume</asp:LinkButton></li>
                <li> <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" >Aptitude</asp:LinkButton></li>
      <li>  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Logout</asp:HyperLink></li>
      </ul>
        <br /><br />
    </div>
    <div class="box">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
            
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
       
        
        <br />
        <br />
        <asp:Label  class="snehal" ID="Label3" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"  class="textbox"></asp:TextBox>
        <br />
          <br />
        <br />
        <asp:Label class="snehal" ID="Label4" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"  class="textbox"></asp:TextBox>
        <br />
     <br />
        <br />
        <asp:Label class="snehal" ID="Label5" runat="server" Text="Middle Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"  class="textbox"></asp:TextBox>
        <br />
          <br />
        <br />
        <asp:Label  class="snehal" ID="Label6" runat="server" Text="Date of Birth"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"  class="textbox"></asp:TextBox>

        <br />
               <br />
        <br />
        <asp:Label  class="snehal" ID="Label7" runat="server" Text="Gender"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>-Select Gender-</asp:ListItem>
         <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <br />
           <br />
        <br />
        <asp:Label class="snehal"  ID="Label8" runat="server" Text="College Roll No"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"  class="textbox"></asp:TextBox>

        <br />
        
               <br />
        <br />
        <asp:Label class="snehal" ID="Label9" runat="server" Text="Department"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>-Select Department-</asp:ListItem>
         <asp:ListItem>Computer</asp:ListItem>
          <asp:ListItem>Electronics</asp:ListItem>
          <asp:ListItem>Mechanical</asp:ListItem>
          <asp:ListItem>Information Technology </asp:ListItem>
          <asp:ListItem>Civil</asp:ListItem>
        </asp:DropDownList>
        <br />
          <br />
        <br />
        <asp:Label class="snehal" ID="Label10" runat="server" Text="Mobile No"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"  class="textbox"></asp:TextBox>

        <br />
          <br />
        <br />
        <asp:Label class="snehal" ID="Label11" runat="server" Text="Email id"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"  class="textbox"></asp:TextBox>

        <br />
          <br />
        <br />
        <asp:Label class="snehal" ID="Label12" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"  class="textbox"></asp:TextBox>

        <br />
           <br />
        <br />
        <asp:Label class="snehal" ID="Label13" runat="server" Text="Re-Password"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"  class="textbox"></asp:TextBox>

        <br />
            <br />
        <br />
        <asp:Label class="snehal" ID="Label14" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"  class="textbox"></asp:TextBox>

        <br />
        <br />
<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="Label70" runat="server" Text="Label"></asp:Label>

        <br />
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Upload" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"  
            Text="Update Info" onclick="Button1_Click1" />

        <br />

   
            
            </asp:View>
            <asp:View ID="View2" runat="server">
        <br />
     <br />

        <asp:Label class="acadamic" ID="Label2" runat="server" Text="Class Xth Board"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" class="textbox">
        <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>SSC</asp:ListItem>
       <asp:ListItem>-ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    <asp:Label class="acadamic" ID="Label15" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox12" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic" ID="Label16" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox13" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic"  ID="Label17" runat="server" Text="Total Marks %"></asp:Label><br />
       <asp:TextBox ID="TextBox14" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic"  ID="Label18" runat="server" Text="Class XIIth Board"></asp:Label><br />
        <asp:DropDownList ID="DropDownList4" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>HSC</asp:ListItem>
       <asp:ListItem>ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>
   <br />
       <br />
    <br />
    <asp:Label class="acadamic"  ID="Label19" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox15" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic" ID="Label20" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox16" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic" ID="Label21" runat="server" Text="Total Marks %"></asp:Label><br />
       <asp:TextBox ID="TextBox17" runat="server" class="textbox"></asp:TextBox>
        <br />
    <br />
    <asp:Label class="acadamic" ID="Label22" runat="server" Text="Diploma Board"></asp:Label><br />
        <asp:DropDownList ID="DropDownList5" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>MSBTE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>
   <br />
       <br />
    <br />
    <asp:Label class="acadamic" ID="Label23" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox18" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic" ID="Label24" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox19" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="acadamic" ID="Label25" runat="server" Text="Total Marks"></asp:Label><br />
       <asp:TextBox ID="TextBox20" runat="server" class="textbox"></asp:TextBox>

      <br />
      <br />
      <center>
      <asp:Button ID="Button2" runat="server" Text="Update Info" 
              Width="124px" onclick="Button2_Click1" /></center>
           
            </asp:View>
            
            <asp:View ID="View3" runat="server">
           
                <br />

                <asp:Label ID="Label26" runat="server" Text="1st Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox21" runat="server" class="textbox"></asp:TextBox>

                <br />

                <asp:Label class="acadamic" ID="Label27" runat="server" Text="1st Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox22" runat="server" class="textbox"></asp:TextBox>

                <br />

                <asp:Label class="acadamic" ID="Label28" runat="server" Text="1st Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox23" runat="server" class="textbox"></asp:TextBox>

                <br />
                <asp:Label class="acadamic" ID="Label29" runat="server" Text="1st Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox24" runat="server" class="textbox" 
                    ></asp:TextBox>

                <br />
                <asp:Label class="acadamic" ID="Label30" runat="server" Text="1st Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox25" runat="server" class="textbox"></asp:TextBox>

                <br />
                <asp:Label class="acadamic" ID="Label31" runat="server" Text="2nd Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox26" runat="server" class="textbox"></asp:TextBox>

                <br />
                <asp:Label class="acadamic" ID="Label32" runat="server" Text="2nd Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox27" runat="server" class="textbox"></asp:TextBox>

                <br />
                <asp:Label  class="acadamic" ID="Label33" runat="server" Text="2nd Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox28" runat="server" class="textbox"></asp:TextBox>

                <br />
                <asp:Label class="acadamic" ID="Label34" runat="server" Text="2nd Sem marks"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label78" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox29" runat="server" AutoPostBack="True" class="textbox" 
                    ontextchanged="TextBox29_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="Label36" runat="server" class="acadamic" Text="2nd Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox30" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label37" runat="server" class="acadamic" Text="3rd Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox60" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label38" runat="server" class="acadamic" Text="3rd Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox31" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label39" runat="server" class="acadamic" Text="3rd Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox32" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label40" runat="server" class="acadamic" Text="3rd Sem marks"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox33" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label41" runat="server" class="acadamic" Text="3rd Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox34" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label42" runat="server" class="acadamic" Text="4th Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox35" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label43" runat="server" class="acadamic" Text="4th Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox36" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label44" runat="server" class="acadamic" Text="4th Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox37" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label45" runat="server" class="acadamic" Text="4th Sem marks"></asp:Label>
&nbsp;
                <asp:Label ID="Label79" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox38" runat="server" AutoPostBack="True" class="textbox" 
                    ontextchanged="TextBox38_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="Label46" runat="server" class="acadamic" Text="4th Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox39" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label47" runat="server" class="acadamic" Text="5th Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox40" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label48" runat="server" class="acadamic" Text="5th Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox41" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label49" runat="server" class="acadamic" Text="5th Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox42" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label50" runat="server" class="acadamic" Text="5th Sem marks"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox43" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label51" runat="server" class="acadamic" Text="5th Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox44" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label52" runat="server" class="acadamic" Text="6th Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox45" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label53" runat="server" class="acadamic" Text="6th Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox46" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label54" runat="server" class="acadamic" Text="6th Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox47" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label55" runat="server" class="acadamic" Text="6th Sem marks"></asp:Label>
&nbsp;<asp:Label ID="Label80" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox48" runat="server" AutoPostBack="True" class="textbox" 
                    ontextchanged="TextBox48_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="Label56" runat="server" class="acadamic" Text="6th Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox49" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label57" runat="server" class="acadamic" Text="7th Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox50" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label58" runat="server" class="acadamic" Text="7th Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox51" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label59" runat="server" class="acadamic" Text="7th Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox52" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label60" runat="server" class="acadamic" Text="7th Sem marks"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox53" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label61" runat="server" class="acadamic" Text="7th Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox54" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label62" runat="server" class="acadamic" Text="8th Sem year"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox55" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label63" runat="server" class="acadamic" Text="8th Sem month"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox56" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label64" runat="server" class="acadamic" Text="8th Sem Total"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox57" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label65" runat="server" class="acadamic" Text="8th Sem marks"></asp:Label>
                <asp:Label ID="Label81" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox58" runat="server" AutoPostBack="True" class="textbox" 
                    ontextchanged="TextBox58_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="Label66" runat="server" class="acadamic" Text="8th Sem CGPA"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox59" runat="server" class="textbox"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label67" runat="server" class="acadamic" 
                    Text="Academic Achivements" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox61" runat="server" class="textbox" Visible="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label75" runat="server" class="acadamic" Text=" Agg %" 
                    Visible="False"></asp:Label>
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="BE Calculation" />
                <br />
                <asp:TextBox ID="TextBox70" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label76" runat="server" class="acadamic" Text="Live KT"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox71" runat="server" class="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label77" runat="server" class="acadamic" Text="Dead KT"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox72" runat="server" class="textbox"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Update Info" />
                <br />
     </asp:View>
     <asp:View ID="View4" runat="server">
      <asp:Label class="acadamic" ID="Label35" runat="server" Text="B.E Project Title" ></asp:Label><br />
         <asp:TextBox  ID="TextBox1" runat="server" class="textbox"></asp:TextBox>
         <br />
        
           <asp:Label class="acadamic" ID="Label68" runat="server" Text="B.E Project Desciption" ></asp:Label><br />
         <asp:TextBox ID="TextBox62" runat="server" class="textbox"></asp:TextBox>
         <br />

           <asp:Label class="acadamic" ID="Label69" runat="server" Text="B.E Project Role" ></asp:Label><br />
         <asp:TextBox ID="TextBox63" runat="server" class="textbox"></asp:TextBox>
         <br />
       
          <asp:Label class="acadamic" ID="Label71" runat="server" Text="Operating System" ></asp:Label><br />
         <asp:TextBox ID="TextBox64" runat="server" class="textbox"></asp:TextBox>
         <br />
       
          <asp:Label class="acadamic" ID="Label72" runat="server" Text="Languages" ></asp:Label><br />
         <asp:TextBox ID="TextBox65" runat="server" class="textbox"></asp:TextBox>
         <br />
      
          <asp:Label class="acadamic" ID="Label73" runat="server" Text="Tools" ></asp:Label><br />
         <asp:TextBox ID="TextBox66" runat="server" class="textbox"></asp:TextBox>
         <br />
      
          <asp:Label class="acadamic" ID="Label74" runat="server" Text="Database" ></asp:Label><br />
         <asp:TextBox ID="TextBox67" runat="server" class="textbox"></asp:TextBox>
         <br />
       
         <span class="acadamic">Career Objectisve</span><br/>
         <asp:TextBox ID="TextBox68" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
         <span class="acadamic">Interest And Hobbies</span><br />
         <asp:TextBox ID="TextBox69" runat="server" class="textbox"></asp:TextBox>
         <br />
         <asp:Button ID="Button4" runat="server" Text="Add Details" onclick="Button4_Click1" 
              />
     </asp:View>
        </asp:MultiView>

    </div>
    </form>
</body>
</html>
