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
    public partial class TeacherCourse : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-NP9KJ9D\\MSSQLSERVER2014;Initial Catalog=Final;Integrated Security=True");

        SqlDataAdapter da;
        DataTable dt;
        DataTable dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
        }

        private void filldrop()
        {

            DropDownList3.DataSource = getuserdata();
            DropDownList3.DataTextField = "CourseId";
            DropDownList3.DataBind();



            DropDownList1.DataSource = getTeacherdata();
            DropDownList1.DataTextField = "TeacherId";  
            DropDownList1.DataBind();
        }

        public DataTable getTeacherdata()
        {
            SqlCommand cmd = new SqlCommand("TeacherId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;
        }

        public DataTable getuserdata()
        {
            SqlCommand cmd = new SqlCommand("CourseId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into TeacherCourse values('" + DropDownList1.SelectedValue + "','" + DropDownList3.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update TeacherCourse set CourseId='" + DropDownList3.SelectedValue + "' where TeacherId='" + DropDownList1.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated Successfully!!";
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from TeacherCourse where TeacherId='" + DropDownList1.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";
            con.Close();
        }
    }
}