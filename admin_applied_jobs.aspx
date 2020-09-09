<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_applied_jobs.aspx.cs" Inherits="admin_applied_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Applied Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 42px" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="applied_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="applied_id" HeaderText="applied_id" ReadOnly="True" 
                    SortExpression="applied_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
                <asp:BoundField DataField="applied_date" HeaderText="applied_date" 
                    SortExpression="applied_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Job_applied] WHERE [applied_id] = @applied_id" 
            InsertCommand="INSERT INTO [Job_applied] ([applied_id], [candidate_id], [jobpost_id], [applied_date]) VALUES (@applied_id, @candidate_id, @jobpost_id, @applied_date)" 
            SelectCommand="SELECT * FROM [Job_applied]" 
            UpdateCommand="UPDATE [Job_applied] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id, [applied_date] = @applied_date WHERE [applied_id] = @applied_id">
            <DeleteParameters>
                <asp:Parameter Name="applied_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="applied_id" Type="Int32" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="applied_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="applied_date" Type="DateTime" />
                <asp:Parameter Name="applied_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    </form>
</asp:Content>


