<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3-half">
           
           <div class="w3-form w3-card-4">
           <form runat="server">
               <h2>Admin Login</h2>
               <br />
               <br />

                  <div class="w3-group">
                     <label>Admin Name</label>
                     <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                  </div>
                  <br />
                  <br />

                  <div class="w3-group"> 
                     <label>Password&nbsp;&nbsp;&nbsp;&nbsp; </label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                  </div>
                  <div class="w3-group">
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                  </div>
      <br />
      <br />
                  <asp:Button ID="Button1" runat="server" class="w3-btn w3-teal" Text="Login" 
           onclick="Button1_Click" />
    
 
        &nbsp;&nbsp;&nbsp;&nbsp;
        
    </form>
 
        </div>
       
</div>

</asp:Content>

