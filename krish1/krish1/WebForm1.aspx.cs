using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace krish1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=maybatch2;Integrated Security=True;Encrypt=True";
            conn = new SqlConnection(sql);
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pname, pcat, pimg;
            double price;

            pname = TextBox1.Text;
            pcat = DropDownList1.Text;
            price = double.Parse(TextBox2.Text);


            FileUpload1.SaveAs(Server.MapPath("Images/")+ Path.GetFileName(FileUpload1.FileName));
            pimg = "Images/"+ Path.GetFileName(FileUpload1.FileName);

            string q = "add_product_proc '{pname}','{pcat}','{pimg}','{price}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alter('Product Added Successfully')</script>");
        }
    }
}