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
            String ISC = "";
            int ISCL = 0;

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
            if(RadioButton6.Checked == true)
            {
                ISC = "Image Scale";
                ISCL = Convert.ToInt32(DropDownList20.SelectedItem.Value);

            }

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_OMM] Values ("+pid+ ",'" + DropDownList19.SelectedValue + "','" + DropDownList1.SelectedValue+"','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedValue+"','"+DropDownList5.SelectedValue+"','"+DropDownList6.SelectedValue+"','"+DropDownList7.SelectedValue+"','"+DropDownList8.SelectedValue+"','"+DropDownList9.SelectedValue+"','"+DropDownList10.SelectedValue+"','"+CheckBox1.Checked+"','"+CBLO+"',"+CBL+ ",'" + CBRO + "'," + CBR+",'"+RAFO+"',"+RAFL+","+RAFR+ ",'" + LAFO + "'," + LAFL + "," + LAFR + ",'" + SMCO + "','" + ISC + "'," + ISCL + ")";
          




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
            {
                DropDownList1.Enabled = false;
                DropDownList1.SelectedIndex = 0;
                DropDownList2.Enabled = true;
                DropDownList21.Enabled = true;
                DropDownList3.Enabled = true;
                DropDownList5.Enabled = true;
                DropDownList6.Enabled = false;
                DropDownList6.SelectedIndex = 0; DropDownList7.Enabled = false;
                DropDownList7.SelectedIndex = 0; DropDownList8.Enabled = false;
                DropDownList8.SelectedIndex = 0; DropDownList9.Enabled = false;
                DropDownList9.SelectedIndex = 0;
                CheckBox1.Enabled = false;
                CheckBox1.Checked = false;

            }
            else if (DropDownList19.SelectedValue == "White Polypropylene")
            { DropDownList1.Enabled = true;
                DropDownList2.SelectedIndex = 0;
                DropDownList2.Enabled = false;
                DropDownList21.Enabled = false;
                DropDownList21.SelectedIndex = 0;
                DropDownList5.Enabled = false;
                DropDownList5.SelectedIndex = 0;
                DropDownList6.Enabled = false;
                DropDownList6.SelectedIndex = 0; DropDownList7.Enabled = false;
                DropDownList7.SelectedIndex = 0; DropDownList8.Enabled = false;
                DropDownList8.SelectedIndex = 0; DropDownList9.Enabled = false;
                DropDownList9.SelectedIndex = 0;
                CheckBox1.Enabled = false;
                CheckBox1.Checked = false;
            }
            else if (DropDownList19.SelectedValue == "Cork")
            {
                DropDownList1.Enabled = false;
                DropDownList1.SelectedIndex = 0;
                DropDownList2.Enabled = false;
                DropDownList2.SelectedIndex = 0;
                DropDownList21.Enabled = false;
                DropDownList21.SelectedIndex = 0;
                DropDownList3.Enabled = false;
                DropDownList3.SelectedIndex = 0;
                DropDownList5.Enabled = false;
                DropDownList5.SelectedIndex = 0;
                DropDownList6.Enabled = true;
                DropDownList7.Enabled = false;
                DropDownList7.SelectedIndex = 0; DropDownList8.Enabled = false;
                DropDownList8.SelectedIndex = 0; DropDownList9.Enabled = false;
                DropDownList9.SelectedIndex = 0;
                CheckBox1.Enabled = true;

            }
            else if (DropDownList19.SelectedValue == "Plastizote Diabetic Devices")
            {
                DropDownList1.Enabled = false;
                DropDownList1.SelectedIndex = 0;
                DropDownList2.Enabled = false;
                DropDownList2.SelectedIndex = 0;
                DropDownList21.Enabled = false;
                DropDownList21.SelectedIndex = 0;
                DropDownList3.Enabled = false;
                DropDownList3.SelectedIndex = 0;
                DropDownList5.Enabled = false;
                DropDownList5.SelectedIndex = 0;
                DropDownList6.Enabled = false;
                DropDownList6.SelectedIndex = 0; DropDownList7.Enabled = true;
                DropDownList8.Enabled = false;
                DropDownList8.SelectedIndex = 0; DropDownList9.Enabled = false;
                DropDownList9.SelectedIndex = 0;
                CheckBox1.Enabled = false;
                CheckBox1.Checked = false;

            }
            else if (DropDownList19.SelectedValue == "Polypro with Plantar Fill")
            {
                DropDownList1.Enabled = false;
                DropDownList1.SelectedIndex = 0;
                DropDownList2.Enabled = false;
                DropDownList2.SelectedIndex = 0;
                DropDownList21.Enabled = false;
                DropDownList21.SelectedIndex = 0;
                DropDownList3.Enabled = false;
                DropDownList3.SelectedIndex = 0;
                DropDownList5.Enabled = false;
                DropDownList5.SelectedIndex = 0;
                DropDownList6.Enabled = false;
                DropDownList6.SelectedIndex = 0; DropDownList7.Enabled = false;
                DropDownList7.SelectedIndex = 0; DropDownList8.Enabled = true;
                DropDownList9.Enabled = true;
                CheckBox1.Enabled = false;
                CheckBox1.Checked = false;

            }
        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
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
            DropDownList20.Enabled = true;
        }

        protected void DropDownList21_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}