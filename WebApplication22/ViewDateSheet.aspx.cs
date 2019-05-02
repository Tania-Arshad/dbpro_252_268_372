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
    public partial class ViewDateSheet : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SAIRA-PC\\SQLEXPRESS;Initial Catalog=Final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {

            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("select * from DateSheet", con);
                com.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "DateSheet");
                GridView1.DataSource = ds.Tables["DateSheet"];
                GridView1.DataBind();
                con.Close();
                lbldisplay.Text = "records are found";
            }
            catch
            {
                lbldisplay.Text = "records are not found";
            }
        }

    }
}
