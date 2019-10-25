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

            String CBO = "";
            int CBL = 0;
            int CBR = 0;
            String AFO = "";
            int AFL = 0;
           int AFR = 0;

            if (RadioButton1.Checked == true)
            {
                CBO = "Varus";
                CBL = Convert.ToInt32(DropDownList11.SelectedItem.Value);
                CBR = Convert.ToInt32(DropDownList13.SelectedItem.Value);
            }
            else if (RadioButton2.Checked == true)
            {
                CBO = "Valgus";
                CBL = Convert.ToInt32(DropDownList12.SelectedItem.Value);
                CBR = Convert.ToInt32(DropDownList14.SelectedItem.Value);
            }

            if (RadioButton3.Checked == true)
            {
                AFO = "Raise Arch";
                AFL = Convert.ToInt32(DropDownList15.SelectedItem.Value);
                AFR = Convert.ToInt32(DropDownList16.SelectedItem.Value);
            }
            else if (RadioButton4.Checked == true)
            {
                AFO = "Lower Arch";
                AFL = Convert.ToInt32(DropDownList17.SelectedItem.Value);
                AFR = Convert.ToInt32(DropDownList18.SelectedItem.Value);
            }
            else if (RadioButton5.Checked == true)
            {
                AFO = "Same as Cast";
                AFL = 0;
                AFR = 0;
            }

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_OMM] Values ("+pid+",'"+DropDownList1.SelectedValue+"','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedValue+"','"+DropDownList4.SelectedValue+"','"+DropDownList5.SelectedValue+"','"+DropDownList6.SelectedValue+"','"+DropDownList7.SelectedValue+"','"+DropDownList8.SelectedValue+"','"+DropDownList9.SelectedValue+"','"+DropDownList10.SelectedValue+"','"+CheckBox1.Checked+"','"+CBO+"',"+CBL+","+CBR+",'"+AFO+"',"+AFL+","+AFR+")";
          




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

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
            DropDownList11.Enabled = true;
            DropDownList13.Enabled = true;
            DropDownList12.SelectedValue = "0";
            DropDownList14.SelectedValue = "0";
            DropDownList12.Enabled = false;
            DropDownList14.Enabled = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
            DropDownList12.Enabled = true;
            DropDownList14.Enabled = true;
            DropDownList11.SelectedValue = "0";
            DropDownList13.SelectedValue = "0";
            DropDownList11.Enabled = false;
            DropDownList13.Enabled = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            DropDownList15.Enabled = true;
            DropDownList16.Enabled = true;
            DropDownList17.Enabled = false;
            DropDownList18.Enabled = false;
            DropDownList17.SelectedValue = "0";
            DropDownList18.SelectedValue = "0";
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton3.Checked = false;
            RadioButton5.Checked = false;
            DropDownList17.Enabled = true;
            DropDownList18.Enabled = true;
            DropDownList15.Enabled = false;
            DropDownList16.Enabled = false;
            DropDownList15.SelectedValue = "0";
            DropDownList16.SelectedValue = "0";
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton4.Checked = false;
            RadioButton3.Checked = false;
            DropDownList15.Enabled = false;
            DropDownList16.Enabled = false;
            DropDownList17.Enabled = false;
            DropDownList18.Enabled = false;
            DropDownList17.SelectedValue = "0";
            DropDownList18.SelectedValue = "0";
            DropDownList15.SelectedValue = "0";
            DropDownList16.SelectedValue = "0";
        }
    }
}