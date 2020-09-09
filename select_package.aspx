<%@ Page Title="" Language="C#" MasterPageFile="~/recruitermaster.master" AutoEventWireup="true" CodeFile="select_package.aspx.cs" Inherits="select_package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Packages" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;<asp:GridView ID="GridView1" runat="server" style="margin-left: 44px" 
            AutoGenerateColumns="False" DataKeyNames="package_id" 
            DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="package_id" HeaderText="package_id" 
                    SortExpression="package_id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="package_cost" HeaderText="package_cost" 
                    SortExpression="package_cost" />
                <asp:BoundField DataField="no_jobs" HeaderText="no_jobs" 
                    SortExpression="no_jobs" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Package] WHERE [package_id] = @package_id" 
            InsertCommand="INSERT INTO [Package] ([package_cost], [no_jobs]) VALUES (@package_cost, @no_jobs)" 
            SelectCommand="SELECT * FROM [Package]" 
            UpdateCommand="UPDATE [Package] SET [package_cost] = @package_cost, [no_jobs] = @no_jobs WHERE [package_id] = @package_id">
            <DeleteParameters>
                <asp:Parameter Name="package_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
                <asp:Parameter Name="package_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 192px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Select Package"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" 
                        Text="Enter Package cost"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                        BorderColor="#FF3300" Height="26px" Text="Buy" Width="54px" 
                        onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
        </table>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </form>
</asp:Content>

