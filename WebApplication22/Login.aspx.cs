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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-NP9KJ9D\\MSSQLSERVER2014;Initial Catalog=Final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Registration where Email = ' " + Emailtxt.Text + " ' and Password = ' " + Passwordtxt.Text + " ' and  UserType = ' " + DropDownList1.SelectedValue + " '";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["Email"] = dr["Email"].ToString();

            }
            if (DropDownList1.SelectedValue == "Student")
            {
                SqlCommand cmd1 = new SqlCommand("Select Id from Registration where Email = ' " + Emailtxt.Text + " ' and Password = ' " + Passwordtxt.Text + " '  ", con);
                int val = (int)cmd1.ExecuteScalar();

                SqlCommand cmd2 = new SqlCommand("Select count(*) from FeeChallan where Id ='" + val + "'", con);

                int count = (int)cmd2.ExecuteScalar();
                if (count == 0)
                {
                    Label1.Text = "You have not submitted Your Dues yet";
                }
                else
                {
                    Response.Redirect("AvailableCourse.aspx");
                }
                con.Close();
            }
            else if (DropDownList1.SelectedValue=="Admin")
            {
                Response.Redirect("Admin.aspx");
            }
            else if (DropDownList1.SelectedValue == "Teacher")
            {
                Response.Redirect("Teacher.aspx");
            }
        }
           
    }
}