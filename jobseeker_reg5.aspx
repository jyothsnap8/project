<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="jobseeker_reg5.aspx.cs" Inherits="jobseeker_reg5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
     <div class="w3-content" style="max-width:600px">

    <div class="w3-container w3-card-2 w3-indigo">
    <h1>Upload Resume</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>Resume Headlines</h3>
      <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
  </li>
  <li>
    <h3>Upload resume</h3>
    Upload MS Word (doc/rtf) file only. Max size limit 300 Kb<br />
     
    <br />

    <asp:FileUpload ID="FileUpload1" runat="server" />
  </li>
  <li>
      
  </li>
   <li>
    <h3>Note:</h3>
    (If you do not have a resume right now, you may 
                            still create your account. Please remember to upload your resume as soon as 
                            possible)
  </li>
  
  
  
  
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="Create My Profile" onclick="Button1_Click" 
          Font-Bold="True" Font-Size="Larger" ForeColor="Blue" />
  
  </li>
</ul>

  <div class="w3-container w3-indigo w3-xlarge">
   <h5>Job Portal</h5>
  </div>

    
  </div>
    </form>
</body>
</html>
</asp:Content>

