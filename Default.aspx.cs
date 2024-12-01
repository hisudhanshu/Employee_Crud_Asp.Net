using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTuto
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)

            //role access code here copy same as employeemgt cs file
        {
            if (Session["role"] != null)
            {
                if (!Session["role"].ToString().Equals("STAFF"))
                {

                }
            }
            else
            {
                Response.Redirect("login.aspx");//Redirect to login page if there is no role find in session.
            }

        }
    }
}