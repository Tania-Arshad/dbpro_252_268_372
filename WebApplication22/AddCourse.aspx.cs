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
    public partial class AddCourse : System.Web.UI.Page
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
            cmd.CommandText = "insert into Add_Course values(' " + CourseIdtxt.Text + " ' , ' " + CourseNametxt.Text + " ' )";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Add_Course set Course_Name= '"+CourseNametxt.Text+"' where Course_ID = '"+CourseIdtxt.Text+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Updated Successfully!!";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from Add_Course where Course_ID='" + CourseIdtxt.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Deleted Successfully!!";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageClass.aspx");
        }
    }
}