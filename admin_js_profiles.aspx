<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_js_profiles.aspx.cs" Inherits="admin_js_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Job seeker Profiles" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView 
            ID="GridView1" runat="server" 
            AutoGenerateColumns="False" 
            DataKeyNames="candidate_id" 
            DataSourceID="SqlDataSource1" style="margin-left: 22px" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                <asp:BoundField DataField="profile_date" HeaderText="profile_date" 
                    SortExpression="profile_date" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" 
                    SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                    SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" 
                    SortExpression="last_name" />
                <asp:BoundField DataField="candidate_address" HeaderText="candidate_address" 
                    SortExpression="candidate_address" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" 
                    SortExpression="city_id" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="contact_number" HeaderText="contact_number" 
                    SortExpression="contact_number" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                    SortExpression="email_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            DeleteCommand="DELETE FROM [Candidate_basic] WHERE [candidate_id] = @candidate_id" 
            InsertCommand="INSERT INTO [Candidate_basic] ([username], [que_id], [ans], [profile_date], [first_name], [middle_name], [last_name], [candidate_address], [city_id], [gender], [dob], [contact_number], [email_id]) VALUES (@username, @que_id, @ans, @profile_date, @first_name, @middle_name, @last_name, @candidate_address, @city_id, @gender, @dob, @contact_number, @email_id)" 
            SelectCommand="SELECT * FROM [Candidate_basic]" 
            UpdateCommand="UPDATE [Candidate_basic] SET [username] = @username, [que_id] = @que_id, [ans] = @ans, [profile_date] = @profile_date, [first_name] = @first_name, [middle_name] = @middle_name, [last_name] = @last_name, [candidate_address] = @candidate_address, [city_id] = @city_id, [gender] = @gender, [dob] = @dob, [contact_number] = @contact_number, [email_id] = @email_id WHERE [candidate_id] = @candidate_id">
            <DeleteParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter Name="profile_date" Type="DateTime" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_address" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="dob" Type="DateTime" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter Name="profile_date" Type="DateTime" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_address" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="dob" Type="DateTime" />
                <asp:Parameter Name="contact_number" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>


