<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TPO | Admin Panel</title>
    <link rel="Stylesheet" href="StyleSheet3.css" />
    <script type = "text/javascript">
        function checkAll(objRef) {
            var GridView = objRef.parentNode.parentNode.parentNode;
            var inputList = GridView.getElementsByTagName("input");
            for (var i = 0; i < inputList.length; i++) {
                //Get the Cell To find out ColumnIndex
                var row = inputList[i].parentNode.parentNode;
                if (inputList[i].type == "checkbox" && objRef != inputList[i]) {
                    if (objRef.checked) {
                        //If the header checkbox is checked
                        //check all checkboxes
                        //and highlight all rows
                        row.style.backgroundColor = "aqua";
                        inputList[i].checked = true;
                    }
                    else {
                        //If the header checkbox is checked
                        //uncheck all checkboxes
                        //and change rowcolor back to original
                        if (row.rowIndex % 2 == 0) {
                            //Alternating Row Color
                            row.style.backgroundColor = "#C2D69B";
                        }
                        else {
                            row.style.backgroundColor = "white";
                        }
                        inputList[i].checked = false;
                    }
                }
            }
        }
</script>
    <style type="text/css">

        .style2
        {
            width: 150px;
        }

        .style6
        {
            width: 251px;
        }
        .style8
        {
            width: 554px;
        }
        .style9
        {
            width: 521px;
        }

        .style10
        {
            height: 67px;
        }
        table 
        {
            border-spacing: 5px;
            margin-left: 33px;
        }
        .style11
        {
            width: 109px;
        }
        .style13
        {
            width: 160px;
        }
    </style>
   
</head>
<body class="admn">
    <form id="form1" runat="server">
    <div class="container">
    <div class="nav">	
	    <ul class="menu">
	        <li><asp:LinkButton ID="LinkButton3" class="list" runat="server" onclick="LinkButton3_Click">Placement</asp:LinkButton></li>
			<li><asp:LinkButton ID="LinkButton4" class="list" runat="server" onclick="LinkButton4_Click">Notification</asp:LinkButton></li>
			<li><asp:LinkButton ID="LinkButton5" class="list" runat="server" onclick="LinkButton5_Click">Report</asp:LinkButton></li>	
			<li><asp:LinkButton ID="LinkButton1" class="list" runat="server" onclick="LinkButton1_Click">Update</asp:LinkButton></li>
			<li><asp:LinkButton ID="LinkButton2" class="list" runat="server" onclick="LinkButton2_Click">View</asp:LinkButton></li>
			
            <li><asp:LinkButton ID="LinkButton6" class="list" runat="server" onclick="LinkButton6_Click">Logout</asp:LinkButton></li>       
         </ul>
			</div>
			<div class="view-list">
				
				<asp:MultiView ID="MultiView1" runat="server">
				

				<asp:View ID="View1" runat="server">
				<table style="margin-left: 207px">
					<tr><td>
						<b>Select Year:-</b><asp:DropDownList ID="DropDownList1" runat="server" 
						DataSourceID="SqlDataSource4" DataTextField="place_year" 
						DataValueField="place_year">
					</asp:DropDownList>
					
					<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
					ConnectionString="<%$ ConnectionStrings:registerConnectionString6 %>" 
					SelectCommand="SELECT DISTINCT place_year FROM placement">
				</asp:SqlDataSource>
			</td>
			<td> 
				
				<b>Select Branch:-</b><asp:DropDownList ID="DropDownList2" runat="server" 
				DataSourceID="SqlDataSource2" DataTextField="place_branch" 
				DataValueField="place_branch">
			</asp:DropDownList>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
			ConnectionString="<%$ ConnectionStrings:registerConnectionString6 %>" 
			SelectCommand="SELECT DISTINCT place_branch FROM placement">
		</asp:SqlDataSource>
	</td>
	<td>
		<b>Select Company:-</b><asp:DropDownList ID="DropDownList3" runat="server" 
		DataSourceID="SqlDataSource3" DataTextField="place_company" 
		DataValueField="place_company">
	</asp:DropDownList>
	<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
	ConnectionString="<%$ ConnectionStrings:registerConnectionString6 %>" 
	SelectCommand="SELECT DISTINCT place_company FROM placement">
</asp:SqlDataSource>
</td>

</tr>
<tr>
	<td>          
		<center>                 
        <asp:Button ID="Button4" runat="server" Text="Report " 
			onclick="Button4_Click" />
            </center>

		</td>  <td>         
		<center>    <asp:Button ID="Button5" runat="server" Text="Report " 
			onclick="Button5_Click" /></center>

		</td>
		<td>               <center>    <asp:Button ID="Button6" runat="server" Text="Report " 
			onclick="Button6_Click" /></center>
		</td>
	</tr>
	<tr>
		<td>
			&nbsp;</td>

			<td>
				&nbsp;</td>

				<td>
					&nbsp;</td>
				</tr>
			</table>
			
			<asp:Chart ID="Chart1" runat="server" Width="488px">
			<series>
				<asp:Series Name="Series1" XValueMember="0" YValueMembers="2">
			</asp:Series>
		</series>
		<chartareas>
			<asp:ChartArea Name="ChartArea1">
		</asp:ChartArea>
	</chartareas>
</asp:Chart>





</asp:View>   
<asp:View ID="View3" runat="server">
<div  class="main" ID="left" style="height: 222px;    margin-top: 50px;
    margin-left: 180px;">
	<div style="float:left; width: 368px; height: 210px;">
		<table>
			<tr>
				<td>
					<asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					
					<asp:Label ID="Label2" runat="server" Text="Information"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox2" runat="server" Width="148px"></asp:TextBox>
				</td>
			</tr>
			
			<tr>
				
				<td>
					<asp:Label ID="Label3" runat="server" Text="Requirement"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox3" runat="server" Width="148px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>               
					<asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox4" runat="server" Width="148px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label10" runat="server" Text="Year"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox10" runat="server" Width="148px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label12" runat="server" Text="Date"></asp:Label>
					
				</td>
				<td>
					<asp:TextBox ID="TextBox16" runat="server" Width="148px" style="    margin-left: 35px;"></asp:TextBox>
					<asp:ImageButton ID="ImageButton1" runat="server" 
					ImageUrl="~/images/calendar_button.gif" Height="29px" 
					Width="30px" />
					<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
				</asp:ToolkitScriptManager>
				<asp:CalendarExtender ID="CalendarExtender1" runat="server" 
				TargetControlID="TextBox16" PopupButtonID="ImageButton1" 
				Format="yyyy-MM-dd">
			</asp:CalendarExtender>
		</td>
	</tr>
</table>
</div>
<div  ID="right" style=" float:left; width: 439px; height: 212px;">
	<table>
		<tr>
			<td>
				<asp:Label ID="Label5" runat="server" Text="10th Criteria"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="TextBox5" runat="server" Width="148px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="Label6" runat="server" Text="12th Criteria"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="TextBox6" runat="server" Width="148px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="Label7" runat="server" Text="Diploma Criteria"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="TextBox7" runat="server" Width="148px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="Label9" runat="server" Text="B.E Criteria"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="TextBox9" runat="server" Width="149px" 
				></asp:TextBox>
			</td>

		</tr>    
		<tr>
			<td>
				<asp:Label ID="Label8" runat="server" Text="Package"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="TextBox8" runat="server" Width="148px" 
				></asp:TextBox>
			</td>
		</tr> 
		<tr>
			<td>
				<asp:Label ID="Label11" runat="server" Text="Time"></asp:Label>  
			</td>
			<td>
				<asp:TextBox ID="TextBox15" runat="server" Width="148px" 
				></asp:TextBox>
			</td>
		</tr>   
	</table>
</div>
</div>   
<center><asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></center>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
ConnectionString="<%$ ConnectionStrings:registerConnectionString5 %>" 
SelectCommand="SELECT [Comp_name], [Comp_info], [Comp_Req], [Comp_10th_crit], [Comp_12th_crit], [Comp_dip_crit], [Comp_be_agg], [Comp_location], [Comp_pkg], [year],[time],[Date] FROM [Company]"

InsertCommand="Insert into [Company] ([Comp_name], [Comp_info], [Comp_Req], [Comp_10th_crit], [Comp_12th_crit], [Comp_dip_crit], [Comp_be_agg], [Comp_location], [Comp_pkg], [year],[time],[Date]) values (@Comp_name,@Comp_info,@Comp_Req,@Comp_10th_crit,@Comp_12th_crit,@Comp_dip_crit,@Comp_be_agg,@Comp_location,@Comp_pkg,@year,@time,@Date)" 
>
<InsertParameters>
	<asp:Parameter Type="String" Name="Comp_name" />
	<asp:Parameter Type="String" Name="Comp_info" />
	<asp:Parameter Type="String" Name="Comp_req" />
	<asp:Parameter Type="Double" Name="Comp_10th_crit" />
	<asp:Parameter Type="Double" Name="Comp_12th_crit" />
	<asp:Parameter Type="Double" Name="Comp_dip_crit" />
	<asp:Parameter Type="Double" Name="Comp_be_agg" />
	<asp:Parameter Type="String" Name="Comp_location" />
	<asp:Parameter Type="String" Name="Comp_pkg" />
	<asp:Parameter Type="String" Name="year" />
	<asp:Parameter Type="String" Name="time" />
	<asp:Parameter Type="String" Name="Date" />
</InsertParameters>

</asp:SqlDataSource>

<br />

</asp:View>
<asp:View ID="View4" runat="server">
<div style="padding-bottom: 20px">
	<table style="width: 1052px; height: 230px;">
		<tr>
			<td>
				<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
				ConnectionString="<%$ ConnectionStrings:registerConnectionString2 %>" 
				SelectCommand="SELECT distinct[Comp_name] FROM [Company]"></asp:SqlDataSource>
			</td>
			<td class="style6" style="margin-top: 18px; display: block">
				Select Company
				
				<asp:DropDownList ID="DropDownList4" runat="server" 
				AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Comp_name" 
				DataValueField="Comp_name" 
				onselectedindexchanged="DropDownList4_SelectedIndexChanged">
			</asp:DropDownList>
		</td>
		<td class="style9">
			Select Branch 
			<asp:DropDownList ID="DropDownList5" runat="server" 
			DataSourceID="SqlDataSource6" DataTextField="dept" DataValueField="dept">

		</asp:DropDownList>
	</td>
	<td class="style8">
		<asp:SqlDataSource ID="SqlDataSource6" runat="server" 
		ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
		SelectCommand="SELECT Distinct[dept] FROM [std_personal]">
	</asp:SqlDataSource>
</td>

</tr>
<tr>
	<td colspan="2" class="style10">
		<center>Select year  <asp:DropDownList ID="DropDownList7" runat="server" 
			DataSourceID="SqlDataSource7" DataTextField="year" 
			DataValueField="year">

		</asp:DropDownList>
		<asp:SqlDataSource ID="SqlDataSource7" runat="server" 
		ConnectionString="<%$ ConnectionStrings:registerConnectionString2 %>" 
		SelectCommand="select distinct year from company"></asp:SqlDataSource>
		&nbsp;
	</center> 
</td>
<td colspan="2" class="style10">
	<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
	style="margin-left: 232px" Text="Search Eligble Candidates" Width="164px" />
</td>
</tr>
<tr>
	<th class="style2">
		10th 
	</th>
	<th class="style6">
		12th 
	</th>
	<th class="style9">
		Diploma
	</th>
	<th class="style8">
		B.E 
	</th>
	
</tr>
<tr>
	<td class="style2">
		
		<asp:TextBox ID="TextBox12" runat="server">0</asp:TextBox>
	</td>
	<td class="style6">
		<asp:TextBox ID="TextBox13" runat="server">0</asp:TextBox>
	</td>
	<td class="style9">
		<asp:TextBox ID="TextBox14" runat="server">0</asp:TextBox>
	</td>
	<td class="style8">
		<asp:TextBox ID="TextBox11" runat="server" >0</asp:TextBox>
	</td>
</tr>
</table>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
PageSize="10">
<Columns>
	<asp:templatefield HeaderText="Select">
	<HeaderTemplate>
		<asp:CheckBox ID="checkAll" runat="server" Text="Select All" onclick = "checkAll(this);" />
	</HeaderTemplate>
	<itemtemplate>
		<asp:CheckBox ID="CheckBox1" runat="server" />
	</itemtemplate>
</asp:templatefield>
<asp:BoundField ItemStyle-Width="150px" DataField="fname" HeaderText="First name" />
<asp:BoundField ItemStyle-Width="150px" DataField="mnane" HeaderText="Middle Name" />
<asp:BoundField ItemStyle-Width="150px" DataField="lname" HeaderText="last Name" />
<asp:BoundField ItemStyle-Width="150px" DataField="dept" HeaderText="Department" />
<asp:BoundField ItemStyle-Width="150px" DataField="mob" HeaderText="Mobile" />
<asp:BoundField ItemStyle-Width="150px" DataField="email" HeaderText="Mail add" />
<asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="ID" />


</Columns>
</asp:GridView>



<asp:Button ID="Button3" runat="server" Text="Send Mail" 
onclick="Button3_Click" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
Text="Send SMS" />




<asp:Button ID="Button8" runat="server" style="margin-left: 73px" 
Text="Update " onclick="Button8_Click1" />




</div>



</asp:View>
<asp:View ID="View2" runat="server">

    <table>
    <tr>
    <td class="style13">
    
    </td>
    <td class="style11">
    Branch
    </td>
    <td>
        <asp:DropDownList ID="DropDownList6" runat="server" 
            DataSourceID="SqlDataSource8" DataTextField="place_branch" 
            DataValueField="place_branch">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
            SelectCommand="SELECT DISTINCT place_branch FROM placement"></asp:SqlDataSource>
    </td>
 <td>
 Company
 </td>
 <td>
 <asp:DropDownList ID="DropDownList8" runat="server" 
            DataSourceID="SqlDataSource9" DataTextField="place_year" 
            DataValueField="place_year">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
            ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
            SelectCommand="SELECT DISTINCT place_year FROM placement"></asp:SqlDataSource>
 </td>
 
  
    <td>
        <asp:Button ID="Button9" runat="server" Text="Search" onclick="Button9_Click" />
        </td>
    </tr>
    </table>
    <asp:GridView ID="GridView2" runat="server" Width="298px">
    </asp:GridView>

 </asp:View>


</asp:MultiView>

</div>
</div>
</form>
</body>
</html>
  