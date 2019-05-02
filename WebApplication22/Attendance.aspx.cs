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
    public partial class Attendance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=Final;Integrated Security=True");

        SqlDataAdapter da;
        DataTable dt;
        DataTable dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
        }

        private void filldrop()
        {

            DropDownList4.DataSource = getuserdata();
            DropDownList4.DataTextField = "CourseId";      
            DropDownList4.DataBind();


            DropDownList3.DataSource = getsectiondata();
            DropDownList3.DataTextField = "Id";      
            DropDownList3.DataBind();

            DropDownList2.DataSource = getTeacherdata();
            DropDownList2.DataTextField = "TeacherId";         
            DropDownList2.DataBind();
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
        public DataTable getsectiondata()
        {
            SqlCommand cmd = new SqlCommand("Id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }



        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into ManageAttendance values('" + DropDownList3.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + Datetxt.Text + "','" + DropDownList1.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Attendance Marked Successfully!!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}