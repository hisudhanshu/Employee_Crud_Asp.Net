using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTuto
{
    public partial class EmployeeMgt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            {
                // Check if a user session exists
                if (Session["role"] == null)
                {
                    // Redirect to login page if the session does not exist
                    Response.Redirect("login.aspx");
                    return;
                }

                // Validate if the user's role is "ADMIN"
                if (!Session["role"].ToString().Equals("ADMIN", StringComparison.OrdinalIgnoreCase))
                {
                    // Redirect to unauthorized page if the user is not an admin
                    Response.Redirect("login.aspx");
                    return;
                }

                // Admin-specific functionality can be added here
            }
        }
    }
}