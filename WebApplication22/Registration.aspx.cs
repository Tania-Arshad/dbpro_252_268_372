﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication22
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=DB33;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Female_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into RegistrationTable values(' " + Nametxt.Text + " ' , ' " + Emailtxt.Text + " ' , ' " + Passwordtxt.Text + " ' , '" + DropDownList1.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Login.aspx");
        }
    }
}