using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class admen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("addBook.aspx");
        }

        protected void addRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("addRoom.aspx");
        }
    }
}