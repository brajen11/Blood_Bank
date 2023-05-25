using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donor_DonorHome : System.Web.UI.Page
{
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/patient/Postrequest.aspx",false);

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/patient/blood_search.aspx",false);
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = Session["ptname"].ToString();
        Response.Redirect("~/patient/ViewProfile.aspx?username="+s,false);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s = Session["ptname"].ToString();
        Response.Redirect("~/patient/EditProfile.aspx?username="+s,false);
    }
}