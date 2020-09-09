using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class recruiter_reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label5.Visible = false;
            que();
        }

    }
    public void que()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from question", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "question";
        DropDownList1.DataValueField = "que_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into company(company_name,username,que_id,ans,contact_person,contact_number,company_address,company_email) values('" + TextBox15.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox14.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "')", con);
        cmd.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','recruiter')", con);
        cmd2.ExecuteNonQuery();
        con.Close();
        Label5.Visible = true;
        Label5.Text = "Profile created Successfully";
        Response.Redirect("recruiter_login.aspx");

    }
}