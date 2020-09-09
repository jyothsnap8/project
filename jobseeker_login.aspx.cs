using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class jobseeker_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlDataAdapter adp = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session.Abandon();
        //Session.RemoveAll();
        //Session.Clear();

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

        while (dr.Read())
        {
            string UserName = dr[1].ToString();
            string PassWord = dr[2].ToString();
            int cid = 0;



            if (TextBox1.Text == UserName && TextBox2.Text == PassWord)
            {
                Session.Add("JName", UserName);
                Role = dr[3].ToString();
                Flag = true;

                cid = getcid(UserName);
                Session.Add("Cid", cid);
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label1.Visible = true;
            Label1.Text = "Not authorized";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
        if (Flag == true)
        {

            if (Role == "jobseeker")
            {

                Response.Redirect("~/jobseeker_profile.aspx");


            }
        }
        con.Close();

    }



    public int getcid(string UserName)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        int js;

        string query = "select candidate_id from Candidate_basic where username='" + UserName + "' ";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        js = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());

        return (js);


    }
}