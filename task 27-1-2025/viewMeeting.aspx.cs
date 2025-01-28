using System;
using System.IO;
using System.Text;
using System.Web.UI;

namespace task_27_1_2025
{
    public partial class viewMeeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                LoadMeetingRooms();
            }
        }

        private void LoadMeetingRooms()
        {
            string filePath = Server.MapPath("~/rooms.txt");

            try
            {
                if (File.Exists(filePath))
                {
                    var fileContent = File.ReadAllLines(filePath);
                    StringBuilder tableRows = new StringBuilder();

                    if (fileContent.Length == 0)
                    {
                        TableBody.InnerHtml = "<tr><td colspan='4'>No meeting rooms available.</td></tr>";
                        return;
                    }

                    foreach (var line in fileContent)
                    {
                        var columns = line.Split(',');

                        if (columns.Length == 4)
                        {
                            tableRows.Append("<tr>");
                            tableRows.AppendFormat("<td>{0}</td>", columns[0]);
                            tableRows.AppendFormat("<td>{0}</td>", columns[1]);
                            tableRows.AppendFormat("<td>{0}</td>", columns[2]);
                            tableRows.AppendFormat("<td>{0}</td>", columns[3]);
                            tableRows.Append("</tr>");
                        }
                        else
                        {
                           
                            tableRows.Append("<tr><td colspan='4'>Malformed line detected.</td></tr>");
                        }
                    }

                    TableBody.InnerHtml = tableRows.ToString();
                }
                else
                {
                    TableBody.InnerHtml = "<tr><td colspan='4'>File not found.</td></tr>";
                }
            }
            catch (Exception ex)
            {
                TableBody.InnerHtml = $"<tr><td colspan='4'>Error: {ex.Message}</td></tr>";
            }
        }
    }
}