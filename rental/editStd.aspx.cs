using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class editStd : System.Web.UI.Page
{
   
    private string connectionString = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillAuthorList();
        }
    }

    private void FillAuthorList()
    {
        lstAuthor.Items.Clear();
        string selectSQL = "SELECT name, roll, username FROM datatable";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;
        ListItem newItem = new ListItem();
        newItem.Text = "Select a student";
        newItem.Value = "";
        lstAuthor.Items.Add(newItem);
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                newItem = new ListItem();
                newItem.Text = reader["name"] + ", " + reader["roll"];
                newItem.Value = reader["username"].ToString();
                lstAuthor.Items.Add(newItem);
            }
            reader.Close();
        }
        catch (Exception err)
        {
            lblResults.Text = "Error reading list of names. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
    }

    protected void lstAuthor_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectSQL;
        selectSQL = "SELECT * FROM datatable ";
        selectSQL += "WHERE username='" + lstAuthor.SelectedItem.Value + "'";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();

            txtID.Text = reader["username"].ToString();
            txtFirstName.Text = reader["name"].ToString();
            txtLastName.Text = reader["roll"].ToString();
            txtPhone.Text = reader["email"].ToString();
            txtAddress.Text = reader["password"].ToString();
            
            reader.Close();
            lblResults.Text = "";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error getting data. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }

    }
    protected void cmdNew_Click(object sender, EventArgs e)
    {
        txtID.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        txtAddress.Text = "";
    }
    
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        string updateSQL;
        updateSQL = "Update datatable set ";
        updateSQL += "name=@name, roll=@roll, ";
        updateSQL += "email=@email, password=@password ";
        updateSQL += "where username=@username";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(updateSQL, con);

        cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@roll", txtLastName.Text);
        cmd.Parameters.AddWithValue("@email", txtPhone.Text);
        cmd.Parameters.AddWithValue("@password", txtAddress.Text);
       
       
        cmd.Parameters.AddWithValue("@username", lstAuthor.SelectedItem.Value);

        int updated = 0;
        try
        {
            con.Open();
            updated = cmd.ExecuteNonQuery();
            lblResults.Text = updated.ToString() + " record updated.";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error updating data. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }

        if (updated > 0)
        {
            FillAuthorList();
        }

    }
    
    

}

  