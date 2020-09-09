using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseeker_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rname = Session["JName"].ToString();
        Label4.Text = Session["JName"].ToString();
    }
}