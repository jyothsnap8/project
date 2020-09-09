<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_comp_packs.aspx.cs" Inherits="admin_comp_packs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" text-align:center">
 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Company Packages" Font-Underline="True"></asp:Label>

            <br />
            <br />
            <p>
             <asp:GridView ID="GridView1" runat="server" style="margin-left: 38px" 
            AutoGenerateColumns="False" DataKeyNames="company_package" 
            DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="company_package" HeaderText="company_package" 
                    InsertVisible="False" ReadOnly="True" SortExpression="company_package" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    SortExpression="company_id" />
                <asp:BoundField DataField="package_id" HeaderText="package_id" 
                    SortExpression="package_id" />
            </Columns>
        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    DeleteCommand="DELETE FROM [Company_package] WHERE [company_package] = @company_package" 
                    InsertCommand="INSERT INTO [Company_package] ([company_id], [package_id]) VALUES (@company_id, @package_id)" 
                    SelectCommand="SELECT * FROM [Company_package]" 
                    UpdateCommand="UPDATE [Company_package] SET [company_id] = @company_id, [package_id] = @package_id WHERE [company_package] = @company_package">
                    <DeleteParameters>
                        <asp:Parameter Name="company_package" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="company_id" Type="Int32" />
                        <asp:Parameter Name="package_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="company_id" Type="Int32" />
                        <asp:Parameter Name="package_id" Type="Int32" />
                        <asp:Parameter Name="company_package" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </p>
        </div>
        </asp:Content>