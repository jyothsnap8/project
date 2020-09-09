<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="search_by_category.aspx.cs" Inherits="search_by_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Search by Category" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        List of&nbsp; Available Categories&nbsp;
        <table style="width: 100%">
            <tr>
                <td style="width: 192px">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="category_name" HeaderText="category_name" 
                                SortExpression="category_name" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:mycon %>" 
                        SelectCommand="SELECT [category_name] FROM [Job_post]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="28px" Text="Search" Width="123px" 
            Font-Bold="True" Font-Size="Large" onclick="Button3_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 11px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Save" SortExpression="jobpost_id">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" 
                            />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server"   
                            Enabled="true" Checked="<%# false %>" />
                    </ItemTemplate>
                </asp:TemplateField>
               
             
          <asp:TemplateField HeaderText="Company name">
          <ItemTemplate>
              <asp:Label ID="Label1" runat="server" Text='<%#Bind("company_name") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
           <asp:TemplateField HeaderText="Job title">
          <ItemTemplate>
              <asp:Label ID="Label2" runat="server" Text='<%#Bind("job_title") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
          <ItemTemplate>
              <asp:Label ID="Label3" runat="server" Text='<%#Bind("category_name") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>


             <asp:TemplateField HeaderText="Area">
          <ItemTemplate>
              <asp:Label ID="Label4" runat="server" Text='<%#Bind("area_name") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
   <asp:TemplateField HeaderText="Location">
          <ItemTemplate>
              <asp:Label ID="Label5" runat="server" Text='<%#Bind("location") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
   <asp:TemplateField HeaderText="Vacancy">
          <ItemTemplate>
              <asp:Label ID="Label6" runat="server" Text='<%#Bind("no_vacancy") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
             <asp:TemplateField HeaderText="Last Date of Application">
          <ItemTemplate>
              <asp:Label ID="Label7" runat="server" Text='<%#Bind("end_date") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Experience">
          <ItemTemplate>
              <asp:Label ID="Label8" runat="server" Text='<%#Bind("expr_req") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Skills">
          <ItemTemplate>
              <asp:Label ID="Label10" runat="server" Text='<%#Bind("skills_req" )%>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Educational Qualification">
          <ItemTemplate>
              <asp:Label ID="Label11" runat="server" Text='<%#Bind("edu_req" )%>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Basic skills">
          <ItemTemplate>
              <asp:Label ID="Label12" runat="server" Text='<%#Bind("basic_req") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Number">
          <ItemTemplate>
              <asp:Label ID="Label13" runat="server" Text='<%#Bind("contact_number") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>


                       <asp:TemplateField HeaderText="Salary">
          <ItemTemplate>
              <asp:Label ID="Label14" runat="server" Text='<%#Bind("salary") %>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Id">
          <ItemTemplate>
              <asp:Label ID="Label9" runat="server" Text='<%#Bind("mail_id" )%>'></asp:Label></ItemTemplate>
          </asp:TemplateField>
                      
                        
                      
                      
               
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 192px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="34px" Text="Save" Width="216px" 
            Font-Bold="True" Font-Size="Large" onclick="Button4_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
       <p style="text-align:center"><asp:Label ID="Label21" runat="server" Text=""></asp:Label></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </form>
</asp:Content>