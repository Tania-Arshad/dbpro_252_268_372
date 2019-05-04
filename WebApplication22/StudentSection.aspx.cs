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
    
    public partial class StudentSection : System.Web.UI.Page
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

            DropDownList1.DataSource = getuserdata();
            DropDownList1.DataTextField = "Id";
          //  DropDownList1.DataValueField = "UserType";
         //   DropDownList1.DataValueField = "Name";
         //   DropDownList1.DataValueField = "Email";
         //   DropDownList1.DataValueField = "Password";
            DropDownList1.DataBind();


            DropDownList2.DataSource = getTeacherdata();
            DropDownList2.DataTextField = "SectionId";
       //     DropDownList2.DataValueField = "SectionTitle";
       //     DropDownList2.DataValueField = "SectionDetails";
            DropDownList2.DataBind();
        }

        public DataTable getTeacherdata()
        {
            SqlCommand cmd = new SqlCommand("SectionId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;
        }

        public DataTable getuserdata()
        {
            SqlCommand cmd = new SqlCommand("Id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
       
 protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
             cmd.CommandText = "insert into StudentSection values(' " + DropDownList1.SelectedValue + " ','"+DropDownList2.SelectedValue+"' )";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update StudentSection set SectionId='" + DropDownList2.SelectedValue + "' where Id='" + DropDownList1.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated Successfully!!";
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from StudentSection where Id='" + DropDownList1.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";
            con.Close();
        }
    }
}