using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class StudentData : System.Web.UI.Page
    {

        string UserRole = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                UserRole = Request.QueryString["UserRole"].ToString();
            }
        }

        protected void studentDataGrid_CommandButtonInitialize(object sender, DevExpress.Web.ASPxGridViewCommandButtonEventArgs e)
        {
            if (Request.QueryString["UserRole"].ToString() != "admin")
            {
                e.Enabled = false;
                e.Column.ShowEditButton = false;
                e.Column.ShowDeleteButton = false;
            }
        }
    }
}