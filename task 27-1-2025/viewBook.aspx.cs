using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace task_27_1_2025
{
    public partial class viewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string file = Server.MapPath("Books.txt");

            string filePath = Server.MapPath("Books.txt");

            if (!File.Exists(filePath))
            {
                using (File.Create(filePath)) { }
            }

            if (File.Exists(file))
            {
                string[] usersData = File.ReadAllLines(file);

                foreach (string user in usersData)
                {
                   
                    string[] userFields = user.Split(',');

                
                    HtmlTableRow row = new HtmlTableRow();

                    row.Cells.Add(new HtmlTableCell() { InnerText = userFields[0] });
                    row.Cells.Add(new HtmlTableCell() { InnerText = userFields[1] });
                    row.Cells.Add(new HtmlTableCell() { InnerText = userFields[2] });
                    row.Cells.Add(new HtmlTableCell() { InnerText = userFields[3] });

                    TableBody.Controls.Add(row);
                }
            }
            else
            {
                TableBody.Controls.Add(new HtmlGenericControl("tr")
                {
                    InnerHtml = "<td colspan='4'>No books found</td>"
                });
            }
        }
    }
}