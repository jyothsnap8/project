<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseeker_reg3.aspx.cs" Inherits="jobseeker_reg3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
     <div class="w3-content" style="max-width:600px">

    <div class="w3-container w3-card-2 w3-indigo">
    <h1>Educational Details</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>10<sup>th</sup> Class %</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>12<sup>th</sup> Class %</h3>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>Graduation</h3>
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">B.E.</asp:ListItem>
                                <asp:ListItem Value="2">B.com</asp:ListItem>
                                <asp:ListItem Value="3">B.Sc</asp:ListItem>
                                <asp:ListItem Value="4">B.B.A</asp:ListItem>
      </asp:DropDownList>
      
  </li>
   <li>
    <h3>Institute Name</h3>
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      
  </li>
   <li>
    <h3>Percentage (%)</h3>
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      
  </li>
   <li>
    <h3>Post Graduation</h3>
       <asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem Value="0">select</asp:ListItem>
                                <asp:ListItem Value="1">M.E</asp:ListItem>
                                <asp:ListItem Value="2">M.Com</asp:ListItem>
                                <asp:ListItem Value="3">M.C.A</asp:ListItem>
                                <asp:ListItem Value="4">M.B.A</asp:ListItem>
                                 <asp:ListItem Value="5">Null</asp:ListItem>

       </asp:DropDownList>
      
  </li>
   <li>
    <h3>Institute Name</h3>
       <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
      
  &nbsp; type null if no post graduation</li>
   <li>
    <h3>Percentage (%)</h3>
       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
      
  &nbsp; type 0 if no post graduation percentage</li>
  <li>
  <h3>Doctorate/PhD</h3>
      <asp:DropDownList ID="DropDownList3" runat="server">
         <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Ph.D/Doctorate</asp:ListItem>
                                <asp:ListItem Value="2">MPHIL</asp:ListItem>
                                <asp:ListItem Value="3">Other</asp:ListItem>
      </asp:DropDownList>

  &nbsp;

  </li>
  <li>
  
  <h3>Institute Name</h3>
      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

  &nbsp; type null if no post graduation</li>
  <li>
  <h3>Percentage (%)</h3>
      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

  &nbsp; type 0 if no phd percentage</li>
  <li>
  <h3>Certification Course</h3>
      <asp:TextBox ID="TextBox9" runat="server" TextMode ="MultiLine"></asp:TextBox>

  </li>
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="NEXT" onclick="Button1_Click" 
          Font-Bold="True" Font-Size="Larger" ForeColor="Blue" />
  
  </li>
</ul>

  <div class="w3-container w3-indigo w3-xlarge">
   <h5>Job Portal</h5>
  </div>

    
  </div>
    </form>
</asp:Content>

