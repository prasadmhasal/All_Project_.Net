using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button1_Click(object sender, EventArgs e)
    {
		if(UName.Text == "Prasad@123" && PasswordId.Text == "1234")
		{
			Message.Text = "You are login Succesfully";
			Response.Redirect("Home.aspx");
		}
		else
		{
			Message.Text = "Invalid Username and Password";
		}
    }
}