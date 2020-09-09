<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="post_job.aspx.cs" Inherits="post_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Post Job" Font-Underline="True"></asp:Label>
        &nbsp;<table style="width: 100%">
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Job Title"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Company name"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Job Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox> for e.g IT,Business</td>
              
                 
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Job Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>for e.g IT:software/hardware
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Job Location"></asp:Label>
                </td><td> &nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Experience"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                  
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Salary"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    &nbsp;per annum</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Educational Qualification"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label10" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Skills"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Basic Requirement"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label12" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Vacancies"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label13" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Last Date of Application"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
            <td  align="right" style="width: 400px">
                <asp:Label ID="Label14" runat="server"  ForeColor="White"  Text="Contact number" Font-Size="Medium" ></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td> </tr>
                     <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
                    <tr><td align="right" style="width: 400px;color:White">Interested candidates can send their resumes to the metioned
                        <asp:Label ID="Label15" runat="server" Text="Email Id " ForeColor="White"  Font-Size="Medium"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td></tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Font-Bold="True" Height="26px" Text="Post" 
                        Width="54px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;</p>
    </form>
</asp:Content>


