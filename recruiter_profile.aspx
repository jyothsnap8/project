<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="recruiter_profile.aspx.cs" Inherits="recruiter_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<table>
<tr>
<td><h2>Welcome to Recruiter page,
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="#0033CC"></asp:Label></h2></td>
<td>
    <asp:LinkButton ID="LinkButton1" runat="server">Logout</asp:LinkButton></td>    
    </tr>
</table>
<div>
<asp:DetailsView ID="DetailsView1" runat="server" Height="53px" Width="300px" AutoGenerateRows="false">
<Fields>
<asp:BoundField DataField="Company_name" HeaderText="Company name" />
<asp:BoundField DataField="Company_address" HeaderText="Company address" />
<asp:BoundField DataField="Contact_person" HeaderText="Contact person" />
<asp:BoundField DataField="Contact_number" HeaderText="Contact number" />

<asp:BoundField DataField="Company_Email" HeaderText="Contact email" />
</Fields>
</asp:DetailsView>


</div>
</form>

</asp:Content>




