<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepanel.aspx.cs" Inherits="updatepanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TPO | UpdatePanel</title>
      <link rel="Stylesheet" href="css/StyleSheet.css" />
</head>
<body ID="update" class="std-pnl">
    <form id="form1" runat="server">
   <div class="box">
   
   <ul>
      <li>  
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Personal</asp:LinkButton></li>
       <li> <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Academic</asp:LinkButton></li>
        <li><asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">B.E</asp:LinkButton></li>
        <li><asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Projects And Internship</asp:LinkButton></li>
       <li>  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Logout</asp:HyperLink></li>
      </ul>
      <br />
      <br />
      <div style="margin-left: 449px;">
       Enter Unique ID :<asp:TextBox ID="TextBox70" runat="server"></asp:TextBox> 
       <asp:Button ID="Button5" class="rupesh" runat="server" Text="Search" onclick="Button5_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Delete" />
       </div>
&nbsp;<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
            
    
      <br />
        
        <br />
        <br />
        <asp:Label  class="up-span" ID="Label3" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"  class="textbox"></asp:TextBox>
        <br />
          <br />
        <br />
        <asp:Label  class="up-span" ID="Label4" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"  class="textbox"></asp:TextBox>
        <br />
     <br />
        <br />
        <asp:Label class="up-span" ID="Label5" runat="server" Text="Middle Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"  class="textbox"></asp:TextBox>
        <br />
          <br />
        <br />
        <asp:Label class="up-span" ID="Label6" runat="server" Text="Date of Birth"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"  class="textbox"></asp:TextBox>

        <br />
               <br />
        <br />
        <asp:Label class="up-span" ID="Label7" runat="server" Text="Gender"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>-Select Gender-</asp:ListItem>
         <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <br />
           <br />
        <br />
        <asp:Label class="up-span" ID="Label8" runat="server" Text="College Roll No"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"  class="textbox"></asp:TextBox>

        <br />
        
               <br />
        <br />
        <asp:Label class="up-span" ID="Label9" runat="server" Text="Department"></asp:Label>
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
        <asp:Label class="up-span" ID="Label10" runat="server" Text="Mobile No"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"  class="textbox"></asp:TextBox>

        <br />
          <br />
        <br />
        <asp:Label class="up-span" ID="Label11" runat="server" Text="Email id"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"  class="textbox"></asp:TextBox>

        <br />
          <br />
        <br />
        <asp:Label class="up-span" ID="Label12" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"  class="textbox"></asp:TextBox>

        <br />
           <br />
        <br />
        <asp:Label class="up-span" ID="Label13" runat="server" Text="Re-Password"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"  class="textbox"></asp:TextBox>

        <br />
            <br />
        <br />
        <asp:Label class="up-span" ID="Label14" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"  class="textbox"></asp:TextBox>

        <br />
        <br />
<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label class="up-span" ID="Label70" runat="server" Text="Label"></asp:Label>

        <br />
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="upload" 
                    style="height: 26px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"  
            Text="Update Info" onclick="Button1_Click1" />

        <br />

   
            
            </asp:View>
            <asp:View ID="View2" runat="server">
        <br />
     <br />

        <asp:Label class="up-span" ID="Label2" runat="server" Text="Class Xth Board"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" class="textbox">
        <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>SSC</asp:ListItem>
       <asp:ListItem>-ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    <asp:Label class="up-span" ID="Label15" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox12" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label16" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox13" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label17" runat="server" Text="Total Marks"></asp:Label><br />
       <asp:TextBox ID="TextBox14" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label18" runat="server" Text="Class XIIth Board"></asp:Label><br />
        <asp:DropDownList ID="DropDownList4" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>CBSE</asp:ListItem>
       <asp:ListItem>HSC</asp:ListItem>
       <asp:ListItem>-ICSE</asp:ListItem>
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>
   <br />
       <br />
    <br />
    <asp:Label class="up-span" ID="Label19" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox15" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label20" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox16" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label21" runat="server" Text="Total Marks"></asp:Label><br />
       <asp:TextBox ID="TextBox17" runat="server" class="textbox"></asp:TextBox>
        <br />
    <br />
    <asp:Label class="up-span" ID="Label22" runat="server" Text="Diploma Board"></asp:Label><br />
        <asp:DropDownList ID="DropDownList5" runat="server" class="textbox">
       <asp:ListItem>-Select Board-</asp:ListItem>
       <asp:ListItem>MSBTE</asp:ListItem>
      
       <asp:ListItem>OTHER</asp:ListItem>
       </asp:DropDownList>
   <br />
       <br />
    <br />
    <asp:Label class="up-span" ID="Label23" runat="server" Text="Completion Month"></asp:Label><br />
       <asp:TextBox ID="TextBox18" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label24" runat="server" Text="Completion Year"></asp:Label><br />
       <asp:TextBox ID="TextBox19" runat="server" class="textbox"></asp:TextBox>
   <br />
   <br />
    <br />
    <asp:Label class="up-span" ID="Label25" runat="server" Text="Total Marks"></asp:Label><br />
       <asp:TextBox ID="TextBox20" runat="server" class="textbox"></asp:TextBox>

      <br />
      <br />
      <center>
      <asp:Button ID="Button2" runat="server" Text="update info" 
              Width="124px" onclick="Button2_Click1" /></center>
           
            </asp:View>
            
            <asp:View ID="View3" runat="server">
           
                <br />

                <asp:Label class="up-span" ID="Label26" runat="server" Text="1st Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox21" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label27" runat="server" Text="1st Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox22" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label28" runat="server" Text="1st Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox23" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label29" runat="server" Text="1st Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox24" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label30" runat="server" Text="1st Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox25" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label31" runat="server" Text="2nd Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox26" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label32" runat="server" Text="2nd Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox27" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label33" runat="server" Text="2nd Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox28" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label34" runat="server" Text="2nd Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox29" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label36" runat="server" Text="2nd Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox30" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label37" runat="server" Text="3rd Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox60" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label38" runat="server" Text="3rd Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox31" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label39" runat="server" Text="3rd Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox32" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label40" runat="server" Text="3rd Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox33" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label41" runat="server" Text="3rd Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox34" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label42" runat="server" Text="4th Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox35" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label43" runat="server" Text="4th Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox36" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label44" runat="server" Text="4th Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox37" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label45" runat="server" Text="4th Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox38" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label46" runat="server" Text="4th Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox39" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label47" runat="server" Text="5th Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox40" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label48" runat="server" Text="5th Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox41" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label49" runat="server" Text="5th Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox42" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label50" runat="server" Text="5th Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox43" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label51" runat="server" Text="5th Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox44" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label52" runat="server" Text="6th Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox45" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label53" runat="server" Text="6th Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox46" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label54" runat="server" Text="6th Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox47" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label55" runat="server" Text="6th Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox48" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label56" runat="server" Text="6th Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox49" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label57" runat="server" Text="7th Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox50" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label58" runat="server" Text="7th Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox51" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label59" runat="server" Text="7th Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox52" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label60" runat="server" Text="7th Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox53" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label61" runat="server" Text="7th Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox54" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label62" runat="server" Text="8th Sem year"></asp:Label><br />

                <asp:TextBox ID="TextBox55" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label63" runat="server" Text="8th Sem month"></asp:Label><br />

                <asp:TextBox ID="TextBox56" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label64" runat="server" Text="8th Sem Total"></asp:Label><br />

                <asp:TextBox ID="TextBox57" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
               
                <br />

                <asp:Label class="up-span" ID="Label65" runat="server" Text="8th Sem marks"></asp:Label><br />

                <asp:TextBox ID="TextBox58" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
                
                <br />

                <asp:Label class="up-span" ID="Label66" runat="server" Text="8th Sem CGPA"></asp:Label><br />

                <asp:TextBox ID="TextBox59" runat="server" class="textbox"></asp:TextBox>

                <br />
                <br />
            
                <br />

                <asp:Label class="up-span" ID="Label67" runat="server" Text="Academic Achivements" Visible="False"></asp:Label><br />

                <asp:TextBox ID="TextBox61" runat="server" class="textbox" Visible="False"></asp:TextBox>

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Update Info" />
                <br />
     </asp:View>
     <asp:View ID="View4" runat="server">
      <asp:Label  class="up-span" ID="Label35" runat="server" Text="B.E Project Title" ></asp:Label><br />
         <asp:TextBox ID="TextBox1" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
           <asp:Label class="up-span" ID="Label68" runat="server" Text="B.E Project Desciption" ></asp:Label><br />
         <asp:TextBox ID="TextBox62" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
           <asp:Label class="up-span" ID="Label69" runat="server" Text="B.E Project Role" ></asp:Label><br />
         <asp:TextBox ID="TextBox63" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
          <asp:Label class="up-span" ID="Label71" runat="server" Text="Operating System" ></asp:Label><br />
         <asp:TextBox ID="TextBox64" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
          <asp:Label class="up-span" ID="Label72" runat="server" Text="Languages" ></asp:Label><br />
         <asp:TextBox ID="TextBox65" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
          <asp:Label class="up-span" ID="Label73" runat="server" Text="Tools" ></asp:Label><br />
         <asp:TextBox ID="TextBox66" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
          <asp:Label class="up-span" ID="Label74" runat="server" Text="Database" ></asp:Label><br />
         <asp:TextBox ID="TextBox67" runat="server" class="textbox"></asp:TextBox>
         <br />
         <br />
         Career Objective<br />
         <asp:TextBox ID="TextBox68" runat="server" class="textbox"></asp:TextBox>
         <br />
          <br />
         <br />
         Interest And Hobbies<br />
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
