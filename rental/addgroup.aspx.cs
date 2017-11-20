using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addgroup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Specialized.NameValueCollection nvc = Request.Form;
        string[] usernames = new string[6];
        usernames[1] = ""; usernames[2] = ""; usernames[3] = ""; usernames[4] = "";


        if (!string.IsNullOrEmpty(nvc["username1"]))
        {
            usernames[1] = nvc["username1"];
        }
        if (!string.IsNullOrEmpty(nvc["username2"]))
        {
            usernames[2] = nvc["username2"];
        }
        if (!string.IsNullOrEmpty(nvc["username3"]))
        {
            usernames[3] = nvc["username3"];
        }
        if (!string.IsNullOrEmpty(nvc["username4"]))
        {
            usernames[4] = nvc["username4"];
        }
        
        if (!string.IsNullOrEmpty(nvc["username1"]))
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            con.Open();
            SqlCommand objcmd = new SqlCommand("insert into [group](std1,std2,std3,std4) Values('" + usernames[1] + "','" + usernames[2] + "','" + usernames[3] + "','" + usernames[4] + "')", con);
            objcmd.ExecuteNonQuery();

            con.Close();
            Label1.Text = "1 group added";
        }
        
    }
}