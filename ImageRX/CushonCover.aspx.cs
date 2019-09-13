using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class CushonCover : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void smods_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "UPDATE [dbo].[tbl_Patient] SET [CCMaterial] = '" + RadioButtonList1.SelectedValue + "',[MLC] = '" + RadioButtonList2.SelectedValue + "',[TCLength] = '" + RadioButtonList3.SelectedValue + "',[ULLength] = '" + RadioButtonList4.SelectedValue + "',[ULMaterial] = '" + RadioButtonList5.SelectedValue + "' WHERE [patient_id]= '" + pid + "'";

            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("ShellModifications.aspx");
            }
            else
            {
                Response.Write("Please Enter the following informaiton");
            }
            
        }

    }
}