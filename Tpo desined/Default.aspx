<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 153px;
        }
        .style4
        {
            width: 853px;
        }
    </style>
    
    <script type = "text/javascript">
        function startTimer() {

            return $find('Timer1')._startTimer();

        }
        function stopTimer() {
            return $find('Timer1')._stopTimer();
        }
    </script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="keyword"  content="pan,aadhar,income,passport,railway,epf,government,rti,scholarship"/>
<meta name="descriptin" content="apply for various status"/>
   <link rel="Stylesheet" href="StyleSheet3.css" />
	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>
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
    <link rel="Stylesheet" href="css/StyleSheet.css" />
  <script language="javascript">
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
</scipt> 


<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    </head>
<body>
    <form id="form1" runat="server">

      <div class="margin1" style="float:left;">
     <ul class="menu">
      <li><asp:LinkButton ID="LinkButton6" class="list" runat="server" onclick="LinkButton6_Click">Test</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton7" class="list" runat="server" onclick="LinkButton7_Click">Practice</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton2" class="list" runat="server" onclick="LinkButton2_Click">Back</asp:LinkButton></li>  
      <li> <asp:Label ID="Label13" runat="server" Text=""></asp:Label></li>  
       </ul>
       <div class="view-list">
          <asp:MultiView ID="MultiView1" runat="server">
              <asp:View ID="View1" runat="server">
                       
    <asp:ScriptManager ID="ScriptManager1" runat="server"> 

                   </asp:ScriptManager>
                   <center>
    <div>
        
   
        <div>
        
   <br />
   <br />
   <br />
        <table class="style1">
            <tr>
                <td class="style2" style="width:50px;">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">    

                      <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Enabled="false" Interval="1000"
                                ontick="Timer1_Tick">
                            </asp:Timer>
                            <asp:Label ID="lblmin2" runat="server" Text="0"></asp:Label>
                            <asp:Label ID="lblmin1" runat="server" Text="0"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
                            <asp:Label ID="lblsec2" runat="server" Text="0"></asp:Label>
                            <asp:Label ID="lblsec1" runat="server" Text="0"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                   
                </td>
                <td>
                <table>
                <tr>
                <td>
                    <asp:Button ID="btnstart" runat="server" OnClientClick ="startTimer()" Text="Start"
                        Width="160px" onclick="Button1_Click" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        </td>
</tr>
                
                        </table>
                </td>
                

            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton1" class="list" runat="server" onclick="LinkButton1_Click" 
                        Visible="False">See the Answer</asp:LinkButton>
                </td>
                <td>
                    &nbsp;<br />
                    <br />
&nbsp;Right Ans:&nbsp;
                    <asp:Label ID="Label8" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; Wrong ans:<asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td>
                
                    &nbsp;</td>
            </tr>

        </table>
        <asp:Panel ID="Panel1" runat="server" class="panel">
       
<table border="0" class="tableapp">
<tr>
<td>
<center></center>
    
</td>

</tr>
<tr>
<td class="questapp">
    &nbsp;&nbsp;
    <asp:Label ID="Label30" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>

</td>
</tr>
<tr>
<td style="height:30px;" >
    <asp:RadioButton ID="RadioButton1" runat="server" 
         GroupName="radio" Visible="false" oncheckedchanged="RadioButton1_CheckedChanged" 
         />
        <br />
</td>
</tr>
<tr>
<td style="height:30px;">
    <asp:RadioButton ID="RadioButton2" runat="server" 
       GroupName="radio" Visible="false" 
       S oncheckedchanged="RadioButton2_CheckedChanged"/>
        <br />
</td>
</tr>
<tr>
    <td style="height:30px;">
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="radio" 
       Visible="false" oncheckedchanged="RadioButton3_CheckedChanged"  />
            <br />
    </td>
    </tr>
    <tr>
        <td style="height:30px;">
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="radio" 
                 type="radio"  Visible="false" oncheckedchanged="RadioButton4_CheckedChanged" 
              />
                <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            </tr>
    <tr>

            <td>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                 Text="Submit" style="margin-left: 81px" Width="109px" />
                 </td>
                 </tr>
                 <tr>
                 <td>
                     &nbsp;</td>
                 </tr>
                  <tr>
                 <td>
                 <br />
                 <br />
            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                Text="Check Score" style="margin-left: 85px" Width="101px" />
        </td>
    </tr>

    
</table>
 </asp:Panel>
 </div>

   
    </div>
   
    </center>

              </asp:View>
              <asp:View ID="View2" runat="server">

                  Work In progress please have patience.!!!!!!!
          </asp:View>
              <asp:View ID="View3" runat="server">
              <table border="1">             
               <tr>
              <td class="style4">
                  Q.1 <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
              
              </td>
              
              </tr>
                <tr>
              <td class="style4">
              Ans: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
              </td>
              
              </tr>
                <tr>
              <td class="style4">
             Q.2 <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
              </td>
              
              </tr>
                <tr>
              <td class="style4">
Ans: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
              </td>
              
              </tr>
              <tr>
              <td class="style4">
               Q.3 <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
               
              </td>
              
              </tr>
                  
                      Answers<tr>
                          <td class="style4">
                              Ans:&nbsp;
                              <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.4
                              <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:&nbsp;
                              <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.5
                              <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:
                              <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.6:
                              <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:&nbsp;
                              <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.7
                              <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:&nbsp;
                              <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.8 :
                              <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:
                              <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.9&nbsp;
                              <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:
                              <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Q.10
                              <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="style4">
                              Ans:
                              <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                          </td>
                      </tr>
                    
                  </caption>
             </table>

          </asp:View>
          </asp:MultiView>
          
          </div>
</div>
</form>

</body>
</html>
