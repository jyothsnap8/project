using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class admin_que : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string qry = "insert into Question(question) values ('" + TextBox1.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }
        clear();

    }
    public void clear()
    {

        TextBox1.Text = "";

    }
}