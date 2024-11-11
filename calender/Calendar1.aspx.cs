using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar1 : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load events into the calendar on initial load
            LoadEvents();
           
        }
        
    }
    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        string eventType = ddlEventTypes.SelectedValue;
        string eventDateStr = txtEventDate.Text.Trim();
        DateTime eventDate;

        // Attempt to parse the date with flexible formats
        if (DateTime.TryParseExact(eventDateStr, new string[] { "MM/dd/yyyy", "M/d/yyyy", "MM/d/yyyy", "M/dd/yyyy", "dd/MM/yyyy", "d/M/yyyy", "dd/M/yyyy", "d/MM/yyyy" },
                                   System.Globalization.CultureInfo.InvariantCulture,
                                   System.Globalization.DateTimeStyles.None,
                                   out eventDate))
        {
            // Format eventDate back to MM/dd/yyyy for consistency
            string formattedEventDate = eventDate.ToString("MM/dd/yyyy");

            string eventDescription = txtEventDescription.Text;

            // Save event to database
            string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Events (EventType, EventDate, EventDescription) " +
                               "VALUES (@EventType, @EventDate, @EventDescription)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@EventType", eventType);
                command.Parameters.AddWithValue("@EventDate", formattedEventDate);
                command.Parameters.AddWithValue("@EventDescription", eventDescription);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Event added successfully.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    // Clear input fields
                    txtEventDate.Text = "";
                    txtEventDescription.Text = "";
                }
                else
                {
                    lblMessage.Text = "Failed to add event.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        else
        {
            lblMessage.Text = "Invalid date format. Please enter date in MM/dd/yyyy format.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
       
    }
    private void LoadEvents()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT EventID, EventType, EventDate, EventDescription FROM Events ORDER BY EventDate DESC";
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable dtEvents = new DataTable();

            adapter.Fill(dtEvents);

            // Bind data to GridView
            GridViewEvents.DataSource = dtEvents;
            GridViewEvents.DataBind();
        }
    }

    protected void GridViewEvents_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int eventID = Convert.ToInt32(GridViewEvents.DataKeys[e.RowIndex].Value);
        string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;

        // Delete event from database
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string deleteQuery = "DELETE FROM Events WHERE EventID = @EventID";
            SqlCommand command = new SqlCommand(deleteQuery, connection);
            command.Parameters.AddWithValue("@EventID", eventID);

            connection.Open();
            int rowsDeleted = command.ExecuteNonQuery();
            connection.Close();

            if (rowsDeleted > 0)
            {
                // Refresh GridView after deletion
                LoadEvents();
                lblMessage.Text = "Event deleted successfully.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Failed to delete event.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("show_calender.aspx");

    }
}




