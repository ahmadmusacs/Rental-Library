using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Specialized.NameValueCollection nvc = Request.Form;
        string username = "", password = "", checkAgain = "0";
        if (!string.IsNullOrEmpty(nvc["username"]))
        {
            username = nvc["username"];
        }

        if (!string.IsNullOrEmpty(nvc["password"]))
        {
            password = nvc["password"];
        }

        if(!string.IsNullOrEmpty(nvc["remember"]))
        {
            checkAgain = nvc["remember"];
        }
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from login where username = '" +
            username + "' and Password = '" + password + "' ";

        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Response.Redirect("Default.aspx");
        }
        
        con.Close();
    }
    
    
}