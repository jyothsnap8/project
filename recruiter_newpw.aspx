﻿<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="recruiter_newpw.aspx.cs" Inherits="recruiter_newpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Forgot Password " Font-Underline="True"></asp:Label>
        <table style="width: 100%">
            
            <tr>
                <td align="right" style="width: 424px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Contact Number"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Phone"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" BorderColor="Black" 
                        Height="26px" Text="OK" Width="64px" onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    <asp:Label ID="Label22" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Your username is :"></asp:Label>
                </td>
                <td>
                    &nbsp; &nbsp;<asp:Label ID="Label23" runat="server" Font-Size="Medium" ForeColor="#877361" 
                        Text="Unknown"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    <asp:Label ID="Label24" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Enter new Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;
                    <asp:Label ID="Label26" runat="server" BackColor="Black" Font-Size="Small" 
                        ForeColor="#CC0000" Text="Label" Visible="False"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Retype Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 424px">
                    &nbsp;</td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#877361" BorderColor="Black" 
                        Height="26px" Text="Set" Width="64px" onclick="Button2_Click" />
                </td>
            </tr>
    </table>
    </p>
    </form>
</asp:Content>

