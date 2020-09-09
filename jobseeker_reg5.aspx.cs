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

public partial class jobseeker_reg5 : System.Web.UI.Page
{
    int C;
    protected void Page_Load(object sender, EventArgs e)
    {
        C = Convert.ToInt32(Session["CID"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string File1 = File_Upload(FileUpload1);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        con.Open();
        string qry = "insert into Resume(candidate_id, resume_headline, path) values (" + C + ", '" + TextBox1.Text + "', '" + File1 + "')";

        SqlCommand cmd = new SqlCommand(qry, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script> alert('Your Resume Uploaded Successfuly')</script>");
            Response.Redirect("jobseeker_profile.aspx");
        }
        con.Close();
        con.Dispose();


        //try
        //{

        //    // Read the file and convert it to Byte Array
        //    string filePath = FileUpload1.PostedFile.FileName;
        //    string filename = Path.GetFileName(filePath);
        //    string ext = Path.GetExtension(filename);
        //    string contenttype = String.Empty;

        //    //Set the contenttype based on File Extension
        //    switch (ext)
        //    {
        //        case ".doc":
        //            contenttype = "application/vnd.ms-word";
        //            break;
        //        case ".docx":
        //            contenttype = "application/vnd.ms-word";
        //            break;
        //        case ".pdf":
        //            contenttype = "application/pdf";
        //            break;

        //    }
        //    if (contenttype != string.Empty)
        //    {
        //        Stream fs = FileUpload1.PostedFile.InputStream;
        //        BinaryReader br = new BinaryReader(fs);
        //        Byte[] bytes = br.ReadBytes((Int32)fs.Length);


        //        //insert file into database

        //        string qr = "insert into Resume(candidate_id, resume_name, content_type,data)" + "values(@cid,@name,@contenttype,@data)";
        //        SqlCommand cmd = new SqlCommand(qr);
        //        cmd.Parameters.Add("@cid", SqlDbType.Int).Value = C;
        //        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
        //        cmd.Parameters.Add("@contenttype", SqlDbType.VarChar).Value = contenttype;
        //        cmd.Parameters.Add("@data", SqlDbType.Binary).Value = bytes;
        //        //InsertData(cmd);

        //        Response.Redirect("");
        //    }
        //    else
        //    {
        //        Label1.ForeColor = System.Drawing.Color.Red;
        //        Label1.Text = "File format not recognised. Upload Image/Word/PDF/Excel formats";

        //    }

        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex.Message);
        //}
    }

    public string File_Upload(System.Web.UI.WebControls.FileUpload fp)
    {
        string filepath, folderpath, savepath, folderpathnew, savepathnew;
        folderpath = System.Web.HttpContext.Current.Server.MapPath("Resumes");
        folderpathnew = "~\\Resumes";
        filepath = Path.GetFileName(fp.PostedFile.FileName);
        savepath = folderpath + "\\" + filepath;

        savepathnew = folderpathnew + "\\" + filepath;

        fp.SaveAs(savepath);
        return (savepathnew);
    }

    //private Boolean InsertData(SqlCommand cmd)
    //{

    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    //    cmd.CommandType = CommandType.Text;
    //    cmd.Connection = con;

    //    try
    //    {
    //        con.Open();
    //        cmd.ExecuteNonQuery();
    //        return true;


    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //        return false;

    //    }
    //    finally
    //    {
    //        con.Close();
    //            con.Dispose ();
    //    }

    //}
}