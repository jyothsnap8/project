<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseeker_reg1.aspx.cs" Inherits="jobseeker_reg1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
    <div class="w3-content" style="max-width:600px">

    <div class="w3-container w3-card-2 w3-indigo">
    <h1>Job Seeker Registraion</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>UserName</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator
          ID="RequiredFieldValidator3"  runat="server"    ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
  </li>
  <li>
    <h3>Password</h3>
      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
  </li>
  <li>
    <h3>Confirm Passwrod</h3>
      <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ControlToValidate="TextBox3" ErrorMessage="error *" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" 
          ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
          ErrorMessage="Not match paswd" ForeColor="Red"></asp:CompareValidator>
  </li>
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
  
  </li>
</ul>

  <div class="w3-container w3-indigo w3-xlarge">
   <h5>Job Portal</h5>
  </div>

    
  </div>
    </form>
</asp:Content>


