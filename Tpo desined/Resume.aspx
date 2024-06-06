<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function printData() {
            var divToPrint = document.getElementById("print");
            newWin = window.open("", "newWin");
            newWin.document.write(divToPrint.outerHTML);
            setTimeout(function () {
                newWin.print();
            }, 1000)
            // newWin.close();
        }

        $('button').on('click', function () {
            printData();
        })

</script> 

    <link rel="Stylesheet" href="css/StyleSheet.css" />
    <style type="text/css">
        .style1
        {
            height: 50px;
            width: 1175px;
        }
        .style2
        {
            height: 58px;
        }
        .style5
        {
            width: 33px;
        }
        .style6
        {
            width: 135px;
        }
        .style8
        {
            width: 163px;
        }
        .style9
        {
            height: 60px;
            width: 56px;
        }
        .style11
        {
            width: 318px;
        }
        .style12
        {
            width: 500px;
        }
        .style14
        {
            height: 44px;
            width: 56px;
        }
        .style15
        {
            width: 534px;
        }
        .style17
        {
            width: 160px;
        }
        .style18
        {
            width: 56px;
        }
        .style20
        {
            width: 220px;
        }
        .style21
        {
            width: 1300px;
        }
        </style>
</head>
<body>
<input type="button" onclick="printData()" id="btnPrint" value="Print"/><form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<table style="height: 191px" id="print" border="1">
  <tr>
  <td style="background-color:Gray; " class="style1" colspan="2">
   <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/dmce.jpg" 
            Width="114px" />
  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume</b>
  </td>
  </tr>
 <tr>
  <td ; class="style9" colspan="2">
  
            
       <table>
       <tr>
    <td class="style20">
    <asp:Image ID="Image2" runat="server" Width="84px" />
    </td>
    <td class="style21">
    <p style="float:right; width: 161px; height: 81px;";>
                Name: <asp:Label ID="fname" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="lname" runat="server" Text=""></asp:Label><br />
    
    Email:<asp:Label ID="mail" runat="server" Text=""></asp:Label><br />
    Mob no:<asp:Label ID="mob" runat="server" Text=""></asp:Label>
    </p>
    </td>

           </tr>
           </table>
            </td>
          
  </tr>
  <tr>
  <td colspan="2" class="style2">
   <b> Career Objective</b><br />
   <asp:Label ID="career" runat="server" Text=""></asp:Label>
  </td>
  
  </tr>
  <tr>
  
  <td colspan="2">
  <table style="width: 1077px" border="1">
  <tr>
  <td class="style5"> <b>B.E</b></td>
  <td class="style6">
    <asp:Label ID="BE_month" runat="server" Text=""></asp:Label><asp:Label ID="Be_year" runat="server" Text=""></asp:Label>
      </td>
  <td>
   <b> SEM 8</b>
   <br />
   (<asp:Label ID="sem8marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem8total" runat="server" Text=""></asp:Label>)
  </td>
  <td class="style8">
     <b>SEM 7</b><br />
    (<asp:Label ID="sem7marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem7total" runat="server" Text=""></asp:Label>)
    </td>
    <td rowspan="4" >
    <b>Datta Meghe College of Engineering,Airoli</b>
    </td>
    <td rowspan="4" class="style17">
     <asp:Label ID="Beagg" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="classab" runat="server"></asp:Label>
    </td>
    
  </tr>
  <tr>
    <td>
    <b>T.E</b>
    </td>
    <td>
     <asp:Label ID="temonth" runat="server" Text=""></asp:Label>
    <asp:Label ID="teyear" runat="server" Text=""></asp:Label>
    </td>
    <td>
   <b> SEM 6</b>
   <br />
   (<asp:Label ID="sem6marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem6total" runat="server" Text=""></asp:Label>)
    </td>
    <td>
    <b>SEM 5</b><br />
    (<asp:Label ID="sem5marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem5total" runat="server" Text=""></asp:Label>)
    </td>
   
   
    </tr>
    <tr>
    <td>
    <b>S.E</b>
    </td>
    <td>
     <asp:Label ID="semonth" runat="server" Text=""></asp:Label>
    <asp:Label ID="seyear" runat="server" Text=""></asp:Label>
    </td>
    <td>
   <b> SEM 4</b>
   <br />
   (<asp:Label ID="sem4marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem4total" runat="server" Text=""></asp:Label>)
    </td>
    <td>
    <b>SEM 3</b><br />
    (<asp:Label ID="sem3marks" runat="server" Text=""></asp:Label>/<asp:Label ID="sem3total" runat="server" Text=""></asp:Label>)
    </td>
   
   
    </tr>
    <tr>
    <td>
    <b>F.E</b>
    </td>
    <td>
     <asp:Label ID="Femonth" runat="server" Text=""></asp:Label>
    <asp:Label ID="feyear" runat="server" Text=""></asp:Label>
    </td>
    <td>
   <b> SEM 2</b>
   <br />
   (<asp:Label ID="secondmarks" runat="server" Text=""></asp:Label>/<asp:Label ID="secondtotal" runat="server" Text=""></asp:Label>)
    </td>
    <td>
    <b>SEM 1</b><br />
    (<asp:Label ID="firstmarks" runat="server" Text=""></asp:Label>/<asp:Label ID="firsttotal" runat="server" Text=""></asp:Label>)
    </td>
   
   
    </tr>
    <tr>
    <td>
    <b>HSC</b>
    </td>
    <td>
    <asp:Label ID="hscmonth" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="hscyear" runat="server" Text=""></asp:Label>
    </td>
    <td colspan="3">
    
    </td>
    <td class="style17">
     <asp:Label ID="hscper" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
    <b>SSC</b>
    </td>
    <td>
    <asp:Label ID="sscmonth" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="sscyear" runat="server" Text=""></asp:Label>
    </td>
    <td colspan="3">
    
    </td>
    <td class="style17">
     <asp:Label ID="sscper" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    </table>
   </td>
   </tr>
   <tr>
   <td class="style18">
   <center>Technology</center>
   </td>
   </tr>
   <tr>   <td class="style18">
   <center>
   <table style="height: 3px; width: 470px;">
   <tr>
   <td class="style11">
   Operating System
   </td>
   <td class="style12">
   <asp:Label ID="operatingsys" runat="server" Text=""></asp:Label>
   </td>
   </tr>
   <tr>
   <td class="style11">
   Languages
   </td>
   <td class="style12">
   <asp:Label ID="Lang" runat="server" Text=""></asp:Label>
   </td>
   </tr>
   <tr>
   <td class="style11">
   Tools
   </td>
   <td class="style12">
   <asp:Label ID="tools" runat="server" Text=""></asp:Label>
   </td>
   </tr>
   <tr>
   <td class="style11">
   Database
   </td>
   <td class="style12">
   <asp:Label ID="database" runat="server" Text=""></asp:Label>
   </td>
   </tr>
   </table>
       
   </center>
   </td>
   </tr>
  <tr>
  <td class="style14">
  B.E Project
  </td>
  
  </tr>
  <tr>
  <td class="style18">
  <table style="width: 465px">
  <tr>
  <td class="style11">
  <b>Title</b>
  </td>
  <td class="style15">
  
      <asp:Label ID="prj_title" runat="server" ></asp:Label>
  </td>
  </tr>
  <tr>
  <td class="style11">
  <b>Role</b>
  </td>
  <td class="style15">
  
      <asp:Label ID="Role" runat="server" ></asp:Label>
  </td>
  </tr>
  <tr>
  <td class="style11">
  <b>Descriptiom</b>
  </td>
  <td class="style15">
  
      <asp:Label ID="descp" runat="server" ></asp:Label>
  </td>
  </tr>
  </table>
  </td>
  
  </tr>
   
   <tr>
   <td class="style18">
   <b>Personal Information</b>
   
   </td>
   </tr>
   <tr>
   <td class="style18">
   Date Of Birth:<asp:Label ID="dob" runat="server" ></asp:Label>
   </td>
   
   </tr>
   <tr>
   <td class="style18">
   Nationality: Indian
   </td>
   
   </tr>
   <tr>
   <td class="style18">
   Gender:<asp:Label ID="gender" runat="server" ></asp:Label>
   </td>
   
   </tr>
   <tr>
   <td class="style18">
   Passport:<asp:Label ID="Label2" runat="server" ></asp:Label>
   </td>
   
   </tr>
    <tr>
   <td class="style18">
   Address:<asp:Label ID="address" runat="server" ></asp:Label>
   </td>
   
   </tr>
   <tr>
   <td class="style18">
   Interest And Hobbies:

       <asp:Label ID="interest" runat="server"></asp:Label>

   </td>
       
   
   </tr>
   
   
  </table>
   
  
 
    
    </form>
</body>
</html>
