<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseeker_login.aspx.cs" Inherits="jobseeker_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat=server style="text-align:center">
<div class="w3-half">
           <p><strong>Jobseeker Login Form</strong></p>
           <div class="w3-form w3-card-4">
               <h2>Login Form</h2>
               <br />
               <br />
                  <div class="w3-group">
                     <label>Username</label>
                     <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                  </div>
                  <br />
               <br />
                  <div class="w3-group"> 
                     <label>Password</label>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                  </div>
                  <div class="w3-group">
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                      <br />
                      <br />
               <br /></div>
                      <asp:Button ID="Button1" runat="server" class="w3-btn w3-teal" Text="Login" 
           onclick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="w3-group">
           <p style="text-align:center"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/jobseeker_newpw.aspx">Forgot Password?</asp:HyperLink></p>
                  </div>
        </div>
        <div class="w3-group">
           <label>New user!!</label>
            <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/jobseeker_reg1.aspx">Register</asp:HyperLink>
        
        </div>
   </div>
   </form>
</asp:Content>



