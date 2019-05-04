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
    public partial class StudentViewTimeTable : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-NP9KJ9D\\MSSQLSERVER2014;Initial Catalog=Final;Integrated Security=True");
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
        SqlCommand com = new SqlCommand("select * from TimeTable", con);
        com.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "TimeTable");
        GridView1.DataSource = ds.Tables["TimeTable"];
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