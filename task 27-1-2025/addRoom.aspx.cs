using System;
using System.IO;
using System.Web.UI;

namespace task_27_1_2025
{
    public partial class addRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: You can add any logic that needs to run on page load.
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string roomNameValue = roomName.Text.Trim();
            string roomIdValue = roomId.Text.Trim();
            string roomLocValue = roomLoc.Text.Trim();
            string capacityValue = capacity.Text.Trim();

           
            if (!string.IsNullOrEmpty(roomIdValue) &&
                !string.IsNullOrEmpty(roomNameValue) &&
                !string.IsNullOrEmpty(roomLocValue) &&
                !string.IsNullOrEmpty(capacityValue))
            {
                string[] inputText = { roomIdValue, roomNameValue, roomLocValue, capacityValue };
                string content = string.Join(",", inputText);
                string filePath = Server.MapPath("~/rooms.txt");

                try
                {
                    
                    File.AppendAllText(filePath, content + Environment.NewLine);
                    res.Text = "Room added successfully.";
                }
                catch (Exception ex)
                {
                    res.Text = "Error adding room: " + ex.Message;
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