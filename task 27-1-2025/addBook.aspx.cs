using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_1_2025
{
    public partial class addBook1 : System.Web.UI.Page
    {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void add_Click(object sender, EventArgs e)
        //{
        //    string Name = bookName.Text;
        //    string ID = bookId.Text;
        //    string type = bookType.Text;
        //    string level = bookLevel.Text;

        //    if (ID != "" && Name != "" && type != "" && level != "")
        //    {
        //        string[] inputText = { ID, Name, type, level };
        //        string content = string.Join(",", inputText);
        //        string filePath = Server.MapPath("books.txt");

        //        if (File.Exists(filePath))
        //        {
        //            File.AppendAllText(filePath, content + "\n");

        //        }
        //        else
        //        {
        //            File.WriteAllText(filePath, content + Environment.NewLine);

        //        }
        //        res.Text = "book added";
        //        res.Visible = true;
        //    }
        //    else
        //    {
        //        res.Text = "all fields are required";
        //    }
        //}

        //protected void edit_Click(object sender, EventArgs e)
        //{

        //}

        protected void add_Click(object sender, EventArgs e)
        {
            string Name = bookName.Text;
            string ID = bookId.Text;
            string type = bookType.Text;
            string level = bookLevel.Text;

            if (ID != "" && Name != "" && type != "" && level != "")
            {
                string[] inputText = { ID, Name, type, level };
                string content = string.Join(",", inputText);
                string filePath = Server.MapPath("books.txt");

                if (File.Exists(filePath))
                {
                    File.AppendAllText(filePath, content + "\n");
                }
                else
                {
                    File.WriteAllText(filePath, content + Environment.NewLine);
                }

                res.Text = "Book added successfully!";
                res.Visible = true;
            }
            else
            {
                res.Text = "All fields are required.";
                res.Visible = true;
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string ID = bookId.Text; 
            string newName = bookName.Text;
            string newType = bookType.Text; 
            string newLevel = bookLevel.Text; 

            if (!string.IsNullOrEmpty(ID) && !string.IsNullOrEmpty(newName) && !string.IsNullOrEmpty(newType) && !string.IsNullOrEmpty(newLevel))
            {
                string filePath = Server.MapPath("books.txt");

                if (File.Exists(filePath))
                {
                    string[] lines = File.ReadAllLines(filePath);
                    bool isUpdated = false;

                    List<string> updatedLines = new List<string>();

                    foreach (string line in lines)
                    {
                  
                        string[] parts = line.Split(',');

                        if (parts.Length >= 4 && parts[0] == ID)
                        {
                           
                            string updatedRecord = $"{ID},{newName},{newType},{newLevel}";
                            updatedLines.Add(updatedRecord);
                            isUpdated = true;
                        }
                        else
                        {
                            
                            updatedLines.Add(line);
                        }
                    }

                    if (isUpdated)
                    {
                        
                        File.WriteAllLines(filePath, updatedLines);
                        res.Text = "Book updated successfully!";
                    }
                    else
                    {
                        res.Text = "Book with the specified ID was not found.";
                    }
                }
                else
                {
                    res.Text = "The file does not exist.";
                }
            }
            else
            {
                res.Text = "All fields are required.";
            }

            res.Visible = true;
        }
    }
}