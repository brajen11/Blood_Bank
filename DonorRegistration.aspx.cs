﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data.Sql;

public partial class DonorRegistration : System.Web.UI.Page
{
    String blood;
    private string strMsg;
    private string strConnect;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            bloodlist.Items.Add("A+");
            bloodlist.Items.Add("A-");
            bloodlist.Items.Add("B+");
            bloodlist.Items.Add("B-");
            bloodlist.Items.Add("O+");
            bloodlist.Items.Add("O-");

            gender.Items.Add("Male");
            gender.Items.Add("Female");
            strMsg = "";
          

        }
        try
        {
            strConnect= ConfigurationManager.ConnectionStrings[1].ToString();

            //            strConnect = ConfigurationManager.AppSettings["MyConnectionString"];
        }
        catch (SystemException ex)
        {
            strMsg = ex.Message;
        }
    }

    protected void Date_Changed(object sender, EventArgs a)
    {
        dob.Text = Calendar1.SelectedDate.Day+"/";
        dob.Text += Calendar1.SelectedDate.Month+"/";
        dob.Text += Calendar1.SelectedDate.Year;
    }
    protected void Text_Changed(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        blood = bloodlist.SelectedItem.Value;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection co = new SqlConnection();
        co.ConnectionString = (@"Data Source=(localdb)\v11.0;Initial Catalog=bbms;Integrated Security=True;Pooling=False;");

        //string strConnect = ConfigurationManager.AppSettings["DB Connection"];
        co.ConnectionString = strConnect;
        String s = "insert into [Donor_Details] values(";
        s += "'"+name.Text + "',";
            s+="'"+last.Text+"'," ;
            s+="'"+dob.Text+ "',";
            s+="'"+age.Text+ "',";
            s+="'"+mobile.Text+ "'," ;
            s+="'"+gender.SelectedItem.Value + "'," ;
            s+="'"+weight.Text + "'," ;
            s+="'"+bloodlist.SelectedItem.Value + "'," ;
            s+="'"+country.Text+ "',";
            s+="'"+state.Text+"',";
            s+="'"+city.Text+ "',";
            s+="'"+zipcode.Text+ "'," ;
            s+= "'"+address.Text+ "',"; 
            s+="'"+email.Text+ "',";
            s += "'"+username.Text + "',";
            s+="'"+password.Text + "')";
            SqlCommand command = new SqlCommand(s, co);
            try
            {
                co.Open();
                int p = command.ExecuteNonQuery();
                Label3.Text = p.ToString() + "added";
                if (p == 0)
                {

                }
                else
                {
                    Response.Redirect("~/DonorLogin.aspx");
                }
            }
            catch (Exception eror)
            {
                Label3.Text = eror.ToString();
            }
            finally
            {
                co.Close();
            }

    }

    protected void Save_Click(object sender, EventArgs e)
    {
        SqlConnection co = new SqlConnection();
       // co.ConnectionString = (@"Data Source=(localdb)\v11.0;Initial Catalog=bbms;Integrated Security=True;Pooling=False;");

        //string strConnect = ConfigurationManager.AppSettings["DB Connection"];
        co.ConnectionString = strConnect;
        String s = "insert into [Donor_Details] values(";
        s += "'" + name.Text + "',";
        s += "'" + last.Text + "',";
        s += "'" + dob.Text + "',";
        s += "'" + age.Text + "',";
        s += "'" + mobile.Text + "',";
        s += "'" + gender.SelectedItem.Value + "',";
        s += "'" + weight.Text + "',";
        s += "'" + bloodlist.SelectedItem.Value + "',";
        s += "'" + country.Text + "',";
        s += "'" + state.Text + "',";
        s += "'" + city.Text + "',";
        s += "'" + zipcode.Text + "',";
        s += "'" + address.Text + "',";
        s += "'" + email.Text + "',";
        s += "'" + username.Text + "',";
        s += "'" + password.Text + "')";
        SqlCommand command = new SqlCommand(s, co);
        try
        {
            co.Open();
            int p = command.ExecuteNonQuery();
            Label3.Text = p.ToString() + "added";
            if (p == 0)
            {

            }
            else
            {
                Response.Redirect("~/DonorLogin.aspx",false);
            }
        }
        catch (Exception eror)
        {
            Label3.Text = eror.ToString();
        }
        finally
        {
            co.Close();
        }


    }
}