using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace TASK1
{
    public partial class regester : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            string Name = name.Text;
            string Email = email.Text;
            string Password = password.Text;
            string Repass = repass.Text;

            if (Password == Repass && !string.IsNullOrEmpty(Name) && !string.IsNullOrEmpty(Email) && !string.IsNullOrEmpty(Password))
            {
                // تخزين البيانات في الجلسة
                Session["UserName"] = Name;
                Session["UserEmail"] = Email;

                string[] inputText = { Name, Email, Password };
                string content = string.Join(",", inputText);
                string filePath = Server.MapPath("users.txt");

                if (File.Exists(filePath))
                {
                    File.AppendAllText(filePath, content + "\n");
                }
                else
                {
                    File.WriteAllText(filePath, content + Environment.NewLine);
                }

                Response.Redirect("login.aspx");
            }
            else if (Password != Repass)
            {
                result.Text = "Passwords do not match.";
            }
            else
            {
                result.Text = "All fields are required.";
            }
        }
    }
}