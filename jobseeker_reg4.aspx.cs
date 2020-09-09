using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.IO;

public partial class jobseeker_reg4 : System.Web.UI.Page
{
    SqlDataAdapter adp = null;
    SqlCommand cmd = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            category();
        }
    }

    public void category()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Category";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "category_name";
        DropDownList1.DataValueField = "category_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }


    public void area()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select * from Area where Area.category_id=" + DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "area_name";
        DropDownList2.DataValueField = "area_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string crnc = null;
        if (RadioButton1.Checked == true)
        {
            crnc = RadioButton1.Text;
        }
        else
        { crnc = RadioButton2.Text; }

        string slr = null;
        int c = Convert.ToInt32(Session["CID"].ToString());

        slr = DropDownList5.Text + "Lacs" + DropDownList6.Text + "Thousands" + crnc;
        cmd = new SqlCommand("insert into Candidate_professional(candidate_id, area_id, expr_yrs, expr_mth, salary, industry, ind_role, skills)values(" + c + ",'" + DropDownList2.SelectedValue + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + slr + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }
        con.Close();
        Server.Transfer("~/jobseeker_reg5.aspx");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        area();
    }
}