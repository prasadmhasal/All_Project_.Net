using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace login
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox5.Text,email = TextBox3.Text , pass = TextBox4.Text ,role="User" ;
            string query = $"exec UserSignUP '{user}','{pass}','{email}','{role}'";
            SqlCommand cmd = new SqlCommand(query,conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Signup successfully')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text , pass = TextBox2.Text ;
            string query = $"exec UserSignin '{pass}','{email}'";
            SqlCommand c = new SqlCommand(query,conn);
            SqlDataReader rdr = c.ExecuteReader();
            if (rdr.HasRows) 
            {
                while (rdr.Read()) 
                {
                    if (rdr["email"].Equals(email) && rdr["pass"].Equals(pass) && rdr["urole"].Equals("Admin"))
                    {
                        Session["myuser"] = email;
                        Response.Redirect("AdminHome.aspx");
                    }
                    if (rdr["email"].Equals(email) && rdr["pass"].Equals(pass) && rdr["urole"].Equals("User"))
                    {
                        Session["myuser"] = email;
                        Response.Redirect("UserHome.aspx");

                    }
                }
            }
            else 
            {
                Response.Write("<script>alert('Login')</script>");
            }    
        }
    }
}