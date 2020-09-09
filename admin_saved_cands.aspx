<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_saved_cands.aspx.cs" Inherits="admin_saved_cands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Saved Candidates" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 33px" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="saved_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="saved_id" HeaderText="saved_id" ReadOnly="True" 
                    SortExpression="saved_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Saved_candidate] WHERE [saved_id] = @saved_id" 
            InsertCommand="INSERT INTO [Saved_candidate] ([saved_id], [candidate_id], [jobpost_id]) VALUES (@saved_id, @candidate_id, @jobpost_id)" 
            SelectCommand="SELECT * FROM [Saved_candidate]" 
            UpdateCommand="UPDATE [Saved_candidate] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id WHERE [saved_id] = @saved_id">
            <DeleteParameters>
                <asp:Parameter Name="saved_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="saved_id" Type="Int32" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="saved_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    </form>
</asp:Content>
