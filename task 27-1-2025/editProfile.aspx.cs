using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class editProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the user's current details from session or database and populate the fields
                if (Session["UserName"] != null && Session["UserEmail"] != null)
                {
                    username.Text = Session["UserName"].ToString();
                    email.Text = Session["UserEmail"].ToString();
                }
                else
                {
                    // Redirect to the registration page if user details are not available
                    Response.Redirect("regester.aspx");
                }
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            // Here, you would save the changes to the database or wherever the user data is stored.
            // For now, we'll just update the session and redirect back to the profile page.

            Session["UserName"] = username.Text;
            Session["UserEmail"] = email.Text;

            // Optionally, you can add password update logic here

            Response.Redirect("userProfile.aspx");
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            // If the user decides to cancel the changes, redirect them back to the profile page
            Response.Redirect("userProfile.aspx");
        }
    }
}