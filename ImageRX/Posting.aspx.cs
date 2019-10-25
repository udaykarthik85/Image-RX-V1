using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class Posting : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OMS_Click(object sender, EventArgs e)
        {
           
            String RFPOption = "";
            
          
            String RFPEL = "0";
            String RFPER = "0";
           
            String FFPOption = "";
           
            String FFPEL = "0";
            String FFPER = "0";

         if (RadioButton7.Checked == true)
            {
                RFPOption = DropDownList19.SelectedValue;
                if(RadioButton9.Checked == true)
                { RFPOption = RFPOption + " - INVERSION";
                    RFPEL = DropDownList7.SelectedValue;
                    RFPER = DropDownList8.SelectedValue;
                }
                if (RadioButton10.Checked == true)
                { RFPOption = RFPOption + " - MOTION";
                    RFPEL = DropDownList9.SelectedValue;
                    RFPER = DropDownList10.SelectedValue;
                }
            }

            if (RadioButton12.Checked == true)
            {
               
                if (RadioButton13.Checked == true)
                {
                    FFPOption ="VARUS";
                    FFPEL = DropDownList15.SelectedValue;
                    FFPER = DropDownList16.SelectedValue;
                }
                if (RadioButton14.Checked == true)
                {
                    FFPOption =  "VALGUS";
                    FFPEL = DropDownList17.SelectedValue;
                    FFPER = DropDownList18.SelectedValue;
                }
            }

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_Posting] values("+pid+",'"+RFPOption+"',"+RFPEL+","+RFPER+ ",'" + FFPOption + "'," +FFPEL + "," + FFPER + ",'"+DropDownList20.SelectedValue+"','"+DropDownList21.SelectedValue+"','"+TextBox1.Text+"','"+DropDownList22.SelectedValue+ "','" + DropDownList23.SelectedValue + "','" + DropDownList24.SelectedValue + "','" + DropDownList25.SelectedValue + "','" + CheckBox1.Checked + "')";
            
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

            Response.Redirect("ShellModifications.aspx");
        }

        protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton10.Checked = false;
            DropDownList7.Enabled = true;
            DropDownList8.Enabled = true;
            DropDownList9.SelectedValue = "0";
            DropDownList9.Enabled = false;
            DropDownList10.SelectedValue = "0";
            DropDownList10.Enabled = false;
        }

        protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton9.Checked = false;
            DropDownList9.Enabled = true;
            DropDownList10.Enabled = true;
            DropDownList7.SelectedValue = "0";
            DropDownList7.Enabled = false;
            DropDownList8.SelectedValue = "0";
            DropDownList8.Enabled = false;
        }

        protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList19.Enabled = true;
            RadioButton9.Enabled = true;
            RadioButton10.Enabled = true;
            RadioButton12.Checked = false;
            RadioButton13.Checked = false;
            RadioButton13.Enabled = false;
            RadioButton14.Checked = false;
            RadioButton14.Enabled = false;
            DropDownList15.SelectedValue = "0";
            DropDownList15.Enabled = false;

            DropDownList16.SelectedValue = "0";
            DropDownList16.Enabled = false;

            DropDownList17.SelectedValue = "0";
            DropDownList17.Enabled = false;

            DropDownList18.SelectedValue = "0";
            DropDownList18.Enabled = false;
        }

        protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList19.Enabled = false;
            RadioButton9.Enabled = false;
            RadioButton9.Checked = false;
            RadioButton10.Checked = false;
            RadioButton10.Enabled = false;
            RadioButton7.Checked = false;
           
            RadioButton13.Enabled = true;
           
            RadioButton14.Enabled = true;
            DropDownList7.SelectedValue = "0";
            DropDownList7.Enabled = false;

            DropDownList8.SelectedValue = "0";
            DropDownList8.Enabled = false;

            DropDownList9.SelectedValue = "0";
            DropDownList9.Enabled = false;

            DropDownList10.SelectedValue = "0";
            DropDownList10.Enabled = false;
        }

        protected void RadioButton13_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton14.Checked = false;
            DropDownList15.Enabled = true;
            DropDownList16.Enabled = true;
            DropDownList17.SelectedValue = "0";
            DropDownList17.Enabled = false;

            DropDownList18.SelectedValue = "0";
            DropDownList18.Enabled = false;
        }

        protected void RadioButton14_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton13.Checked = false;
            DropDownList17.Enabled = true;
            DropDownList18.Enabled = true;
            DropDownList15.SelectedValue = "0";
            DropDownList15.Enabled = false;

            DropDownList16.SelectedValue = "0";
            DropDownList16.Enabled = false;
        }
    }
}