using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button1_Click(object sender, EventArgs e)
    {

		if(TextName.Text =="prasad"  && TextEmail.Text == "prasad@gmail.com")
		{
			labelMessege.Text = "You are Login successfully";
		}
		else if (TextName.Text == "" && TextEmail.Text == "")
		{
			labelMessege.Text = "Fill the all field";
		}
		
		

    }
}