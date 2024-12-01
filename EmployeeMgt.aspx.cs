using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTuto
{
    public partial class EmployeeMgt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SUDHANSHU;Initial Catalog=OnlineTuto;Integrated Security=True");
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


            }        //Call the method here 

            if (!IsPostBack)
            {
                displayEmployee();

            }
        }


        //Display employee Method
        public void displayEmployee()
        {
            try
            {
                String sqlQuery = "SELECT emp_id, fullname, email, phone, date_of_birth, level_of_education, salary FROM Employee";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd); // Defined `cmd` correctly in the preceding lines

                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridviewList.DataSource = dt;
                GridviewList.DataBind();

                //Close this connection here
                con.Close();

            }
            catch (SqlException ex)
            {
                MessageLbl.Text = "There is a problem displaying employee data" + ex.Message.ToString();
            }
        }

        //event for the GridViewList

        public void GridViewList_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}