using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Reflection.Emit;

public partial class Donor_Editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
            SqlConnection co = new SqlConnection(s);
            String str = Session["ptname"].ToString();
            SqlCommand command = new SqlCommand("select * from patient_table where trim(username)='" + str + "'", co);
            try
            {
                co.Open();
                SqlDataReader Reader = command.ExecuteReader();
                Reader.Read();
                TextBox1.Text = Reader["FirstName"].ToString();
                TextBox2.Text = Reader["LastName"].ToString();
                TextBox3.Text = Reader["Dob"].ToString();
                TextBox4.Text = Reader["Age"].ToString();
                TextBox5.Text = Reader["Mobile"].ToString();


            }
            catch (Exception err)
            {

            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/patient/patientHome.aspx",false);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);

        string us = Session["username"].ToString();

        string sqlqry = "update patient_table set FirstName='" + TextBox1.Text + "',LastNAme='" + TextBox2.Text + "',Dob='"
            + TextBox3.Text + "',Age='" + TextBox4.Text + "',Mobile='" + TextBox5.Text + "' where username='" + us + "'";

        SqlCommand command = new SqlCommand(sqlqry, co);
        try
        {
            co.Open();
            int p = command.ExecuteNonQuery();
            if (p == 0)
            {

                Label1.Text = "There is error occured";
            }
            else
            {
                Label1.Text = p + " is updated";
            }
        }
        catch (Exception err)
        {
            Label1.Text = err.ToString();
        }

    }
}