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
    public partial class FeeChallans_and_PayRolls : System.Web.UI.Page
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

            DropDownList2.DataSource = getStudentdata();
            DropDownList2.DataTextField = "Id";           
            DropDownList2.DataBind();
        }

        public DataTable getStudentdata()
        {
            SqlCommand cmd = new SqlCommand("Id", con);
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
            cmd.CommandText = "insert into FeeChallan values(' " + DropDownList2.SelectedValue + " ','" + txtChallanId.Text + "','"+txtChallanNo.Text+ "' )";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Inserted Successfully!!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText= "Update FeeChallan set ChallanNo='"+txtChallanNo.Text+"' where ChallanId='" +txtChallanId.Text+"' and Id='"+DropDownList2.SelectedValue+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated Successfully!!";
		    con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from  FeeChallan where ChallanId='" + txtChallanId.Text + "' and Id='" + DropDownList2.SelectedValue + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Deleted Successfully!!";
            con.Close();

        }
    }
}