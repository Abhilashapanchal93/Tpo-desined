<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aptitude.aspx.cs" Inherits="aptitude" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="css/a.css" />
    <title>Aptitude</title>
     <link rel="Stylesheet" href="css/StyleSheet.css" />
    <script type="text/javascript">
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();

            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });

            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
	</script>
   
  <script language="javascript" type="text/javascript">
  document.onmousedown = disableclick;
  status = "Right Click Disabled";
  Function disableclick(e)
  {
    if(event.button == 2)
    {
      alert(status);
      return false; 
    }
  }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <ul> 
    <li>
    <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Back</asp:LinkButton>
    </li> 
    <li>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </li>  
        
     </ul>

      <div class="container" style="float:left;">
<div class="profile-container unfold">
<div class="profile">
<div class="avatar"><img src="Images/Top-Programming-languages1.png" alt="img" height="200px" width="200px" /></div>
<div class="follow"><button><i class="icon-plus"></i> Go For Test</button></div>
</div>
<ul class="profile-list">
<li class="first">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">c++</asp:LinkButton></li>
<li class="second"><asp:LinkButton ID="LinkButton2" runat="server" 
        onclick="LinkButton2_Click">C</asp:LinkButton></li>
<li class="third"><asp:LinkButton ID="LinkButton3" runat="server" 
        onclick="LinkButton3_Click">C#</asp:LinkButton></li>
<li class="fourth"><asp:LinkButton ID="LinkButton4" runat="server" 
        onclick="LinkButton4_Click">JAVA</asp:LinkButton></li>
<li class="fourth"><asp:LinkButton ID="LinkButton5" runat="server" 
        onclick="LinkButton5_Click">JAVA Script</asp:LinkButton></li>
</ul>
</div>

        </div>
    <div class="container" style="float:left;">

<div class="profile-container unfold">
<div class="profile">
<div class="avatar"><img src="images/Database.png" alt="img" height="200px" width="200px" /></div>
<div class="follow"><button><i class="icon-plus"></i>Go For Test</button></div>
</div>
<ul class="profile-list">
<li class="first"><asp:LinkButton ID="LinkButton6" runat="server" 
        onclick="LinkButton6_Click">SQL</asp:LinkButton></li>
<li class="second"><asp:LinkButton ID="LinkButton7" runat="server" 
        onclick="LinkButton7_Click">ORACLE</asp:LinkButton></li>

</ul>
</div>

</div>
 <div class="container" style="float:left;">

<div class="profile-container unfold">
<div class="profile">
<div class="avatar"><img src="images/quants.jpg" height="200px" width="200px" /></div>
<div class="follow"><button><i class="icon-plus"></i>Go For Test</button></div>
</div>
<ul class="profile-list">
<li class="first">
    <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click" 
        >Train Problems</asp:LinkButton></li>
<li class="second"><asp:LinkButton ID="LinkButton9" runat="server" 
        onclick="LinkButton9_Click">Time & Distance</asp:LinkButton></li>

</ul>
</div>

</div>
 <div class="container" style="float:left;">

<div class="profile-container unfold">
<div class="profile">
<div class="avatar"><img src="images/ENG.jpg" height="200px" width="200px" /></div>
<div class="follow"><button><i class="icon-plus"></i>Go For Test</button></div>
</div>
<ul class="profile-list">
<li class="first">
    <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click" 
        >English</asp:LinkButton></li>


</ul>
</div>

</div>
   
   

    &nbsp;
   
   

    </form>
</body>
</html>
