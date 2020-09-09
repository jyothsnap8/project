using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_login : System.Web.UI.Page
{
  
    SqlDataReader dr = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
   
        
        bool Flag = false;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Login";
        dr = cmd.ExecuteReader();
        string Role = "";
        string UserName = "";
        string PassWord = "";

        while (dr.Read())
        {
            UserName = dr[1].ToString();
            PassWord = dr[2].ToString();

            if (TextBox1.Text == UserName && TextBox2.Text == PassWord)
            {
                Session.Add("RName", UserName);
                Role = dr[3].ToString();
                Flag = true;
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label5.Visible = true;
            Label5.Text = "Not authorized";
        }
        if (Flag == true)
        {

            if (Role == "recruiter")
            {

                Response.Redirect("~/recruiter_profile.aspx");

            }

        }
        con.Close();
    }
}
