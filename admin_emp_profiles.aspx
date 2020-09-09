<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_emp_profiles.aspx.cs" Inherits="admin_emp_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Employes Profiles" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 35px" 
            AutoGenerateColumns="False" DataKeyNames="company_id" 
            DataSourceID="SqlDataSource1" Width="966px" AllowPaging="True">
            <RowStyle HorizontalAlign="Center" />
             <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                <asp:BoundField DataField="company_name" HeaderText="company_name" 
                    SortExpression="company_name" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ansr" />
                <asp:BoundField DataField="contact_person" HeaderText="contact_person" 
                    SortExpression="contact_person" />
                <asp:BoundField DataField="contact_number" HeaderText="company_contact" 
                    SortExpression="contact_number" />
                <asp:BoundField DataField="company_address" HeaderText="company_address" 
                    SortExpression="company_address" />
                <asp:BoundField DataField="company_email" HeaderText="company_email" 
                    SortExpression="company_email" />
               
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Company] WHERE [company_id] = @company_id" 
            InsertCommand="INSERT INTO [Company] ([company_name], [username], [que_id], [ans], [contact_person], [contact_number], [company_address], [company_email]) VALUES (@company_name, @username, @que_id, @ans, @contact_person, @contact_number, @company_address, @company_email)" 
            SelectCommand="SELECT * FROM [Company]" 
            UpdateCommand="UPDATE [Company] SET [company_name] = @company_name, [username] = @username, [que_id] = @que_id, [ans] = @ans, [contact_person] = @contact_person, [contact_number] = @contact_number, [company_address] = @company_address, [company_email] = @company_email WHERE [company_id] = @company_id">
            <DeleteParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="company_address" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="company_address" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </p>
    <p>
    </p>
    </form>
</asp:Content>

