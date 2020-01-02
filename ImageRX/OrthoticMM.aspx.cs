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

            String CBLO = "";
            String CBRO = "";

            int CBL = 0;
            int CBR = 0;

            String RAFO = "";
            int RAFL = 0;
           int RAFR = 0;

            String LAFO = "";
            int LAFL = 0;
            int LAFR = 0;

            String SMCO = "";
            
               CBLO = DropDownList11.SelectedItem.Value;
                CBL = Convert.ToInt32(DropDownList13.SelectedItem.Value);
            CBRO = DropDownList12.SelectedItem.Value;
                CBR = Convert.ToInt32(DropDownList14.SelectedItem.Value);
            
            if (RadioButton3.Checked == true)
            {
                RAFO = "Raise Arch";
                RAFL = Convert.ToInt32(DropDownList15.SelectedItem.Value);
                RAFR = Convert.ToInt32(DropDownList16.SelectedItem.Value);
            }
            if (RadioButton4.Checked == true)
            {
                LAFO = "Lower Arch";
                LAFL = Convert.ToInt32(DropDownList17.SelectedItem.Value);
                LAFR = Convert.ToInt32(DropDownList18.SelectedItem.Value);
            }
            if (RadioButton5.Checked == true)
            {
                SMCO = "Same as Cast";
                           }

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_OMM] Values ("+pid+ ",'" + DropDownList19.SelectedValue + "','" + DropDownList1.SelectedValue+"','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedValue+"','"+DropDownList5.SelectedValue+"','"+DropDownList6.SelectedValue+"','"+DropDownList7.SelectedValue+"','"+DropDownList8.SelectedValue+"','"+DropDownList9.SelectedValue+"','"+DropDownList10.SelectedValue+"','"+CheckBox1.Checked+"','"+CBLO+"',"+CBL+ ",'" + CBRO + "'," + CBR+",'"+RAFO+"',"+RAFL+","+RAFR+ ",'" + LAFO + "'," + LAFL + "," + LAFR + ",'" + SMCO + "')";
          




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
            
            DropDownList11.Enabled = true;
            DropDownList13.Enabled = true;
                    }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            
            DropDownList12.Enabled = true;
            DropDownList14.Enabled = true;
            
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton5.Checked = false;
            DropDownList15.Enabled = true;
            DropDownList16.Enabled = true;
           }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton5.Checked = false;
            DropDownList17.Enabled = true;
            DropDownList18.Enabled = true;
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

        protected void DropDownList19_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList19.SelectedValue == "Graphite")
            { DropDownList2.Enabled = true;
                DropDownList1.SelectedIndex = 0 ;
                DropDownList1.Enabled = false;

            }
            else if (DropDownList19.SelectedValue == "White Polypropylene")
            { DropDownList1.Enabled = true;
                DropDownList2.SelectedIndex = 0;
                DropDownList2.Enabled = false;

            }
            else
            { DropDownList2.Enabled = false;
                DropDownList1.Enabled = false;
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
            }
        }
    }
}