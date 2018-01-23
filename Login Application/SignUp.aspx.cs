using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
namespace Login_Application
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool Isvalid = false;

            Isvalid = NewUserValidate();

            if (Isvalid)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CITIDbConnString"].ConnectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("sp_CreateNewUser", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = UserName.Text;
                            cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password.Text;
                            cmd.Parameters.Add("@AccNo", SqlDbType.NVarChar).Value = AccountNumber.Text;

                            con.Open();
                            cmd.ExecuteNonQuery();
                            //Login l = new Login();

                            //l.SignUpmessage ="Account has been created.";
                            //l.IssignupSuccess = true;
                            con.Close();

                            FailureText.Text = "Account has been created, Please Login";
                           

                        }
                    }
                }
                catch (Exception ex)
                {
                    FailureText.Text = "Username already exists. Please try with different username.";
                }


            }
            else
            {
                Password.Text = "";
                ReEnterPassword.Text = "";
            }

        }

        private bool NewUserValidate()
        {
            bool IsMatch = false;
            //Check if UserName already Exrists
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CITIDbConnString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_getUserId", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = UserName.Text;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        con.Close();
                        if (dt.Rows.Count > 0)
                        {

                            FailureText.Text = "Username already exists. Please try with different username.";

                        }
                        else
                        {
                            //if (this.txtAccNo.Text.Length != 12)
                            if (Regex.IsMatch(this.AccountNumber.Text, @"^[\d]{12}"))
                            {

                                if (string.Equals(Password.Text, ReEnterPassword.Text))
                                {
                                    IsMatch = true;
                                }
                                else
                                {
                                    IsMatch = false;
                                    FailureText.Text="Passwords doesn't match.Please reenter and try again.";
                                }

                            }
                            else
                            {
                                IsMatch = false;
                                FailureText.Text = "Please enter a valid 12 digit Account Number.";

                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                FailureText.Text = "Something is not right. Please try again later.";
            }
            return IsMatch;
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}