<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
    <div>
    <center>
    <h1>Hi , 
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Italic="True" 
            ForeColor="Fuchsia"></asp:Label> &nbsp; Welcome </h1>
        <p> 
        Your account created successfully...     
        </p>
        <asp:Button ID="Button1" runat="server" Text="Continue" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="#0033CC" Height="44px" Width="148px" 
            onclick="Button1_Click" /></center>
    </div>
    </form>
</asp:Content>


