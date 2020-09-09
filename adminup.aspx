<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminup.aspx.cs" Inherits="adminup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<table>
<tr>
<td><h2>Welcome to Admin page,
<br />
<br />
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="#0033CC"></asp:Label></h2></td>
<td>
    <asp:LinkButton ID="LinkButton1" runat="server">Logout</asp:LinkButton></td>    
    </tr>
</table>
<br />
<br />
<div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:mycon %>" 
        DeleteCommand="DELETE FROM [login] WHERE [id] = @original_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" 
        InsertCommand="INSERT INTO [login] ([username], [password], [role]) VALUES (@username, @password, @role)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [login]" 
        UpdateCommand="UPDATE [login] SET [username] = @username, [password] = @password, [role] = @role WHERE [id] = @original_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_role" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_role" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
    </form>
</asp:Content>
