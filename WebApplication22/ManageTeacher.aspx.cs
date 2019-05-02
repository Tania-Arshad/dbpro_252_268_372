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
    public partial class ManageTeacher : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=Final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into AddTeacher values(' " + Nametxt.Text + " ' ,'"+Emailtxt.Text+"','"+PhoneNumbertxt.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update AddTeacher set Name='" + Nametxt.Text + "' ,PhoneNumber='" + PhoneNumbertxt.Text + "' where Email='" + Emailtxt.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated Successfully!!";
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from AddTeacher where Email='" + Emailtxt.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";
            con.Close();
        }
    }
}