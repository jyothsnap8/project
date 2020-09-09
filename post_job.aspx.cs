using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class post_job : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter adp = null;

  
   
 
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
          
        }
    }
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();


        string qry = "insert into job_post (job_title, company_name, category_name, area_name, location, expr_req, salary, edu_req, skills_req, basic_req, no_vacancy, end_date, contact_number, mail_id) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox9.Text+"','"+TextBox10.Text + "','" +TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" +TextBox6.Text+ "','" + TextBox3.Text + "','"  + TextBox4.Text + "','" + TextBox14.Text + "','" + TextBox5.Text + "','"  + TextBox7.Text + "','"+ TextBox8.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("advance_search.aspx");
    }
  
}
