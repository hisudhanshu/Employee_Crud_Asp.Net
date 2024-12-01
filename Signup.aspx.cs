using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace OnlineTuto
{
    public partial class Signup : System.Web.UI.Page
    {
        // SQL Connection declaration
        SqlConnection con = new SqlConnection(@"Data Source=SUDHANSHU;Initial Catalog=OnlineTuto;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Signup button functionality
        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            // Check if passwords match
            if (passwordBox.Text.Equals(confirmpasswordBox.Text))
            {
                try
                {
                    string sqlQuery = "EXEC CreateEmployee @username, @password, @fullname, @email, @phone, @dob, @loe";
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);

                    // Add parameters
                    cmd.Parameters.AddWithValue("@username", usernameBox.Text);
                    cmd.Parameters.AddWithValue("@password", passwordBox.Text);
                    cmd.Parameters.AddWithValue("@fullname", fullnameBox.Text);
                    cmd.Parameters.AddWithValue("@email", emailBox.Text);
                    cmd.Parameters.AddWithValue("@phone", phoneBox.Text);
                    cmd.Parameters.AddWithValue("@dob", Dateofbirth.Text);
                    cmd.Parameters.AddWithValue("@loe", LevelOfEducationList.SelectedValue.ToString());

                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();

                    int rowAffected = cmd.ExecuteNonQuery();

                    // Check if the account was successfully created
                    if (rowAffected >= 1)
                    {
                        MessageLbl.Text = "Account Successfully Created";
                    }
                    else
                    {
                        MessageLbl.Text = "Account Not Created";
                    }
                }
                catch (SqlException ex)
                {
                    MessageLbl.Text = "There is a problem: " + ex.Message;
                }
                finally
                {
                    if (con.State == System.Data.ConnectionState.Open)
                        con.Close();
                }
            }
            else
            {
                MessageLbl.Text = "Passwords do not match";
            }
        }
    }
}