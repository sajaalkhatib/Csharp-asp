using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class searchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void search_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("books.txt");

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);
                bool bookFound = false;

                foreach (string line in lines)
                {
                    string[] data = line.Split(','); // Assuming format: [bookId bookName bookType bookLevel]

                    if (data[0].Equals(searchBookID.Text.Trim(), StringComparison.OrdinalIgnoreCase))
                    {
                        resultLabel.Text = $"Book Name: {data[1]}, Type:  {data[2]} , Level:  {data[3]}";
                        resultLabel.Visible = true;
                        bookFound = true;
                        break;
                    }
                }

                if (!bookFound)
                {
                    resultLabel.Text = "No book found with the given ID.";
                    resultLabel.Visible = true;
                }
            }
            else
            {
                resultLabel.Text = "Book file not found.";
                resultLabel.Visible = true;
            }
        }
    }
}