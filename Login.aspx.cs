using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTuto
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SUDHANSHU;Initial Catalog=OnlineTuto;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MessageLbl.Text = string.Empty; // Clear any previous messages
            }
        }

        // Login button functionality
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sqlQuery = "SELECT password, role FROM [UserEmployee] WHERE username = @username";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                cmd.Parameters.AddWithValue("@username", usernameBox.Text.Trim());

                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();

                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        string passwordFromDb = rdr["password"].ToString();
                        string roleFromDb = rdr["role"].ToString();

                        if (passwordBox.Text.Trim().Equals(passwordFromDb))
                        {
                            Session["role"] = roleFromDb; // Assign correct role to session for role wise

                            if (roleFromDb == "ADMIN")
                                Response.Redirect("EmployeeMgt.aspx");
                            else
                                Response.Redirect("Default.aspx");
                        }
                        else
                        {
                            MessageLbl.Text = "Invalid username or password. Please try again.";
                        }
                    }
                }
                else
                {
                    MessageLbl.Text = "Username does not exist. Please try again.";
                }

                rdr.Close(); // Close the reader
            }
            catch (SqlException ex)
            {
                MessageLbl.Text = "There is a problem: " + ex.Message;
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                    con.Close(); // Ensure the connection is closed
            }
        }
    }
}