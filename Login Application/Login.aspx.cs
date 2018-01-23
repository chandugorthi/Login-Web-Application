using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace Login_Application
{
    public partial class Login : System.Web.UI.Page
    {
        //public bool IssignupSuccess;
      
       

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //IssignupSuccess = false;
            try
            {
                
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CITIDbConnString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_IsValidUser", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = Login1.UserName;
                         cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value =Login1.Password ;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            Session["UserName"]= Login1.UserName;
                            Response.Redirect("Home.aspx");

                        }
                        else
                        {
                            Login1.FailureText = "Username or Password is incorrect.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Login1.FailureText= "Something is not right. Please try again later.";
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}