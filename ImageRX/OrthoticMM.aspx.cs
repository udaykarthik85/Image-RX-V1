using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class OrthoticMM : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Posting_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "UPDATE [dbo].[tbl_Patient]   SET  [OMM] = '" + RadioButtonList1.SelectedValue + "',[HCD] = '" + RadioButtonList2.SelectedValue + "',[HCD_Other] = '" + TextBox1.Text + "' WHERE[patient_ID] = '"+pid+"'";
                
                
               
            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();
           
            if (i > 0 )
            {
                Response.Redirect("Posting.aspx");
            }
            else
            {
                Response.Write("Please Enter the following informaiton");
            }



           
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList2.SelectedItem.Text == "Other")
            { TextBox1.Enabled = true; }


        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}