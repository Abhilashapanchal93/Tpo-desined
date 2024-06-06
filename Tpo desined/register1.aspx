<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register1.aspx.cs" Inherits="register1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TPO | Register Page</title>
    <link rel="Stylesheet" href="css/StyleSheet.css" />
     <style type="text/css">
  
    </style>
</head>
<body class="reg-page">
    

<form runat="server">
<a href="login.aspx">Back</a>
     <div class="box"><br />
    <center><b>Personal Information</b></center>
    <br />

    <asp:Label class="span" ID="Label1" runat="server" Text="First Name"></asp:Label>&nbsp;*<br />
    <asp:TextBox ID="TextBox1" runat="server" class="textbox"></asp:TextBox>
    <br />
    
    <asp:Label class="span" ID="Label2" runat="server" Text="Middle Name"></asp:Label>&nbsp;*<br />
    <asp:TextBox ID="TextBox2" runat="server" class="textbox"></asp:TextBox>
     <br />
    
    <asp:Label class="span" ID="Label3" runat="server" Text="Last Name"></asp:Label>&nbsp;*<br />
    <asp:TextBox ID="TextBox3" runat="server" class="textbox"></asp:TextBox>
    <br />
    
    <asp:Label class="span" ID="Label4" runat="server" Text="Date of Birth"></asp:Label>&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox61" runat="server" 
             ></asp:TextBox>
              <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/calendar_button.gif" Height="29px" 
                    Width="30px" />
                   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
         </asp:ToolkitScriptManager>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                    TargetControlID="TextBox61" PopupButtonID="ImageButton1" 
                   Format="yyyy-MM-dd">
                </asp:CalendarExtender>
         <br />
        <br />
        <asp:Label class="span" ID="Label5" runat="server" Text="Gender *"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" class="textbox" 
             >
        <asp:ListItem>-Select Gender-</asp:ListItem>
         <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <br />
         <asp:Label  class="span" ID="Label6" runat="server" Text="College Roll No *"></asp:Label><br />
    <asp:TextBox ID="TextBox4" runat="server" class="textbox"></asp:TextBox>
        <br />
        <asp:Label  class="span" ID="Label7" runat="server" Text="Department"></asp:Label><br />
   <asp:DropDownList ID="DropDownList2" runat="server" class="textbox">
        <asp:ListItem>-Select Department-</asp:ListItem>
         <asp:ListItem>Computer</asp:ListItem>
          <asp:ListItem>Electronics</asp:ListItem>
          <asp:ListItem>Mechanical</asp:ListItem>
          <asp:ListItem>Information Technology </asp:ListItem>
          <asp:ListItem>Civil</asp:ListItem>
        </asp:DropDownList>
        <br />
         <asp:Label class="span" ID="Label8" runat="server" Text="Mobile No*"></asp:Label>
         <br />
         <asp:TextBox ID="TextBox5" runat="server" class="textbox" MaxLength="10"></asp:TextBox>
         <br />
        <br />
        <asp:Label class="span" ID="Label9" runat="server" Text="Email Id*"></asp:Label><br />
    <asp:TextBox ID="TextBox6" runat="server" class="textbox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
    ControlToValidate="TextBox6" ErrorMessage="Required field cannot be left blank."
    Display="Dynamic">
</asp:RequiredFieldValidator>
 
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ErrorMessage="Invalid email address."    ControlToValidate="TextBox6" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
    Display="Dynamic"></asp:RegularExpressionValidator>
  <br />
         <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click2" 
             Width="282px">Click to Check Availabilty Of ID</asp:LinkButton>
    <br />
    <asp:Label  class="span" ID="Label11" runat="server" Text="Address*"></asp:Label><br />
    <asp:TextBox ID="TextBox62" runat="server" class="textbox" Textmode="MultiLine" 
            ></asp:TextBox>
   <br />
   <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
             SelectCommand="SELECT  [id],[fname], [mnane], [lname], [dob], [gender], [sid], [dept], [mob], [email], [pass], [address],[photo] FROM [std_personal]"
             InsertCommand="INSERT INTO [std_personal] ([fname], [mnane], [lname], [dob], [gender], [sid], [dept], [mob], [email], [pass], [address],[photo]) VALUES (@fname, @mnane, @lname, @dob, @gender, @sid, @dept, @mob, @email, @pass, @address,@photo)"
             >
             <InsertParameters>
             <asp:Parameter Type="String" Name="fname" />
             <asp:Parameter Type="String" Name="mnane" />
             <asp:Parameter Type="String" Name="lname" />
             <asp:Parameter Type="DateTime" Name="dob" />
             <asp:Parameter Type="String" Name="gender" />
             <asp:Parameter Type="String" Name="sid" />
             <asp:Parameter Type="String" Name="dept" />
             <asp:Parameter Type="String" Name="mob" />
             
             <asp:Parameter Type="String" Name="email" />
             <asp:Parameter Type="String" Name="pass" />
             <asp:Parameter Type="String" Name="address" />
             <asp:Parameter Type="String" Name="photo" />
             </InsertParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
             SelectCommand="SELECT [id], [x_board], [x_month], [x_year], [x_per], [xii_board], [xii_month], [xii_year], [xii_per], [d_board], [d_month], [d_year], [d_per] FROM [std_academic]"
             InsertCommand="INSERT INTO [std_academic]([x_board], [x_month], [x_year], [x_per], [xii_board], [xii_month], [xii_year], [xii_per], [d_board], [d_month], [d_year], [d_per]) VALUES(@x_board, @x_month, @x_year, @x_per, @xii_board, @xii_month, @xii_year, @xii_per, @d_board, @d_month, @d_year, @d_per)"
             >
             <InsertParameters>
             <asp:Parameter Type="String" Name="x_board" />
             <asp:Parameter Type="String" Name="x_month" />
             <asp:Parameter Type="String" Name="x_year" />
             <asp:Parameter Type="Double" Name="x_per" />
             <asp:Parameter Type="String" Name="xii_board" />
             <asp:Parameter Type="String" Name="xii_month" />
             <asp:Parameter Type="String" Name="xii_year" />
             <asp:Parameter Type="Double" Name="xii_per" />
             <asp:Parameter Type="String" Name="d_board" />
             <asp:Parameter Type="String" Name="d_month" />
             <asp:Parameter Type="String" Name="d_year" />
             <asp:Parameter Type="Double" Name="d_per" />

             
             </InsertParameters>
         </asp:SqlDataSource>
         <br />
   </div>
   <br />
   <div class="box">
   <b><center>Education Qualification</center></b>
   <b>Class 10th *</b><br />
       <asp:Label  class="span" ID="Label12" runat="server" Text="Board"></asp:Label><br />
       <asp:DropDownList ID="DropDownList3" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>SSC</asp:ListItem>
       <asp:ListItem>-ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>

   <br />
   
       <asp:Label class="span" ID="Label13" runat="server" Text="Completion Month*"></asp:Label><br />
       <asp:TextBox ID="TextBox8" runat="server" class="textbox"></asp:TextBox>
   <br />
 <asp:Label class="span" ID="Label14" runat="server" Text="Completion year *"></asp:Label><br />
       <asp:TextBox ID="TextBox9" runat="server" class="textbox"></asp:TextBox>
       <br />
        <asp:Label class="span" ID="Label15" runat="server" Text="Total Marks % *"></asp:Label><br />
       <asp:TextBox ID="TextBox10" runat="server" class="textbox"></asp:TextBox>
       <br />


       <b>Class 12th</b><br />
       <asp:Label class="span" ID="Label16" runat="server" Text="Board *"></asp:Label><br />
    <asp:DropDownList ID="DropDownList4" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>HSC</asp:ListItem>
       <asp:ListItem>-ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>

   <br />
   
       <asp:Label class="span" ID="Label17" runat="server" Text="Completion Month *"></asp:Label><br />
       <asp:TextBox ID="TextBox11" runat="server" class="textbox"></asp:TextBox>
   <br />
 <asp:Label class="span" ID="Label18" runat="server" Text="Completion year *"></asp:Label><br />
       <asp:TextBox ID="TextBox12" runat="server" class="textbox"></asp:TextBox>
       <br />
        <asp:Label class="span" ID="Label19" runat="server" Text="Total Marks % *"></asp:Label><br />
       <asp:TextBox ID="TextBox13" runat="server" class="textbox"></asp:TextBox>
        <br />


       <b>Diploma</b><br />
       <asp:Label  class="span" ID="Label20" runat="server" Text="Board"></asp:Label><br />
       <asp:DropDownList ID="DropDownList5" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>MSBTE</asp:ListItem>
      
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>

   <br />
   
       <asp:Label  class="span" ID="Label21" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox14" runat="server" class="textbox"></asp:TextBox>
   <br />
 <asp:Label class="span" ID="Label22" runat="server" Text="Completion year"></asp:Label><br />
       <asp:TextBox ID="TextBox15" runat="server" class="textbox"></asp:TextBox>
       <br />
        <asp:Label class="span" ID="Label23" runat="server" Text="Total Marks"></asp:Label><br />
       <asp:TextBox ID="TextBox16" runat="server" class="textbox"></asp:TextBox>
 </div>

 <div class="box">
 <a href="#TextBox7">Skip To Password</a>
 <b><center>B.E. Details</center></b>
     <asp:Label class="span1" ID="Label24" runat="server" Text="Select Higher School Certification or Diploma"></asp:Label><br />


     <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
         >
         <asp:ListItem>-Select-</asp:ListItem>
     <asp:ListItem>Diploma</asp:ListItem>
     <asp:ListItem>12th Pass</asp:ListItem>
     </asp:DropDownList>

<br />

<p class="Be-title">B.E-I</p>
<br />
 <asp:Label class="span" ID="Label25" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox17" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label26" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox18" runat="server" class="textbox"></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label27" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox19" runat="server" class="textbox"></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label28" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox20" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label29" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox21" runat="server" class="textbox"></asp:TextBox>
 <p class="Be-title">B.E-II</p>
<br />
 <asp:Label class="span" ID="Label30" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox22" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label31" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox23" runat="server" class="textbox"></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label32" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox24" runat="server" class="textbox"></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label33" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox25" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label34" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox26" runat="server" class="textbox"></asp:TextBox>
 
 <p class="Be-title">B.E-III</p>
<br />
 <asp:Label class="span" ID="Label35" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox27" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label36" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox28" runat="server" class="textbox"></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label37" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox29" runat="server" class="textbox"></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label38" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox30" runat="server" class="textbox"></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label39" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox31" runat="server" class="textbox"></asp:TextBox>
 
 
 <p class="Be-title">B.E-IV</p>
<br />
 <asp:Label class="span" ID="Label40" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox32" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label41" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox33" runat="server" class="textbox" ></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label42" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox34" runat="server" class="textbox" ></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label43" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox35" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label44" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox36" runat="server" class="textbox" ></asp:TextBox>
 
 <p class="Be-title">B.E-V</p>
<br />
 <asp:Label class="span" ID="Label45" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox37" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label46" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox38" runat="server" class="textbox" ></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label47" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox39" runat="server" class="textbox" ></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label48" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox40" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label49" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox41" runat="server" class="textbox" ></asp:TextBox>
 
 <p class="Be-title">B.E-VI</p>
<br />
 <asp:Label class="span" ID="Label50" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox42" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label51" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox43" runat="server" class="textbox" ></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label52" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox44" runat="server" class="textbox" ></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label53" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox45" runat="server" class="textbox" 
          ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label54" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox46" runat="server" class="textbox" ></asp:TextBox>
 
 
 <p class="Be-title">B.E-VII</p>
<br />
 <asp:Label class="span" ID="Label55" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox47" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label56" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox48" runat="server" class="textbox" ></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label57" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox49" runat="server" class="textbox" ></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label58" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox50" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label59" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox51" runat="server" class="textbox" ></asp:TextBox>
 
 <p class="Be-title">B.E-VIII</p>
<br />
 <asp:Label class="span" ID="Label60" runat="server" Text="Completion Year"></asp:Label><br />
<asp:TextBox ID="TextBox52" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label61" runat="server" Text="Completion Month"></asp:Label><br />
<asp:TextBox ID="TextBox53" runat="server" class="textbox" ></asp:TextBox>
 
<br />
 <asp:Label class="span" ID="Label62" runat="server" Text="Total Marks"></asp:Label><br />
<asp:TextBox ID="TextBox54" runat="server" class="textbox" ></asp:TextBox>
<br />
 <asp:Label class="span" ID="Label63" runat="server" Text="Marks Obtain"></asp:Label><br />
<asp:TextBox ID="TextBox55" runat="server" class="textbox" ></asp:TextBox>
 <br />
 <asp:Label class="span" ID="Label64" runat="server" Text="CGPA"></asp:Label><br />
<asp:TextBox ID="TextBox56" runat="server" class="textbox" ></asp:TextBox>
<br />
<br />
<asp:Label class="span"  ID="Label68" runat="server" Text="B.E(Agg)"></asp:Label>
     &nbsp;&nbsp;&nbsp;
     &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
         ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
         SelectCommand="SELECT [id], [I_year], [I_month], [I_total], [I_marks], [I_CGPA], [II_year], [II_month], [II_total], [II_marks], [II_CGPA], [III_year], [III_month], [III_total], [III_marks], [III_CGPA], [IV_year], [IV_month], [IV_total], [IV_marks], [IV_CGPA], [V_year], [V_month], [V_total], [V_marks], [V_CGPA], [VI_year], [VI_month], [VI_total], [VI_marks], [VI_CGPA], [VII_year], [VII_month], [VII_total], [VII_marks], [VII_CGPA], [VIII_year], [VIII_month], [VIII_total], [VIII_marks], [VIII_CGPA], [Agg],[live_kt],[dead_kt] [Class] FROM [std_Sem1]"
         InsertCommand="INSERT INTO [std_Sem1] ([I_month], [I_year], [I_marks], [I_total], [I_CGPA], [II_month], [II_year], [II_marks], [II_total], [II_CGPA], [III_month], [III_year], [III_marks], [III_total], [III_CGPA], [IV_month], [IV_year], [IV_marks], [IV_CGPA], [IV_total], [V_month], [V_marks], [V_total], [V_CGPA], [VI_month], [VI_year], [VI_marks], [VI_total], [V_year], [VI_CGPA], [VII_month], [VII_year], [VII_marks], [VII_total], [VII_CGPA], [VIII_month], [VIII_year], [VIII_marks], [VIII_total], [VIII_CGPA], [Agg],[Class],[live_kt],[dead_kt]) VALUES(@I_month,@I_year,@I_marks, @I_total,@I_CGPA,@II_month,@II_year,@II_marks,@II_total,@II_CGPA,@III_month,@III_year,@III_marks,@III_total,@III_CGPA,@IV_month,@IV_year,@IV_marks,@IV_CGPA,@IV_total,@V_month,@V_marks,@V_total,@V_CGPA,@VI_month,@VI_year,@VI_marks,@VI_total,@V_year,@VI_CGPA,@VII_month,@VII_year,@VII_marks,@VII_total,@VII_CGPA,@VIII_month,@VIII_year,@VIII_marks, @VIII_total, @VIII_CGPA,@Agg,@Class,@live_kt,@dead_kt)"
         >
         <InsertParameters>
         <asp:Parameter Type="String" name="I_month" />
         <asp:Parameter Type="Int32" name="I_year" />
         <asp:Parameter Type="Int32" name="I_marks" />
         <asp:Parameter Type="Int32" name="I_total" />
         <asp:Parameter Type="Double" name="I_CGPA" />
            <asp:Parameter Type="String" name="II_month" />
         <asp:Parameter Type="Int32" name="II_year" />
         <asp:Parameter Type="Int32" name="II_marks" />
         <asp:Parameter Type="Int32" name="II_total" />
         <asp:Parameter Type="Double" name="II_CGPA" /> 
           <asp:Parameter Type="String" name="III_month" />
         <asp:Parameter Type="Int32" name="III_year" />
         <asp:Parameter Type="Int32" name="III_marks" />
         <asp:Parameter Type="Int32" name="III_total" />
         <asp:Parameter Type="Double" name="III_CGPA" />

            <asp:Parameter Type="String" name="IV_month" />
         <asp:Parameter Type="Int32" name="IV_year" />
         <asp:Parameter Type="Int32" name="IV_marks" />
         <asp:Parameter Type="Int32" name="IV_total" />
         <asp:Parameter Type="Double" name="IV_CGPA" />
            <asp:Parameter Type="String" name="V_month" />
         <asp:Parameter Type="Int32" name="V_year" />
         <asp:Parameter Type="Int32" name="V_marks" />
         <asp:Parameter Type="Int32" name="V_total" />
         <asp:Parameter Type="Double" name="V_CGPA" />
            <asp:Parameter Type="String" name="VI_month" />
         <asp:Parameter Type="Int32" name="VI_year" />
         <asp:Parameter Type="Int32" name="VI_marks" />
         <asp:Parameter Type="Int32" name="VI_total" />
         <asp:Parameter Type="Double" name="VI_CGPA" />
         <asp:Parameter Type="String" name="VII_month" />
         <asp:Parameter Type="Int32" name="VII_year" />
         <asp:Parameter Type="Int32" name="VII_marks" />
         <asp:Parameter Type="Int32" name="VII_total" />
         <asp:Parameter Type="Double" name="VII_CGPA" />
          <asp:Parameter Type="String" name="VIII_month" />
         <asp:Parameter Type="Int32" name="VIII_year" />
         <asp:Parameter Type="Int32" name="VIII_marks" />
         <asp:Parameter Type="Int32" name="VIII_total" />
         <asp:Parameter Type="Double" name="VIII_CGPA" />
         <asp:Parameter Type="Double" Name="Agg" />
         <asp:Parameter Type="String" Name="Class" />
         <asp:Parameter Type="Int32" Name="live_kt" />
         <asp:Parameter Type="Int32" Name="dead_kt" />
         </InsertParameters>

         
         </asp:SqlDataSource>
     <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
         Text="Cal agg" />
     <br />
<asp:TextBox ID="TextBox59" runat="server" class="textbox" ></asp:TextBox>
<br />
<asp:Label class="span" ID="Label65" runat="server" Text="Live KTs"></asp:Label><br />
<asp:TextBox ID="TextBox57" runat="server" class="textbox" ></asp:TextBox>
<br />
<asp:Label class="span" ID="Label66" runat="server" Text="Dead Kts"></asp:Label><br />
<asp:TextBox ID="TextBox58" runat="server" class="textbox" ></asp:TextBox>
 <br /><br />
   <br />
    <asp:Label class="span" ID="Label10" runat="server" Text="Password"></asp:Label><br />
    <asp:TextBox ID="TextBox7" runat="server" class="textbox" TextMode="Password" 
             ></asp:TextBox>
    <asp:RegularExpressionValidator ID="Regex5" runat="server" ControlToValidate="TextBox7"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}"
    ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
ForeColor="Red" />
         <br />
    <br />
      <asp:Label class="span"  ID="Label69" runat="server" Text="Re-Password"></asp:Label><br />
    <asp:TextBox ID="TextBox60" runat="server" class="textbox" TextMode="Password" 
            ></asp:TextBox>
    <br />

 </div>
 <br />
 <div class="box12">
     <asp:Button ID="Create" runat="server" onclick="Button3_Click" Text="Create" />
 <br />
 </div>
 </form>
 </body>
 </html>
     