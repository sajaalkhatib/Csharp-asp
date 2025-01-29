using System;
using System.Web.UI;

namespace task_27_1_2025
{
    public partial class dashUsers : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null && Session["UserEmail"] != null)
                {
                    UserName.Text = Session["UserName"].ToString();
                    UserEmail.Text = Session["UserEmail"].ToString();
                }
                else
                {
                    Response.Redirect("Singup.aspx");
                }
            }
        }

        protected void goBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBook.aspx");
        }

        protected void goMeeting_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewMeeting.aspx");
        }

        protected void goFeedback_Click(object sender, EventArgs e)
        {
           
        }

        protected void goReserve_Click(object sender, EventArgs e)
        {
           
        }

        protected void goProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile.aspx");
        }
    }
}
