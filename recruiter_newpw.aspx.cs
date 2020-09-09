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

public partial class recruiter_newpw : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
      
        string query = "select username from Company where contact_number='" + TextBox1.Text + "'";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        string number = null;
        string a = null;
        a = ds.Tables[0].Rows[0]["contact_number"].ToString();
        number = TextBox1.Text;
        if (a == number)
        {
            Label23.Text = ds.Tables[0].Rows[0]["username"].ToString();
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
        }
        con.Close();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        if (TextBox2.Text == TextBox3.Text)
        {
            Label26.Visible = false;

            string query = "update login set password= '" + TextBox2.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        else
        {
            Label26.Visible = true;
            Label26.Text = "Password did not matched";
        }
        con.Close();
    }
   
}