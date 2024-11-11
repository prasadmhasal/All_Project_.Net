using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button1_Click(object sender, EventArgs e)
    {
		if (Uname.Text == "" && Password.Text=="")
		{
			Message.Text = "User Name and password required";
			
		}
		else
		{
			Response.Redirect("login.aspx");
		}
    }
}