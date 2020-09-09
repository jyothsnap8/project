<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseeker_reg2.aspx.cs" Inherits="jobseeker_reg2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<form id="form1" runat="server">
    <div class="w3-content" style="max-width:600px">


    <div class="w3-container w3-card-2 ">
  <h1>Personal Details </h1> <p style="Text-align:center">
      <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
            Font-Size="Larger"></asp:Label></p>
</div>

<ul class="w3-ul">
  <li>
    <h3>Security Question</h3>
      <asp:DropDownList ID="DropDownList1" runat="server">
      </asp:DropDownList>
  </li>
  <li>
    <h3>Answer</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>FirstName	</h3>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </li>

  <li>
    <h3>MiddleName	</h3>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>LastName	</h3>
      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>Gender	</h3>
      <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
      <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
  </li>
  <li>
    <h3>D.O.B	</h3>
      <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
      
      <cc1:CalendarExtender runat="server" TargetControlID="Textbox5" Enabled="true">
      </cc1:CalendarExtender>
      <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
  </li>
  <li>
    <h3>Location	   Country&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;        State&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             City&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
        </asp:DropDownList>
  </li>
  <li>
    <h3>Full Address	</h3>
      <asp:TextBox ID="TextBox6" runat="server" TextMode ="MultiLine"></asp:TextBox>
  </li>

  <li>
    <h3>Contact No.	</h3>
      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>Email	</h3>
      <asp:TextBox ID="TextBox8" runat="server" TextMode="Email"></asp:TextBox>
  </li>
  <li><h3>Profile Date	</h3>
      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
  </li>
  <li> 
  
  </li>
  <li>  
      <asp:Button ID="Button1" runat="server" Text="Next" Font-Bold="True" 
          Font-Size="X-Large" ForeColor="#0033CC" Height="44px" onclick="Button1_Click" 
          Width="101px" /></li>
</ul>

<div class="w3-container w3-indigo w3-xlarge">
  <h5>Job Portal</h5>
</div>
    
    </div>
    </form>
</asp:Content>


