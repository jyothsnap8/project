<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="recruiter_login.aspx.cs" Inherits="recruiter_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Recruiter Login " Font-Underline="True"></asp:Label>
</p>
    <p>
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Username"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="  Password  " ></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" ForeColor="#CC0000" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" BorderColor="Black" 
                        Height="26px" Text="Login" Width="60px" onclick="Button1_Click" />
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small"  NavigateUrl="~/recruiter_newpw.aspx"
                        ForeColor="#E46115">Forgot password ?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="New user ?"></asp:Label>
                    &nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        Font-Size="Large" Font-Underline="True" NavigateUrl="~/recruiter_reg.aspx">Registration</asp:HyperLink>
                </td>
            </tr>
        </table>
        &nbsp;</p>
    </form>
</asp:Content>



