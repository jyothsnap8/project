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

public partial class jobseeker_reg3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string unm = null;
        unm = Session["js"].ToString();
        int c = getcid(unm, con);
        Session["CID"] = c;


        SqlCommand cmd = new SqlCommand("insert into Candidate_education(candidate_id ,per10, per12, graduation, institute_grad, perc_grad, post_grad, institute_post_grad, per_post_grad, dr_phd, institute_dr_phd, per_dr_phd, certification) values(" + c + ",'" + Convert.ToInt32(TextBox1.Text) + "' ,'" + Convert.ToInt32(TextBox2.Text) + "','" + DropDownList1.SelectedItem + "','" + TextBox3.Text + "','" + Convert.ToInt32(TextBox4.Text) + "','" + DropDownList2.SelectedItem + "','" + TextBox5.Text + "','" + Convert.ToInt32(TextBox6.Text) + "','" + DropDownList3.SelectedItem + "','" + TextBox7.Text + "','" + Convert.ToInt32(TextBox8.Text) + "','" + TextBox9.Text + "')", con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //Session["js"] = TextBox1.Text;

            Response.Write("<script> alert('Record saved Successfuly')</script>");
        }

        con.Close();
        Server.Transfer("~/jobseeker_reg4.aspx");


    }

    public int getcid(string unm, SqlConnection con)
    {
        int c;
        SqlDataAdapter adp = new SqlDataAdapter("Select candidate_id from Candidate_basic where username='" + unm + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        c = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());
        return (c);
    }
}