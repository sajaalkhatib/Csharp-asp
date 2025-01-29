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
               
                if (Session["UserName"] != null && Session["UserEmail"] != null)
                {
                    username.Text = Session["UserName"].ToString();
                    email.Text = Session["UserEmail"].ToString();
                }
                else
                {
                    Response.Redirect("regester.aspx");
                }
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            Session["UserName"] = username.Text;
            Session["UserEmail"] = email.Text;


            Response.Redirect("userProfile.aspx");
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile.aspx");
        }
    }
}