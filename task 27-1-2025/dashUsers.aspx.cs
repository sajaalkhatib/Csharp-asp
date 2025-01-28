using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class addBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goMeeting_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewMeeting.aspx");
        }

        protected void goBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBook.aspx");
        }

        protected void goFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx"); 
        }

        protected void goReserve_Click(object sender, EventArgs e)
        {
            Response.Redirect("reserveRoom.aspx"); 
        }
    }
}