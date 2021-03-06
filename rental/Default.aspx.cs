﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mycon ="";
        mycon = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        SqlConnection objsqlconn = new SqlConnection(mycon);
        objsqlconn.Open();
        SqlCommand objcmd = new SqlCommand("Select * from datatable",objsqlconn);
        using (SqlDataAdapter sda = new SqlDataAdapter(objcmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lvCustomers.DataSource = dt;
            lvCustomers.DataBind();
        }
    }
}