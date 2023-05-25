using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;

public partial class patient_blood_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);
        String str = "select FirstName,city,email,mobile from Donor_Details where city='" + DropDownList1.SelectedItem.Value + "' and BlodGroup='" + DropDownList2.SelectedItem.Value+"'";
        SqlCommand command = new SqlCommand(str, co);
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataSet set = new DataSet();
        try
        {
            adapter.Fill(set, "Donor_Details");
            GridView1.DataSource = set;
            GridView1.DataBind();

            if (set.Tables[0].Rows.Count==0)
            {
                Label1.Text = "Required Blood is not available";
            }
            else
            {
                Label1.Text = "";

            }
        }
        catch (Exception err)
        {
            Label1.Text = "sorry there is an error"+err.ToString();
        }
        finally {

            co.Close();

        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/patient/patientHome.aspx", false);
    }
}