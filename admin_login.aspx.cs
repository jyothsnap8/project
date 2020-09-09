using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from login";
        dr = cmd.ExecuteReader();
        string role = "";
        while (dr.Read())
        {

            string username = dr[1].ToString();
            string password = dr[2].ToString();
            if (TextBox1.Text == username && TextBox2.Text == password)
            {
                role = dr[3].ToString();
                Flag = true;
            }

        }
        dr.Close();
        if (Flag == false)
        {
            Label1.Visible = true;
            Label1.Text = "Not Authorized";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        if (Flag == true)
        {
            if (role == "admin")
            {
                Session["user"] = TextBox1.Text;
                Label1.Visible = true;
                Label1.Text = "Authorized";
                Response.Redirect("~/adminup.aspx");


            }
        }
        con.Close();

    }
}