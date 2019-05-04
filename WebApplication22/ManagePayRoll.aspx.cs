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
    public partial class ManagePayRoll : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into ManagePayRoll values(' " + DropDownList2.SelectedValue + " ','" + txtSallary.Text + "','" + DropDownList3.SelectedValue + "' )";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update ManagePayRoll set Salary='" + txtSallary.Text + "' ,Status='" + DropDownList3.SelectedValue + "' where TeacherId='" + DropDownList2.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated Successfully!!";
            con.Close();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from ManagePayRoll where TeacherId='" + DropDownList2.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";
            con.Close();
        }
    }
}