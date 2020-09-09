<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="advance_search.aspx.cs" Inherits="advance_search" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
<h2 style="text-align :center">All Jobs Information</h2>
<h3  style="text-align :center">If you are interested you can contact to the mentioned contact numbers </h3>
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="company_name" HeaderText="Company name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="contact_number" HeaderText="Contact number" 
                SortExpression="contact_number" />
            <asp:BoundField DataField="category_name" HeaderText="Category name" 
                SortExpression="category_name" />
            <asp:BoundField DataField="area_name" HeaderText="Area name" 
                SortExpression="area_name" />
            <asp:BoundField DataField="location" HeaderText="Job Location" 
                SortExpression="location" />
            <asp:BoundField DataField="job_title" HeaderText="Job title" 
                SortExpression="job_title" />
            <asp:BoundField DataField="basic_req" HeaderText="Basic requiremnets" 
                SortExpression="basic_req" />
            <asp:BoundField DataField="edu_req" HeaderText="Educational Qualification" 
                SortExpression="edu_req" />
            <asp:BoundField DataField="skills_req" HeaderText="Skills required" 
                SortExpression="skills_req" />
            <asp:BoundField DataField="expr_req" HeaderText="Experience required" 
                SortExpression="expr_req" />
            <asp:BoundField DataField="salary" HeaderText="Salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="mail_id" HeaderText="Email id" 
                SortExpression="mail_id" />
            <asp:BoundField DataField="no_vacancy" HeaderText="Vacancies" 
                SortExpression="no_vacancy" />
            <asp:BoundField DataField="end_date" HeaderText="Last date of application" 
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


