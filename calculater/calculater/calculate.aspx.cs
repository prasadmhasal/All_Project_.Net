using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace calculater
{
    public partial class calculate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double FirstNo, Second,result;
            FirstNo = double.Parse(FirstInput.Text);
            Second = double.Parse(SecondInput.Text);

            string Choice = DropDownList1.SelectedValue;

            if (Choice == "Addition")
            {
                result = FirstNo + Second;
                Answer.Text = result.ToString();

            }
            else if (Choice == "Subtration")
            {
                result = FirstNo - Second;
                Answer.Text = result.ToString();
            }
            else if (Choice == "Multiplication")
            {
                result = FirstNo * Second;
                Answer.Text = result.ToString();
            }
            else if (Choice == "Divide")
            {
                result = FirstNo / Second;
                Answer.Text = result.ToString();
            }
        }
    }
}