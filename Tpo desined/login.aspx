<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TPO | Login Page</title>
    <link rel="Stylesheet" href="css/StyleSheet.css" />
    <script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }

        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
</script>
</head>
<body class="login-page">
    <h1>Datta Meghe College of Engineering</h1>
    <form id="form1" runat="server">
   
    <div style="margin-left:950px;">
      
    
    </div>
    <div class="login">
        <h2>Sign Up</h2>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><asp:TextBox 
            ID="username" runat="server" Width="260px" placeholder="Email_Id"></asp:TextBox>
        <br /><br /><br />
        <asp:Label ID="Label2" runat="server" Text="" TextMode="Password"></asp:Label>
        <asp:TextBox ID="password" runat="server" Width="260px" EnableViewState="False" TextMode="Password" placeholder="Password"
           ></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" 
            runat="server" Text="Login" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button2" runat="server" Text="Forgot Password" Width="114px" 
            onclick="Button2_Click" /><br/>
              <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">New Register</asp:LinkButton>
    </div>
    <div>
        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="View1" runat="server">
            <table class="table1">
            <tr>
                
            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your emailid"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
            </n>
            <td>
         <asp:Button ID="Button3" class="submit" runat="server" Text="Submit" 
                    onclick="Button3_Click1" />
            
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            
            </td>
            </tr>
            
            </table>


            </asp:View>
        </asp:MultiView>
    
    
    
    </div>
    </form>
</body>
</html>
