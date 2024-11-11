using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace login
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            //Label1.Text = Session["myuser"].ToString();

            if (Session["myuser"] != null)
            {

                string semail = Session["myuser"].ToString();
                string q = $"select * from auth where email ='{semail}'";

                SqlCommand cmd = new SqlCommand(q, conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                Label1.Text = rdr["myuser"].ToString();

            }
            else 
            {
                Response.Write("<script>alert('you neet to login agin');window.location.herf='login.aspx'</script>");
            
            
            }
        }
    }
}