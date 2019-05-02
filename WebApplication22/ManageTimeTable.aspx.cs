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
    public partial class ManageTimeTable : System.Web.UI.Page
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


                DropDownList3.DataSource = getuserdata();
                DropDownList3.DataTextField = "CourseId";
                //DropDownList3.DataValueField = "CourseTitle";
                DropDownList3.DataBind();


            DropDownList4.DataSource = getsectiondata();
            DropDownList4.DataTextField = "SectionId";
            //DropDownList4.DataValueField = "SectionTitle";
           // DropDownList4.DataValueField = "SectionDetails";
            DropDownList4.DataBind();

            DropDownList1.DataSource = getTeacherdata();
            DropDownList1.DataTextField = "TeacherId";
           // DropDownList1.DataValueField = "Name";
            //DropDownList1.DataValueField = "Email";
            //DropDownList1.DataValueField = "PhoneNumber";
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
                SqlCommand cmd = new SqlCommand("CourseId",con);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        public DataTable getsectiondata()
        {
            SqlCommand cmd = new SqlCommand("SectionId", con);
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
            cmd.CommandText = "insert into TimeTable values('"+DropDownList1.SelectedValue+"','"+DropDownList4.SelectedValue+"','"+DropDownList3.SelectedValue+"','"+StartTime.Text+"','"+EndTime.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }
    }
}
 