using System;
using System.IO;
using System.Web.UI;

namespace TASK1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No action needed on page load
        }

        protected void log_Click(object sender, EventArgs e)
        {
            // Admin credentials check
            if (Email.Text == "Admin@gmail.com" && Password.Text == "123")
            {
                Response.Redirect("admen.aspx");
                return; // Exit after redirect
            }

            string file = Server.MapPath("users.txt");

            if (File.Exists(file))
            {
                string[] usersData = File.ReadAllLines(file);

                foreach (string user in usersData)
                {
                    string[] userData = user.Split(',');

                   
                    if (userData.Length >= 3)
                    {
                        if (Email.Text == userData[1] && Password.Text == userData[2])
                        {
                            result.Text = "Login successfully";
                            result.Visible = true;
                            Response.Redirect("dashUsers.aspx");
                            return; 
                        }
                    }
                }
            }

          
            result.Text = "Invalid username or password";
            result.Visible = true;
        }

        protected void registr_Click(object sender, EventArgs e)
        {
            Response.Redirect("Singup.aspx");
        }
    }
}