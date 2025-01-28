using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Singup.aspx");
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}