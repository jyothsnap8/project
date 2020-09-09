<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_selected_cands.aspx.cs" Inherits="admin_selected_cands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Selected Candidates" Font-Underline="True"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 40px" 
            AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="selected_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="selected_id" HeaderText="selected_id" 
                    ReadOnly="True" SortExpression="selected_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
            </Columns>
        </asp:GridView>
        9<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Selected_candidates] WHERE [selected_id] = @selected_id" 
            InsertCommand="INSERT INTO [Selected_candidates] ([selected_id], [candidate_id], [jobpost_id]) VALUES (@selected_id, @candidate_id, @jobpost_id)" 
            SelectCommand="SELECT * FROM [Selected_candidates]" 
            UpdateCommand="UPDATE [Selected_candidates] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id WHERE [selected_id] = @selected_id">
            <DeleteParameters>
                <asp:Parameter Name="selected_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="selected_id" Type="Int32" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="selected_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    </form>
</asp:Content>



