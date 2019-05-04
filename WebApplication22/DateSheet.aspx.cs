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
    public partial class DateSheet : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-NP9KJ9D\\MSSQLSERVER2014;Initial Catalog=Final;Integrated Security=True");

            SqlDataAdapter da;
           
            DataTable dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
        }
        private void filldrop()
        {

            DropDownList2.DataSource = getuserdata();
            DropDownList2.DataTextField = "CourseId";         
            DropDownList2.DataBind();


            DropDownList3.DataSource = getsectiondata();
            DropDownList3.DataTextField = "SectionId";           
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
            dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;
        }
        public DataTable getsectiondata()
        {
            SqlCommand cmd = new SqlCommand("SectionId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into DateSheet values('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+Datetxt.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }
    }
}