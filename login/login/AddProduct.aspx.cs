using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class AddProduct : System.Web.UI.Page
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
            string pname = TextBox1.Text, pcat = DropDownList1.SelectedValue, pimg;
            double price = double.Parse(TextBox3.Text);

            FileUpload1.SaveAs(Server.MapPath("Images/") + Path.GetFileName(FileUpload1.FileName));
            pimg="Images/" + Path.GetFileName(FileUpload1.FileName);

            string q = $"exec Addproduct '{pname}','{pcat}','{price}','{pimg}'";
            SqlCommand cmd = new SqlCommand(q,conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Added succesfully')</script>");

        }
    }
}