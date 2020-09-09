<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="search_job.aspx.cs" Inherits="search_job" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />


    <table class="style1">
        <tr>
            <td colspan="4" align="center"> Search Job&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
           
            <td>
                <asp:HyperLink ID="HyperLink2" Navigateurl="~/search_by_company.aspx" runat="server">Search by Company</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink3" Navigateurl="~/search_by_category.aspx"  runat="server">Search by Category</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink4" Navigateurl="~/saved_jobs.aspx"  runat="server">My Saved Jobs</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>



