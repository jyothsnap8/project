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

public partial class search_by_company : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            company();
        }


    }

    public void company()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();

        string query = "select company_name from Job_post";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
      

        foreach (GridViewRow g in GridView1.Rows) {
            var check = g.FindControl("CheckBox2") as CheckBox;
            if (check.Checked) {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
             
                SqlCommand cmd=new SqlCommand("gridretrieve ",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@company_name", (g.FindControl("Label1") as Label).Text);
                cmd.Parameters.AddWithValue("@job_title", (g.FindControl("Label2") as Label).Text);
                cmd.Parameters.AddWithValue("@category_name", (g.FindControl("Label3") as Label).Text);
                cmd.Parameters.AddWithValue("@area_name", (g.FindControl("Label4") as Label).Text);
                cmd.Parameters.AddWithValue("@location", (g.FindControl("Label5") as Label).Text);
                cmd.Parameters.AddWithValue("@no_vacancy", (g.FindControl("Label6") as Label).Text);
                cmd.Parameters.AddWithValue("@end_date", (g.FindControl("Label7") as Label).Text);
                cmd.Parameters.AddWithValue("@expr_req", (g.FindControl("Label8") as Label).Text);
                cmd.Parameters.AddWithValue("@skills_req", (g.FindControl("Label10") as Label).Text);
                cmd.Parameters.AddWithValue("@edu_req", (g.FindControl("Label11") as Label).Text);
                cmd.Parameters.AddWithValue("@basic_req", (g.FindControl("Label12") as Label).Text);
                cmd.Parameters.AddWithValue("@contact_number", (g.FindControl("Label13") as Label).Text);
                cmd.Parameters.AddWithValue("@salary", (g.FindControl("Label14") as Label).Text);
                cmd.Parameters.AddWithValue("@mail_id", (g.FindControl("Label9") as Label).Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label21.Text = "Job saved successfully";




            }

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string s = TextBox1.Text.ToString(); ;
        string query = "select * from Job_post where company_name='" + TextBox1.Text+ "'";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
     }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
