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
            String RFPosting = "";
            String RFPIOption = "";
            String RFPEOption = "";
            int RFPIL = 0;
            int RFPIR = 0;
            int RFPEL = 0;
            int RFPER = 0;
            String FFPosting = "";
            String FFPIOption = "";
            String FFPEOption = "";
            int FFPIL = 0;
            int FFPIR = 0;
            int FFPEL = 0;
            int FFPER = 0;

            // Rare Foot posting logic
            if (RadioButton1.Checked == true)
            {
                RFPosting = "Intrinsic RF Posting";
                if(RadioButton2.Checked == true)
                {  RFPIOption = "Varus";
                     RFPIL = Convert.ToInt32(DropDownList1.SelectedItem.Value);
                     RFPIR = Convert.ToInt32(DropDownList2.SelectedItem.Value);
                }
                else if (RadioButton3.Checked == true)
                { RFPIOption = "Valgus";
                    RFPIL = Convert.ToInt32(DropDownList3.SelectedItem.Value);
                    RFPIR = Convert.ToInt32(DropDownList4.SelectedItem.Value);
                }
            }
            else if(RadioButton7.Checked == true)
            {  RFPosting = "Ext EVA RF Posting";

                if (RadioButton8.Checked == true)
                {
                    RFPEOption = "Low Profile Posting";
                   
                }
                else if (RadioButton17.Checked == true)
                {
                    RFPEOption = "Ext Acrylic RF Posting";

                }
                else if (RadioButton18.Checked == true)
                {
                    RFPEOption = "Ext Unibody RF Posting";

                }
                else if (RadioButton11.Checked == true)
                {
                    RFPEOption = "Heel Lift";
                    RFPEL = Convert.ToInt32(DropDownList5.SelectedItem.Value);
                    RFPER = Convert.ToInt32(DropDownList6.SelectedItem.Value);
                }
               else if (RadioButton9.Checked == true)
                {
                    RFPEOption = "Varus";
                    RFPEL = Convert.ToInt32(DropDownList7.SelectedItem.Value);
                    RFPER = Convert.ToInt32(DropDownList8.SelectedItem.Value);
                }
               else if (RadioButton10.Checked == true)
                {
                    RFPEOption = "Valgus";
                    RFPEL = Convert.ToInt32(DropDownList9.SelectedItem.Value);
                    RFPER = Convert.ToInt32(DropDownList10.SelectedItem.Value);
                }

            }


            //FF Posting logic
            // Rare Foot posting logic
            if (RadioButton4.Checked == true)
            {
                FFPosting = "Intrinsic FF Posting";
                if (RadioButton5.Checked == true)
                {
                    FFPIOption = "Varus";
                    FFPIL = Convert.ToInt32(DropDownList11.SelectedItem.Value);
                    FFPIR = Convert.ToInt32(DropDownList12.SelectedItem.Value);
                }
                else if (RadioButton6.Checked == true)
                {
                    FFPIOption = "Valgus";
                    FFPIL = Convert.ToInt32(DropDownList13.SelectedItem.Value);
                    FFPIR = Convert.ToInt32(DropDownList14.SelectedItem.Value);
                }
            }
            else if (RadioButton12.Checked == true)
            {
                FFPosting = "Ext EVA FF Posting";

                if (RadioButton15.Checked == true)
                {
                    FFPEOption = "Wedge Style";

                }
               else  if (RadioButton16.Checked == true)
                {
                    FFPEOption = "Block Style";
                }
               else  if (RadioButton13.Checked == true)
                {
                    FFPEOption = "Varus";
                    FFPEL = Convert.ToInt32(DropDownList15.SelectedItem.Value);
                    FFPER = Convert.ToInt32(DropDownList16.SelectedItem.Value);
                }
               else  if (RadioButton14.Checked == true)
                {
                    FFPEOption = "Valgus";
                    FFPEL = Convert.ToInt32(DropDownList17.SelectedItem.Value);
                    FFPER = Convert.ToInt32(DropDownList18.SelectedItem.Value);
                }

            }
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "UPDATE [dbo].[tbl_Patient] SET [RFPosting] = '"+ RFPosting + "',[RFPIOption] = '" + RFPIOption + "',[RFPIL] = '" + RFPIL + "',[RFPIR] = '" + RFPIR + "',[RFPEOption] = '" + RFPEOption + "',[RFPEL] = '" + RFPEL + "',[RFPER] = '" + RFPER + "',[FFPosting] = '" + FFPosting + "',[FFPIOption] = '" + FFPIOption + "',[FFPIL] = '" + FFPIL + "',[FFPIR] = '" + FFPIR + "',[FFPEOption] = '" + FFPEOption + "',[FFPEL] = '" + FFPEL + "',[FFPER] = '" + FFPER + "' WHERE [patient_id]= '"+pid+"'";
                                                                                                                                                                                                                                                                                                                                                                        
            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();
                 
            if (i > 0)
               
            {
                Response.Redirect("OrthoticMShape.aspx");
            }
            else
            {
                Response.Write("Please Enter the following informaiton");
            }

            Response.Redirect("OrthoticMShape.aspx");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                RadioButton2.Enabled = true;
                RadioButton3.Enabled = true;
                RadioButton8.Enabled = false;
                RadioButton8.Checked = false;
                RadioButton17.Enabled = false;
                RadioButton17.Checked = false;
                RadioButton18.Enabled = false;
                RadioButton18.Checked = false;
                RadioButton9.Enabled = false;
                RadioButton9.Checked = false;
                RadioButton10.Enabled = false;
                RadioButton10.Checked = false;
                RadioButton11.Enabled = false;
                RadioButton11.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
            if(RadioButton1.Checked == false)
            {
                RadioButton2.Enabled = false;
                RadioButton3.Enabled = false;
            }

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton2.Checked == true)
            {
                DropDownList1.Enabled = true;
                DropDownList2.Enabled = true;
                DropDownList3.SelectedValue = "0";
                DropDownList3.Enabled = false;
                DropDownList4.SelectedValue = "0";
                DropDownList4.Enabled = false;
            }
            else
            {
                
                DropDownList1.SelectedValue = "0";
                DropDownList1.Enabled = false;
                DropDownList2.SelectedValue = "0";
                DropDownList2.Enabled = false;
            }
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton3.Checked == true)
            {
                DropDownList3.Enabled = true;
                DropDownList4.Enabled = true;
                DropDownList1.SelectedValue = "0";
                DropDownList1.Enabled = false;
                DropDownList2.SelectedValue = "0";
                DropDownList2.Enabled = false;
            }
            else
            {
                DropDownList3.Enabled = false;
                DropDownList4.Enabled = false;
            }
        }

        protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton7.Checked == true)
            {
                RadioButton2.Enabled = false;
                RadioButton2.Checked = false;
                RadioButton3.Enabled = false;
                RadioButton3.Checked = false;
                DropDownList1.SelectedValue = "0";
                DropDownList1.Enabled = false;
                DropDownList2.SelectedValue = "0";
                DropDownList2.Enabled = false;
                DropDownList3.SelectedValue = "0";
                DropDownList3.Enabled = false;
                DropDownList4.SelectedValue = "0";
                DropDownList4.Enabled = false;
                RadioButton8.Enabled = true;
                RadioButton8.Checked = false;
                RadioButton17.Enabled = true;
                RadioButton17.Checked = false;
                RadioButton18.Enabled = true;
                RadioButton18.Checked = false;
                RadioButton9.Enabled = true;
                RadioButton9.Checked = false;
                RadioButton10.Enabled = true;
                RadioButton10.Checked = false;
                RadioButton11.Enabled = true;
                RadioButton11.Checked = false;

            }
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton4.Checked == true)
            {
                RadioButton5.Enabled = true;
                RadioButton6.Enabled = true;
                RadioButton13.Enabled = false;
                RadioButton13.Checked = false;
                RadioButton14.Enabled = false;
                RadioButton14.Checked = false;
                RadioButton15.Enabled = false;
                RadioButton15.Checked = false;
                RadioButton16.Enabled = false;
                RadioButton16.Checked = false;
                DropDownList15.SelectedValue = "0";
                DropDownList15.Enabled = false;
                DropDownList16.SelectedValue = "0";
                DropDownList16.Enabled = false;
                DropDownList17.SelectedValue = "0";
                DropDownList17.Enabled = false;
                DropDownList18.SelectedValue = "0";
                DropDownList18.Enabled = false;

            }


        }
      

        protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton12.Checked == true)
            {
                RadioButton5.Enabled = false;
                RadioButton5.Checked = false;
                RadioButton6.Enabled = false;
                RadioButton6.Checked = false;
                DropDownList11.SelectedValue = "0";
                DropDownList11.Enabled = false;
                DropDownList12.SelectedValue = "0";
                DropDownList12.Enabled = false;
                DropDownList13.SelectedValue = "0";
                DropDownList13.Enabled = false;
                DropDownList14.SelectedValue = "0";
                DropDownList14.Enabled = false;
                RadioButton13.Enabled = true;
                RadioButton13.Checked = false;
                RadioButton14.Enabled = true;
                RadioButton14.Checked = false;
                RadioButton15.Enabled = true;
                RadioButton15.Checked = false;
                RadioButton16.Enabled = true;
                RadioButton16.Checked = false;

            }
        }

        protected void RadioButton5_CheckedChanged1(object sender, EventArgs e)
        {
            if (RadioButton5.Checked == true)
            {
                DropDownList11.Enabled = true;
                DropDownList12.Enabled = true;
                DropDownList13.SelectedValue = "0";
                DropDownList13.Enabled = false;
                DropDownList14.SelectedValue = "0";
                DropDownList14.Enabled = false;
            }
            else
            {

                DropDownList11.SelectedValue = "0";
                DropDownList11.Enabled = false;
                DropDownList12.SelectedValue = "0";
                DropDownList12.Enabled = false;
            }
        }

        protected void RadioButton6_CheckedChanged1(object sender, EventArgs e)
        {
            if (RadioButton6.Checked == true)
            {
                DropDownList13.Enabled = true;
                DropDownList14.Enabled = true;
                DropDownList11.SelectedValue = "0";
                DropDownList11.Enabled = false;
                DropDownList12.SelectedValue = "0";
                DropDownList12.Enabled = false;
            }
            else
            {
                DropDownList13.Enabled = false;
                DropDownList14.Enabled = false;
            }
        }

        protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton8.Checked ==true)
            {
                RadioButton11.Checked = false;
                RadioButton9.Checked = false;
                RadioButton10.Checked = false;
                RadioButton17.Checked = false;
                RadioButton18.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
        }
        protected void RadioButton17_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton17.Checked == true)
            {
                RadioButton11.Checked = false;
                RadioButton9.Checked = false;
                RadioButton10.Checked = false;
                RadioButton8.Checked = false;
                RadioButton18.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
        }

        protected void RadioButton18_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton18.Checked == true)
            {
                RadioButton11.Checked = false;
                RadioButton9.Checked = false;
                RadioButton10.Checked = false;
                RadioButton17.Checked = false;
                RadioButton8.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
        }
        protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton11.Checked == true)
            {
                RadioButton8.Checked = false;
                RadioButton9.Checked = false;
                RadioButton10.Checked = false;
                RadioButton17.Checked = false;
                RadioButton18.Checked = false;
                DropDownList5.Enabled = true;
               
                DropDownList6.Enabled = true;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
        }

        protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton9.Checked == true)
            {
                RadioButton8.Checked = false;
                RadioButton11.Checked = false;
                RadioButton10.Checked = false;
                RadioButton17.Checked = false;
                RadioButton18.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
              
                DropDownList7.Enabled = true;
               
                DropDownList8.Enabled = true;
                DropDownList9.SelectedValue = "0";
                DropDownList9.Enabled = false;
                DropDownList10.SelectedValue = "0";
                DropDownList10.Enabled = false;
            }
        }

        protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton10.Checked == true)
            {
                RadioButton8.Checked = false;
                RadioButton11.Checked = false;
                RadioButton9.Checked = false;
                RadioButton17.Checked = false;
                RadioButton18.Checked = false;
                DropDownList5.SelectedValue = "0";
                DropDownList5.Enabled = false;
                DropDownList6.SelectedValue = "0";
                DropDownList6.Enabled = false;
                DropDownList7.SelectedValue = "0";
                DropDownList7.Enabled = false;
                DropDownList8.SelectedValue = "0";
                DropDownList8.Enabled = false;
               
                DropDownList9.Enabled = true;
               
                DropDownList10.Enabled = true;
            }
        }


        protected void RadioButton15_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton15.Checked == true)
            {
                RadioButton16.Checked = false;
                RadioButton13.Checked = false;
                RadioButton14.Checked = false;
                DropDownList15.SelectedValue = "0";
                DropDownList15.Enabled = false;
                DropDownList16.SelectedValue = "0";
                DropDownList16.Enabled = false;
                DropDownList17.SelectedValue = "0";
                DropDownList17.Enabled = false;
                DropDownList18.SelectedValue = "0";
                DropDownList18.Enabled = false;

            }
        }

        protected void RadioButton16_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton16.Checked == true)
            {
                RadioButton15.Checked = false;
                RadioButton13.Checked = false;
                RadioButton14.Checked = false;
                DropDownList15.SelectedValue = "0";
                DropDownList15.Enabled = false;
                DropDownList16.SelectedValue = "0";
                DropDownList16.Enabled = false;
                DropDownList17.SelectedValue = "0";
                DropDownList17.Enabled = false;
                DropDownList18.SelectedValue = "0";
                DropDownList18.Enabled = false;

            }
        }

        protected void RadioButton13_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton13.Checked == true)
            {
                RadioButton16.Checked = false;
                RadioButton15.Checked = false;
                RadioButton14.Checked = false;
               
                DropDownList15.Enabled = true;
              
                DropDownList16.Enabled = true;
                DropDownList17.SelectedValue = "0";
                DropDownList17.Enabled = false;
                DropDownList18.SelectedValue = "0";
                DropDownList18.Enabled = false;

            }
        }

        protected void RadioButton14_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton14.Checked == true)
            {
                RadioButton16.Checked = false;
                RadioButton13.Checked = false;
                RadioButton15.Checked = false;
                DropDownList15.SelectedValue = "0";
                DropDownList15.Enabled = false;
                DropDownList16.SelectedValue = "0";
                DropDownList16.Enabled = false;
               
                DropDownList17.Enabled = true;
                
                DropDownList18.Enabled = true;

            }
        }
    }
}