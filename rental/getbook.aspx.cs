using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class getbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string lastPartUrl = HttpContext.Current.Request.Url.AbsoluteUri.Split('=').Last();
        string mycon = "";
        mycon = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        SqlConnection objsqlconn = new SqlConnection(mycon);
        objsqlconn.Open();
        SqlCommand objcmd;
        if (lastPartUrl=="book")
        {
            objcmd = new SqlCommand("Select * from books", objsqlconn);
            using (SqlDataAdapter sda = new SqlDataAdapter(objcmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lvCustomers.DataSource = dt;
                lvCustomers.DataBind();
            }
        }
        else if(lastPartUrl=="thesis")
        {
            objcmd = new SqlCommand("Select * from thesis", objsqlconn);
            using (SqlDataAdapter sda = new SqlDataAdapter(objcmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListView2.DataSource = dt;
                ListView2.DataBind();
            }
        }
        
    }
}