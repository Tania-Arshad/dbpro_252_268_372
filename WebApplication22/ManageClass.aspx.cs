using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication22
{
   
    public partial class ManageClass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=DB33;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Class values(' " +ClassId.Text + " ' , ' " + ClassNametxt.Text + " ' )";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Class set Class_Name= '" + ClassNametxt.Text + "' where Class_ID = '" + ClassId.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Updated Successfully!!";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from Class where Class_ID='" + ClassId.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Deleted Successfully!!";
        }
    }
}