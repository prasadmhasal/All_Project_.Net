using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show_calender : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load events into the calendar on initial page load
            LoadEvents();
        }

    }
    private void LoadEvents()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;

        DateTime startDate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, 1);
        DateTime endDate = startDate.AddMonths(1).AddDays(-1); // Last day of current month

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT EventDate FROM Events WHERE EventDate BETWEEN @StartDate AND @EndDate";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@StartDate", startDate);
            command.Parameters.AddWithValue("@EndDate", endDate);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                DateTime eventDate = (DateTime)reader["EventDate"];
                EventCalendar.SelectedDates.Add(eventDate);
            }
            reader.Close();
        }
    }

    

    protected void EventCalendar_DayRender(object sender, DayRenderEventArgs e)
    {
        // Query database to get events for the current day (e.Day.Date)
        string connectionString = ConfigurationManager.ConnectionStrings["EventCalendarDBConnectionString"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT EventDescription FROM Events WHERE EventDate = @EventDate";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@EventDate", e.Day.Date);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    e.Cell.BackColor = System.Drawing.Color.LightBlue;
                    e.Cell.ToolTip += reader["EventDescription"].ToString() + "\n";
                }
            }
            reader.Close();
        }

    }
    protected void EventCalendar_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        // Load events for the new visible month
        LoadEvents();
    }
}
