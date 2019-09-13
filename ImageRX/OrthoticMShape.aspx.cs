using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class OrthoticMShape : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CC_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "UPDATE [dbo].[tbl_Patient] SET [OM_Shape] = '" + RadioButtonList2.SelectedValue  + "',[OrthoticServices] = '" + RadioButtonList3.SelectedValue + "' WHERE [patient_id]= '" + pid + "'";

            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("CushonCover.aspx");
            }
            else
            {
                Response.Write("Please Enter the following informaiton");
            }
            
        }
    }
}