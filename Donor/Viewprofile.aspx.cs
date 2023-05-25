using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Donor_Viewprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);

        String us = Session["username"].ToString();
        SqlCommand command = new SqlCommand("select * from Donor_Details where trim(username)='"+us+"'", co);
           try
            {
                co.Open();
                SqlDataReader Reader = command.ExecuteReader();
                Reader.Read();
                TextBox1.Text = Reader["FirstName"].ToString();
                TextBox2.Text = Reader["LastName"].ToString();
                TextBox3.Text = Reader["DOB"].ToString();
                TextBox4.Text = Reader["Age"].ToString();
                TextBox5.Text = Reader["Mobile"].ToString();

       
            }
            catch (Exception err)
            { 
            
            }
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Donor/DonorHome.aspx",false);
    }
}