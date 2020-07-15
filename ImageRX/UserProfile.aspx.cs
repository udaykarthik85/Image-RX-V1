using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class UserProfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime today = DateTime.Now;
            DateTime requireddate = today.AddDays(5);



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

       

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex ==0)
            {
                DropDownList1.Visible = true;
                DropDownList1.Enabled = true;
            }
        }
    }
}