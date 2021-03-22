using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlConnection = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (sqlConnection.State != System.Data.ConnectionState.Open)
                    sqlConnection.Open();
                //establish connection using sql data adapter object
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Users where username='" + txtUserName.Text + "' and password='" + txtPassword.Text + "'", sqlConnection);
                DataTable dt = new DataTable();
                sqlDataAdapter.Fill(dt);
                //SqlCommand sqlCommand = new SqlCommand("select * from Users where username='" + txtLoginName.Text + "' and password='" + txtPassword.Text + "'", sqlConnection);
                //SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                //check if data exists
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["role"].ToString() == "admin")
                        Response.Redirect("StudentData.aspx?UserRole=admin");
                    else
                        Response.Redirect("StudentData.aspx?UserRole=user");
                }
                else
                {
                    //display error message
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login incorrect!')", true);
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}