<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show_calender.aspx.cs" Inherits="show_calender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .event-calendar {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="height: 289px">
            <h1>Event Calendar</h1>
           <asp:Calendar ID="EventCalendar" runat="server" CssClass="event-calendar" 
                          OnDayRender="EventCalendar_DayRender" OnVisibleMonthChanged="EventCalendar_VisibleMonthChanged" BackColor="White" BorderColor="White" BorderWidth="1px" CellPadding="10" EnableTheming="True" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="140px" NextPrevFormat="FullMonth" Width="688px">
               <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
               <DayStyle BorderColor="Black" />
               <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
               <OtherMonthDayStyle ForeColor="#999999" />
               <SelectedDayStyle BackColor="#333399" ForeColor="White" />
               <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
               <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
