using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class removeStd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Specialized.NameValueCollection nvc = Request.Form;
        string name = "";

        if (!string.IsNullOrEmpty(nvc["name"]))
        {
            name = nvc["name"];
        }
        

        if (!string.IsNullOrEmpty(nvc["name"]))
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            con.Open();
            SqlCommand objcmd = new SqlCommand("Delete from datatable where username='" + name + "'", con);
            objcmd.ExecuteNonQuery();
            objcmd = new SqlCommand("Delete from login where username='" + name + "'", con);
            objcmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "1 Student Deleted";
        }
    }
}