<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="job_info.aspx.cs" Inherits="job_info" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
<h2 style="text-align :center">All Jobs Information</h2>
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="contact_number" HeaderText="contact_number" 
                SortExpression="contact_number" />
            <asp:BoundField DataField="category_name" HeaderText="category_name" 
                SortExpression="category_name" />
            <asp:BoundField DataField="area_name" HeaderText="area_name" 
                SortExpression="area_name" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
            <asp:BoundField DataField="job_title" HeaderText="job_title" 
                SortExpression="job_title" />
            <asp:BoundField DataField="basic_req" HeaderText="basic_req" 
                SortExpression="basic_req" />
            <asp:BoundField DataField="edu_req" HeaderText="edu_req" 
                SortExpression="edu_req" />
            <asp:BoundField DataField="skills_req" HeaderText="skills_req" 
                SortExpression="skills_req" />
            <asp:BoundField DataField="expr_req" HeaderText="expr_req" 
                SortExpression="expr_req" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="mail_id" HeaderText="mail_id" 
                SortExpression="mail_id" />
            <asp:BoundField DataField="no_vacancy" HeaderText="no_vacancy" 
                SortExpression="no_vacancy" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" 
                SortExpression="end_date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        SelectCommand="SELECT [company_name], [contact_number], [category_name], [area_name], [location], [job_title], [basic_req], [edu_req], [skills_req], [expr_req], [salary], [mail_id], [no_vacancy], [end_date] FROM [Job_post]">
    </asp:SqlDataSource>
</div>

</form>
</asp:Content>


