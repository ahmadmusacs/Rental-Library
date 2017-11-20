using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addTh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Specialized.NameValueCollection nvc = Request.Form;
        string title = "", name = "", roll = "", super = "";
        
        if (!string.IsNullOrEmpty(nvc["title"]))
        {
            title = nvc["title"];
        }
        if (!string.IsNullOrEmpty(nvc["stdname"]))
        {
            name = nvc["stdname"];
        }
        if (!string.IsNullOrEmpty(nvc["stdroll"]))
        {
            roll = nvc["stdroll"];
        }
        if (!string.IsNullOrEmpty(nvc["supervisor"]))
        {
            super = nvc["supervisor"];
        }
        if (!string.IsNullOrEmpty(nvc["title"]))
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            con.Open();
            SqlCommand objcmd = new SqlCommand("Insert into [thesis](title,stdname,stdroll,supervisor) Values('" + title + "','" + name + "','" + roll + "','" + super + "')", con);
            objcmd.ExecuteNonQuery();
            con.Close();
            
        }
        Response.Redirect("addBook.aspx");
    }
}