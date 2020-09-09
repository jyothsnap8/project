using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class jobseeker_reg2 : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = Session["js"].ToString();

            que();

            country();
            DropDownList4.Items.Insert(0, new ListItem("select", "0"));
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));


        }
    }

    public void que()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from Question";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "question";
        DropDownList1.DataValueField = "que_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }
    public void country()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from Country";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "country_name";
        DropDownList2.DataValueField = "country_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }


    public void state()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string query = "select * from State where State.country_id=" + DropDownList2.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "state_name";
        DropDownList3.DataValueField = "state_id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void city()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        SqlDataAdapter adp = null;
        string query = "select * from City where City.state_id=" + DropDownList3.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "city_name";
        DropDownList4.DataValueField = "city_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string gndr = null;


        if (RadioButton1.Checked == true)
        {
            gndr = RadioButton1.Text;
        }
        else
        {
            gndr = RadioButton2.Text;
        }
        string qry2 = "insert into Candidate_basic (username, que_id, ans, profile_date, first_name, middle_name, last_name, candidate_address, city_id, gender, dob, contact_number, email_id) values ('" + Label1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox9.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + DropDownList4.SelectedValue + "','" + gndr + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
        SqlCommand cmd = new SqlCommand(qry2, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //Session["js"] = TextBox1.Text;

            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        con.Close();
        Server.Transfer("~/jobseeker_reg3.aspx");
    }
}