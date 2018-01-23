using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;

namespace Login_Application
{
    public partial class UserProfile : System.Web.UI.Page
    {
        public string uname="";
        public int IsValidCount;
        public int count;
        public string getUsername()
        {
            if(Session["Username"]!=null)

            {
                uname = Session["Username"].ToString();
            }
            return uname;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                UserName.Enabled = false;
                AccountNumber.Enabled = false;
                EmailId.Enabled = false;
                ContactNumber.Enabled = false;
                Address.Enabled = false;
                try
                {
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CITIDbConnString"].ConnectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("sp_getUserProfile", con))
                        {

                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = getUsername();
                            con.Open();
                            cmd.ExecuteNonQuery();
                            SqlDataAdapter da = new SqlDataAdapter(cmd);
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            con.Close();

                            UserName.Text = dt.Rows[0]["Name"].ToString();
                            AccountNumber.Text = dt.Rows[0]["AccountNo"].ToString();
                            EmailId.Text = dt.Rows[0]["EmailId"].ToString();
                            ContactNumber.Text = dt.Rows[0]["ContactNo"].ToString();
                            Address.Text = dt.Rows[0]["Address"].ToString();

                        }
                    }
                }

                catch (Exception ex)
                {
                    FailureText.Text = "Something is not right.Please try again later.";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmailId.Enabled = true;
            ContactNumber.Enabled = true;
            Address.Enabled = true;
        }

        protected void Save_click(object sender, EventArgs e)
        {

            int x = UserProfileValidations();
            if (x == 0)
            {
                int i = SaveUserProfile();
                if (i > 0)
                {
                  FailureText.Text= "Profile has been updated";

                    Response.Redirect("UserProfile.aspx");
                }
            }

        }


        public int SaveUserProfile()
        {
            count = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CITIDbConnString"].ConnectionString))
                {
                    using (SqlCommand cmd1 = new SqlCommand("sp_getUserId", con))
                    {
                        cmd1.CommandType = CommandType.StoredProcedure;
                        cmd1.Parameters.Add("@Username", SqlDbType.NVarChar).Value = this.UserName.Text;
                        con.Open();
                        cmd1.ExecuteNonQuery();
                        SqlDataAdapter da = new SqlDataAdapter(cmd1);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {

                            count = 0;
                            using (SqlCommand cmd = new SqlCommand("sp_InsertRUpdateUserProfile", con))
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = this.UserName.Text;
                                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = this.UserName.Text;
                                cmd.Parameters.Add("@AccNo", SqlDbType.NVarChar).Value = this.AccountNumber.Text;
                                cmd.Parameters.Add("@EmailId", SqlDbType.NVarChar).Value = this.EmailId.Text;
                                cmd.Parameters.Add("@ContactNo", SqlDbType.NVarChar).Value = this.ContactNumber.Text;
                                cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = this.Address.Text;
                               

                                cmd.ExecuteNonQuery();
                                count = 1;
                                con.Close();
                            }
                        }
                        else
                            count = -1;
                            
                    }
                }
            }
            catch(Exception ex)
            {
                FailureText.Text = "Something is not right.Please try again later.";
            }

                            return count;
        }
        private int UserProfileValidations()
        {
            IsValidCount = 0;
            StringBuilder sb = new StringBuilder("");
           // sb.AppendLine();
       
           
            if (!Regex.IsMatch(this.EmailId.Text, @"^([a-zA-z0-9][a-zA-z0-9_\-\.]*[a-zA-z0-9])@(([a-zA-z0-9][a-zA-z0-9_\-\.]*[a-zA-z0-9])+\.(com|gov|edu|us|in))"))
        
            {

                sb.Append( "Please Enter a valid email id not more than 50 Charaters.");

            }
            if (!Regex.IsMatch(this.ContactNumber.Text, @"^[\d]{10}"))
            {
                //RequiredFieldValidator1.Text="Please enter a valid 10 digit Contact Number.";
                sb.Append("Please enter a valid 10 digit Contact Number.");
            }
            if (this.Address.Text.Length > 100)
            {
                sb.Append("Address Should be not exceed 100 characters.");
            }
            if (this.Address.Text.Length > 100 || !Regex.IsMatch(this.ContactNumber.Text, @"^[\d]{10}") || !Regex.IsMatch(this.EmailId.Text, @"^([a-zA-z0-9][a-zA-z0-9_\-\.]*[a-zA-z0-9])@(([a-zA-z0-9][a-zA-z0-9_\-\.]*[a-zA-z0-9])+\.(com|gov|edu|us|in))") )

            {
                IsValidCount++;
                FailureText.Text = sb.ToString();
            
            }
            return IsValidCount;
        }

       
    }
}