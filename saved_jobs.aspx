<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="saved_jobs.aspx.cs" Inherits="saved_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="My Saved Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 89px" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
              
                <asp:BoundField DataField="job_title" HeaderText="job_title" 
                    SortExpression="job_title" />
                <asp:BoundField DataField="no_vacancy" HeaderText="no_vacancy" 
                    SortExpression="no_vacancy" />
                <asp:BoundField DataField="end_date" HeaderText="end_date" 
                    SortExpression="end_date" />
                <asp:BoundField DataField="expr_req" HeaderText="expr_req" 
                    SortExpression="expr_req" />
                <asp:BoundField DataField="skills_req" HeaderText="skills_req" 
                    SortExpression="skills_req" />
                <asp:BoundField DataField="edu_req" HeaderText="edu_req" 
                    SortExpression="edu_req" />
                <asp:BoundField DataField="basic_req" HeaderText="basic_req" 
                    SortExpression="basic_req" />
                <asp:BoundField DataField="company_name" HeaderText="company_name" 
                    SortExpression="company_name" />
                <asp:BoundField DataField="contact_number" HeaderText="contact_number" 
                    SortExpression="contact_number" />
                <asp:BoundField DataField="mail_id" HeaderText="mail_id" 
                    SortExpression="mail_id" />
                <asp:BoundField DataField="category_name" HeaderText="category_name" 
                    SortExpression="category_name" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" 
                    SortExpression="area_name" />
                <asp:BoundField DataField="location" HeaderText="location" 
                    SortExpression="location" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Saved_jobs] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Saved_jobs] ([job_title], [no_vacancy], [end_date], [expr_req], [skills_req], [edu_req], [basic_req], [company_name], [contact_number], [mail_id], [category_name], [area_name], [location], [salary]) VALUES (@job_title, @no_vacancy, @end_date, @expr_req, @skills_req, @edu_req, @basic_req, @company_name, @contact_number, @mail_id, @category_name, @area_name, @location, @salary)" 
            SelectCommand="SELECT * FROM [Saved_jobs]" 
            UpdateCommand="UPDATE [Saved_jobs] SET [job_title] = @job_title, [no_vacancy] = @no_vacancy, [end_date] = @end_date, [expr_req] = @expr_req, [skills_req] = @skills_req, [edu_req] = @edu_req, [basic_req] = @basic_req, [company_name] = @company_name, [contact_number] = @contact_number, [mail_id] = @mail_id, [category_name] = @category_name, [area_name] = @area_name, [location] = @location, [salary] = @salary WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="job_title" Type="String" />
                <asp:Parameter Name="no_vacancy" Type="Decimal" />
                <asp:Parameter Name="end_date" Type="DateTime" />
                <asp:Parameter Name="expr_req" Type="String" />
                <asp:Parameter Name="skills_req" Type="String" />
                <asp:Parameter Name="edu_req" Type="String" />
                <asp:Parameter Name="basic_req" Type="String" />
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="mail_id" Type="String" />
                <asp:Parameter Name="category_name" Type="String" />
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="job_title" Type="String" />
                <asp:Parameter Name="no_vacancy" Type="Decimal" />
                <asp:Parameter Name="end_date" Type="DateTime" />
                <asp:Parameter Name="expr_req" Type="String" />
                <asp:Parameter Name="skills_req" Type="String" />
                <asp:Parameter Name="edu_req" Type="String" />
                <asp:Parameter Name="basic_req" Type="String" />
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="mail_id" Type="String" />
                <asp:Parameter Name="category_name" Type="String" />
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;</p>
    </form>
</asp:Content>


