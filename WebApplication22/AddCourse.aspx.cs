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
    public partial class Course : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=Final;Integrated Security=True");

        //  SqlDataAdapter da;
        //  DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Courses values(' " + CourseTitle.Text + " ' )";
            cmd.ExecuteNonQuery();
            con.Close();
              Label1.Text = "Data Inserted Successfully!!";
            //    grid();

        }
    }
}