using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class _AlternateHome : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = DateTime.Now.ToString();
            DateTime today = DateTime.Now;
            DateTime requireddate = today.AddDays(5);
            TextBox6.Text = requireddate.ToString();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = "";
            if (TextBox1.Text.Length <1)
            {
                Label1.Text = Label1.Text+ "Cast # - ";
            }
                        if (DropDownList1.Text.Length <1)
            {
                Label1.Text = Label1.Text + "# of Orthotics - ";
            }
            if (DropDownList2.Text.Length < 5)
            {
                Label1.Text = Label1.Text + "Doctor - ";
            }
            if (DropDownList38.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Factory - ";
            }
            if (TextBox4.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "LastName - ";
            }
            if (TextBox5.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "FirstName - ";
            }
            if (DropDownList8.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Heel Cup Depth - ";
            }
            if (DropDownList9.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Grinding - ";
            }
            if (CheckBox5.Checked==false && CheckBox6.Checked == false && CheckBox7.Checked == false && CheckBox8.Checked == false)
            {
                Label1.Text = Label1.Text + "Medial Plaster Arch Fill - ";
            }
            if (DropDownList18.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Base Shell - ";
            }
            if (DropDownList94.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Posting - ";
            }
            if (DropDownList34.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Top Cover - ";
            }
            if (DropDownList35.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Top Cover Length - ";
            }
            if (DropDownList36.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Bottom Cover - ";
            }
            if (DropDownList44.Text.Length < 1)
            {
                Label1.Text = Label1.Text + "Bottom Cover Length";
            }
            if (Label1.Text == "")
            {
                SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
                SqlCommand cmd;
                SqlCommand Outcmd;
                int i = 0;
                int j = 0;
                string customer = "";
                customer = DropDownList2.SelectedValue.Replace("'","");
                string sql = "insert into tbl_OrderDetails values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList38.SelectedValue + "','" + customer + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + DropDownList3.SelectedValue + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox13.Text + "','" + TextBox12.Text + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "','" + TextBox14.Text + "','" + DropDownList43.SelectedValue + "','" + DropDownList42.SelectedValue + "')";
                string sql2 = "select max(Order_ID) as PID from tbl_OrderDetails";

                con.Open();
                cmd = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter();
                SqlDataAdapter da1 = new SqlDataAdapter();
                SqlDataAdapter da2 = new SqlDataAdapter();
                da.InsertCommand = new SqlCommand(sql, con);
                Outcmd = new SqlCommand(sql2, con);
                i = da.InsertCommand.ExecuteNonQuery();
                int PID = (Int32)Outcmd.ExecuteScalar();

                Session["IDValue"] = PID;
                string sql3 = "insert into tbl_Order Values(" + PID + ",'In Progress','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "')";
                sql3 = sql3 + "INSERT INTO [tbl_OrderStageDate] VALUES(" + PID + ",'" + DateTime.Now.ToString() + "','System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";
                da1.InsertCommand = new SqlCommand(sql3, con);
                //            string sql4 = "INSERT INTO [dbo].[tbl_OrderStageDate] VALUES("+PID+ ",'" + DateTime.Now.ToString() + "','System','','','','','','','','','','','','','','','','')";
                //          da2.InsertCommand = new SqlCommand(sql4, con);
                j = da1.InsertCommand.ExecuteNonQuery();
                //        k = da2.InsertCommand.ExecuteNonQuery();

                //-----------------End of Order Details ----------------------------------

                string NCB_Varus_L = " ";
                string NCB_Varus_R = " ";
                string NCB_Valgus_L = " ";
                string NCB_Valgus_R = " ";
                string KBS = " ";
                string KBS_L = " ";
                string KBS_L_Other = " ";
                string KBS_R = " ";
                string KBS_R_Other = " ";
                string AWM_L = " ";
                string AWM_R = " ";
                string MFS_L = " ";
                string MFS_R = " ";

                int NCB_Var_Value_L = 0;
                int NCB_Val_Value_L = 0;
                int NCB_Var_Value_R = 0;
                int NCB_Val_Value_R = 0;

                if (DropDownList85.SelectedIndex == 1)
                {
                    NCB_Varus_L = "Varus";
                    NCB_Var_Value_L = Convert.ToInt32(DropDownList4.SelectedValue);
                }

                if (DropDownList85.SelectedIndex == 2)
                {
                    NCB_Valgus_L = "Valgus";
                    NCB_Val_Value_L = Convert.ToInt32(DropDownList4.SelectedValue);
                }

                if (DropDownList86.SelectedIndex == 1)
                {
                    NCB_Varus_R = "Varus";
                    NCB_Var_Value_R = Convert.ToInt32(DropDownList87.SelectedValue);
                }

                if (DropDownList86.SelectedIndex == 2)
                {
                    NCB_Valgus_R = "Valgus";
                    NCB_Val_Value_R = Convert.ToInt32(DropDownList87.SelectedValue);
                }
                if(CheckBox11.Checked == true)
                { KBS = "Kirby Heel Skive"; }
                KBS_L = DropDownList47.SelectedValue;
                KBS_L_Other = TextBox16.Text;
                KBS_R = DropDownList48.SelectedValue;
                KBS_R_Other = TextBox17.Text;

                string HCD = " ";
                int HCD_Other = 0;

                HCD = DropDownList8.SelectedValue;
                HCD_Other = Convert.ToInt32(DropDownList37.SelectedValue);

                string RaiseArch = " ";
                int Raise_ArchFill_L = 0;
                int Raise_ArchFill_R = 0;
                string LowerArch = " ";
                int Lower_ArchFill_L = 0;
                int Lower_ArchFill_R = 0;

                if (CheckBox5.Checked == true)
                {
                    RaiseArch = "Raise Arch";
                    Raise_ArchFill_L = Convert.ToInt32(DropDownList10.SelectedValue);
                    Raise_ArchFill_R = Convert.ToInt32(DropDownList11.SelectedValue);

                }

                if (CheckBox6.Checked == true)
                {
                    LowerArch = "Lower Arch";
                    Lower_ArchFill_L = Convert.ToInt32(DropDownList12.SelectedValue);
                    Lower_ArchFill_R = Convert.ToInt32(DropDownList13.SelectedValue);

                }

                string SameasCast = "";

                if (CheckBox7.Checked == true)
                {
                    SameasCast = "Same as Cast";
                }

                string ImageScale = "";
                int IMSValue = 0;
                if (CheckBox8.Checked == true)
                {
                    ImageScale = "Image Scale";
                    IMSValue = Convert.ToInt32(DropDownList17.SelectedValue);
                }

                if(CheckBox12.Checked)
                { AWM_L = "Left"; }
                if (CheckBox13.Checked)
                { AWM_R = "Right"; }

                if (CheckBox14.Checked)
                { MFS_L = "Left"; }
                if (CheckBox15.Checked)
                { MFS_R = "Right"; }
                string ffp = "";
                 if (CheckBox73.Checked == true) { ffp = "Full Foot Plate : " + DropDownList104.SelectedValue; }
                string sql4 = "INSERT INTO [dbo].[tbl_OMM] values(" + PID + ",'" + NCB_Varus_L + "'," + NCB_Var_Value_L + ",'" + NCB_Valgus_L + "'," + NCB_Val_Value_L + ",'" + NCB_Varus_R + "'," + NCB_Var_Value_R + ",'" + NCB_Valgus_R + "'," + NCB_Val_Value_R + ",'" + HCD + "'," + HCD_Other + ",'" + DropDownList9.SelectedValue + "','" + RaiseArch + "'," + Raise_ArchFill_L + "," + Raise_ArchFill_R + ",'" + LowerArch + "'," + Lower_ArchFill_L + "," + Lower_ArchFill_R + ",'" + SameasCast + "','" + ImageScale + "'," + IMSValue + ",'" + DropDownList18.SelectedValue +"-"+ffp+"','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "','" + KBS + "','" + KBS_L + "','" + KBS_L_Other + "','" + KBS_R + "','" + KBS_R_Other + "','" + AWM_L + "','" + AWM_R + "','" + MFS_L + "','" + MFS_R + "')";
                da2.InsertCommand = new SqlCommand(sql4, con);
                j = da2.InsertCommand.ExecuteNonQuery();

                //----------End of Positive production /Grinding / Base Shell Instructions -------------------------

                string RFP_Inv_L = "N/A";
                string RFP_Motion_L = "N/A";
                if (DropDownList88.SelectedIndex == 1) { RFP_Inv_L = DropDownList20.SelectedValue; }
                if (DropDownList88.SelectedIndex == 2) { RFP_Motion_L = DropDownList20.SelectedValue; }

                string RFP_Inv_R = "N/A";
                string RFP_Motion_R = "N/A";
                if (DropDownList89.SelectedIndex == 1) { RFP_Inv_L = DropDownList90.SelectedValue; }
                if (DropDownList89.SelectedIndex == 2) { RFP_Motion_L = DropDownList90.SelectedValue; }

                string FFP_Varus_L = "N/A";
                string FFP_Valgus_L = "N/A";
                if (DropDownList91.SelectedIndex == 1) { FFP_Varus_L = DropDownList24.SelectedValue; }
                if (DropDownList91.SelectedIndex == 2) { FFP_Valgus_L = DropDownList24.SelectedValue; }

                string FFP_Varus_R = "N/A";
                string FFP_Valgus_R = "N/A";
                if (DropDownList92.SelectedIndex == 1) { FFP_Varus_R = DropDownList93.SelectedValue; }
                if (DropDownList92.SelectedIndex == 2) { FFP_Valgus_R = DropDownList93.SelectedValue; }




                string sql5 = "INSERT INTO [dbo].[tbl_Posting] Values(" + PID + ",'" + DropDownList94.SelectedValue + "','" + DropDownList19.SelectedValue + "','" + RFP_Inv_L + "','" + RFP_Inv_R + "','" + RFP_Motion_L + "','" + RFP_Motion_R + "','" + FFP_Varus_L + "','" + FFP_Varus_R + "','" + FFP_Valgus_L + "','" + FFP_Valgus_R + "','" + DropDownList31.SelectedValue + "','" + DropDownList32.SelectedValue + "','" + DropDownList33.SelectedValue + "','" + DropDownList39.SelectedValue + "','" + DropDownList40.SelectedValue + "','" + DropDownList41.SelectedValue + "','" + DropDownList34.SelectedValue + "','" + DropDownList35.SelectedValue + "','" + DropDownList36.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "','" + DropDownList45.SelectedValue + "','" + TextBox15.Text + "','" + DropDownList46.SelectedValue + "','" + DropDownList44.SelectedValue + "','" + DropDownList50.SelectedValue + "','" + DropDownList49.SelectedValue + "','" + TextBox18.Text + "')";
                da2.InsertCommand = new SqlCommand(sql5, con);
                j = da2.InsertCommand.ExecuteNonQuery();

                //------------End of Extensions -------------------------------------------------------------

                string SHM_L = "";
                if (CheckBox16.Checked == true) { SHM_L = SHM_L + "1st Ray Cut Out : " + DropDownList51.SelectedValue + "\n";  }
                if (CheckBox17.Checked == true) { SHM_L = SHM_L + "1st Met Cut Out : " + DropDownList52.SelectedValue + "\n"; }
                if (CheckBox18.Checked == true) { SHM_L = SHM_L + "Intrinsic Heel Hole Cut Out : " + DropDownList53.SelectedValue + "\n"; }
                if (CheckBox71.Checked == true) { SHM_L = SHM_L + "Carbon Shank : " + DropDownList98.SelectedValue + "-" + DropDownList99.SelectedValue + "\n"; }
                if (CheckBox19.Checked == true) { SHM_L = SHM_L + "Lateral Clip : " + DropDownList54.SelectedValue + "\n"; }
                if (CheckBox20.Checked == true) { SHM_L = SHM_L + "Flange : " + DropDownList56.SelectedValue +"-"+ DropDownList55.SelectedValue + "\n"; }
                if (CheckBox21.Checked == true) { SHM_L = SHM_L + "Plantar Fascia Groove : " + DropDownList57.SelectedValue + "\n"; }
                if (CheckBox72.Checked == true) { SHM_L = SHM_L + "Rigid Ext : " + DropDownList100.SelectedValue + "-" + DropDownList101.SelectedValue + "-" + DropDownList103.SelectedValue + "\n"; }

                string SHM_R = "";
                string SFM_L = "";
                if (CheckBox22.Checked == true) { SFM_L = SFM_L + "1 to 5 Sulcus Pad : " + DropDownList58.SelectedValue +"-"+ DropDownList65.SelectedValue ;
                    if (CheckBox23.Checked == true) { SFM_L = SFM_L + "Grind In : " + "-" + DropDownList66.SelectedValue + "-" + DropDownList67.SelectedValue; }
                    SFM_L = SFM_L + "\n";
                }

                if (CheckBox75.Checked == true)
                {
                    SFM_L = SFM_L + "2 to 10 Sulcus Pad : " + DropDownList107.SelectedValue + "-" + DropDownList106.SelectedValue;
                    if (CheckBox76.Checked == true) { SFM_L = SFM_L + "Grind In : " + "-" + DropDownList108.SelectedValue + "-" + DropDownList109.SelectedValue; }
                    SFM_L = SFM_L + "\n";
                }

                if (CheckBox24.Checked == true) { SFM_L = SFM_L + "Mortons Ext : " + DropDownList60.SelectedValue + "-" + DropDownList68.SelectedValue + "\n"; }
                if (CheckBox26.Checked == true) { SFM_L = SFM_L + "Flanges : " + DropDownList62.SelectedValue + "-" + DropDownList69.SelectedValue + "-" + DropDownList63.SelectedValue + "\n"; }
                if (CheckBox31.Checked == true) { SFM_L = SFM_L + "Kinetic Wedge : " + DropDownList73.SelectedValue + "\n"; }
                if (CheckBox32.Checked == true) { SFM_L = SFM_L + "Neuroma Pad : " + DropDownList74.SelectedValue + "\n"; }
                if (CheckBox33.Checked == true) { SFM_L = SFM_L + "Plantar Fascia Groove : " + DropDownList75.SelectedValue + "\n"; }
                if (CheckBox34.Checked == true) { SFM_L = SFM_L + "Runners Wedge : " + DropDownList76.SelectedValue + "-" + DropDownList96.SelectedValue + "-" + DropDownList78.SelectedValue + "\n"; }
                if (CheckBox36.Checked == true) { SFM_L = SFM_L + "Met Bar : " + DropDownList80.SelectedValue+"-" + DropDownList81.SelectedValue + "\n"; }
                if (CheckBox74.Checked == true) { SFM_L = SFM_L + "Toe Fill : " + DropDownList105.SelectedValue + "-" + TextBox20.Text + "\n"; }

                if (CheckBox25.Checked == true) { SFM_L = SFM_L + "Arch Pad : " + DropDownList61.SelectedValue + "\n"; }
                if (CheckBox27.Checked == true) { SFM_L = SFM_L + "Heel Pad : " + DropDownList64.SelectedValue + "\n"; }
                if (CheckBox28.Checked == true) { SFM_L = SFM_L + "Heel Cushion : " + DropDownList70.SelectedValue + "\n"; }
                if (CheckBox29.Checked == true) { SFM_L = SFM_L + "Cuboid Support Pad : " + DropDownList71.SelectedValue + "\n"; }
                if (CheckBox30.Checked == true) { SFM_L = SFM_L + "Metatarsal Raise: " + DropDownList72.SelectedValue + "\n"; }
                if (CheckBox35.Checked == true) { SFM_L = SFM_L + "Dancers Pad : " + DropDownList79.SelectedValue + "\n"; }
                if (CheckBox37.Checked == true) { SFM_L = SFM_L + "Met Pad : " + DropDownList82.SelectedValue + "-" + DropDownList83.SelectedValue + "-" + DropDownList84.SelectedValue+ "-" + DropDownList97.SelectedValue + "-" + DropDownList95.SelectedValue + "\n"; }




                string SFM_R = "";

                string SC = " ";
                string SC_R = " ";
                string SC_L = " ";
                string r1 = " ", r2 = " ", r3 = " ", r4 = " ", r5 = " ";
                string l1 = " ", l2 = " ", l3 = " ", l4 = " ", l5 = " ";

                if (CheckBox60.Checked == true)
                {
                    SC = "Yes";
                }
                if (CheckBox61.Checked == true)
                {
                    r1 = "R1";
                }
                if (CheckBox62.Checked == true)
                {
                    r2 = "R2";
                }
                if (CheckBox63.Checked == true)
                {
                    r3 = "R3";
                }
                if (CheckBox64.Checked == true)
                {
                    r4 = "R4";
                }
                if (CheckBox65.Checked == true)
                {
                    r5 = "R5";
                }
                if (CheckBox66.Checked == true)
                {
                    l1 = "L1";
                }
                if (CheckBox67.Checked == true)
                {
                    l2 = "L2";
                }
                if (CheckBox68.Checked == true)
                {
                    l3 = "L3";
                }
                if (CheckBox69.Checked == true)
                {
                    l4 = "L4";
                }
                if (CheckBox70.Checked == true)
                {
                    l5 = "L5";
                }

                SC_R = r1 + "," + r2 + "," + r3 + "," + r4 + "," + r5;
                SC_L = l1 + "," + l2 + "," + l3 + "," + l4 + "," + l5;

                string SCO_Option = " ";

                if (RadioButton3.Checked)
                { SCO_Option = "Channel"; }
                else if (RadioButton4.Checked)
                { SCO_Option = "Pocket"; }
                else
                { SCO_Option = " "; }

                
                string sql7 = "INSERT INTO [dbo].[tbl_Modifications] VALUES(" + PID + ",'" + SHM_L + "','" + SHM_R + "','" + SFM_L + "','" + SFM_R + "','" + SC + "','" + SC_R + "','" + SC_L + "','" + TextBox19.Text + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "','" + SCO_Option + "')";
               
                da.InsertCommand = new SqlCommand(sql7, con);
                j = da.InsertCommand.ExecuteNonQuery();

                Response.Redirect("FileUploads.aspx");



                //------------End of Modifications----------------------------------
               
            }

           
        }
       
        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList8.SelectedValue == "Other")
            {
                DropDownList37.Enabled = true;
            }
            else { DropDownList37.Enabled = false; }
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked == true)
            {
                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList10.Enabled = false; } else { DropDownList10.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList11.Enabled = false; } else { DropDownList11.Enabled = true; }
                CheckBox7.Checked = false;
                CheckBox7.Enabled = false;
                CheckBox8.Enabled = false;
                CheckBox8.Checked = false;

                DropDownList17.Enabled = false;
            }
            else
            {
                CheckBox5.Enabled = true;
                CheckBox6.Enabled = true;
                CheckBox7.Enabled = true;
                CheckBox8.Enabled = true;
                DropDownList17.Enabled = true;
                DropDownList17.SelectedValue = "0";

                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList10.Enabled = false; }
                else { DropDownList10.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList11.Enabled = false; }
                else { DropDownList11.Enabled = true; }

                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList12.Enabled = false; }
                else { DropDownList12.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList13.Enabled = false; }
                else { DropDownList13.Enabled = true; }
                DropDownList10.SelectedValue = "0";
                DropDownList11.SelectedValue = "0";
                DropDownList12.SelectedValue = "0";
                DropDownList13.SelectedValue = "0";

            }
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox6.Checked == true)
            {

                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList12.Enabled = false; }
                else { DropDownList12.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList13.Enabled = false; }
                else { DropDownList13.Enabled = true; }
                CheckBox7.Checked = false;

                CheckBox7.Enabled = false;
                CheckBox8.Enabled = false;
                CheckBox8.Checked = false;

                DropDownList17.Enabled = false;

            }
            else
            {
                CheckBox5.Enabled = true;
                CheckBox6.Enabled = true;
                CheckBox7.Enabled = true;
                CheckBox8.Enabled = true;
                DropDownList17.Enabled = true;
                DropDownList17.SelectedValue = "0";
                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList10.Enabled = false; }
                else { DropDownList10.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList11.Enabled = false; }
                else { DropDownList11.Enabled = true; }

                if (DropDownList43.SelectedValue == "Right Only Orthotic")
                { DropDownList12.Enabled = false; }
                else { DropDownList12.Enabled = true; }
                if (DropDownList43.SelectedValue == "Left Only Orthotic")
                { DropDownList13.Enabled = false; }
                else { DropDownList13.Enabled = true; }
                DropDownList10.SelectedValue = "0";
                DropDownList11.SelectedValue = "0";
                DropDownList12.SelectedValue = "0";
                DropDownList13.SelectedValue = "0";
            }
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox7.Checked == true)
            {
                DropDownList10.Enabled = false;
                DropDownList11.Enabled = false;
                DropDownList12.Enabled = false;
                DropDownList13.Enabled = false;
                CheckBox5.Checked = false;
                CheckBox5.Enabled = false;
                CheckBox6.Checked = false;
                CheckBox6.Enabled = false;
                CheckBox8.Enabled = false;
                DropDownList17.Enabled = false;

            }
            else
            {
                CheckBox5.Enabled = true;
                CheckBox6.Enabled = true;
                CheckBox7.Enabled = true;
                CheckBox8.Enabled = true;
                DropDownList17.Enabled = true;
                DropDownList17.SelectedValue = "0";
                DropDownList10.Enabled = true;
                DropDownList11.Enabled = true;
                DropDownList12.Enabled = true;
                DropDownList13.Enabled = true;
                DropDownList10.SelectedValue = "0";
                DropDownList11.SelectedValue = "0";
                DropDownList12.SelectedValue = "0";
                DropDownList13.SelectedValue = "0";
            }
        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox8.Checked == true)
            {
                DropDownList10.Enabled = false;
                DropDownList11.Enabled = false;
                DropDownList12.Enabled = false;
                DropDownList13.Enabled = false;
                CheckBox7.Enabled = false;
                CheckBox5.Checked = false;
                CheckBox5.Enabled = false;
                CheckBox6.Checked = false;
                CheckBox6.Enabled = false;
                DropDownList17.Enabled = true;

            }
            else
            {
                CheckBox5.Enabled = true;
                CheckBox6.Enabled = true;
                CheckBox7.Enabled = true;
                CheckBox8.Enabled = true;
                DropDownList17.Enabled = true;
                DropDownList17.SelectedValue = "0";
                DropDownList10.Enabled = true;
                DropDownList11.Enabled = true;
                DropDownList12.Enabled = true;
                DropDownList13.Enabled = true;
                DropDownList10.SelectedValue = "0";
                DropDownList11.SelectedValue = "0";
                DropDownList12.SelectedValue = "0";
                DropDownList13.SelectedValue = "0";
            }

        }

       
        protected void DropDownList31_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList31.SelectedValue == "Black Poron")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/16"+"\"");
                DropDownList32.Items.Add("1/8" + "\"");
            }
            else if (DropDownList31.SelectedValue == "Pink Plastizote")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/16" + "\"");
                DropDownList32.Items.Add("1/8" + "\"");
            }
                        else if (DropDownList31.SelectedValue == "Special Poron (slow recovery)")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/8" + "\"");
            }

            else if (DropDownList31.SelectedValue == "Soft EVA")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/16" + "\"");
                DropDownList32.Items.Add("1/8" + "\"");
             }
            else if (DropDownList31.SelectedValue == "Pcell")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/16" + "\"");
                DropDownList32.Items.Add("1/8" + "\"");              
            }
            
            else if (DropDownList31.SelectedValue == "Sea Mist (Memory Foam)")
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/8" + "\"");
            }
            else
            {
                DropDownList32.Items.Clear();
                DropDownList32.Items.Add("");
                DropDownList32.Items.Add("1/16" + "\"");
                DropDownList32.Items.Add("1/8" + "\"");
                DropDownList32.Items.Add("3/16" + "\"");
                DropDownList32.Items.Add("1/4" + "\"");
            }

        }

        protected void DropDownList39_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList39.SelectedValue == "Black Poron")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/16" + "\"");
                DropDownList40.Items.Add("1/8" + "\"");
            }
            else if (DropDownList39.SelectedValue == "Pink Plastizote")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/16" + "\"");
                DropDownList40.Items.Add("1/8" + "\"");
            }
            else if (DropDownList39.SelectedValue == "Special Poron (slow recovery)")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/8" + "\"");
            }

            else if (DropDownList39.SelectedValue == "Soft EVA")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/16" + "\"");
                DropDownList40.Items.Add("1/8" + "\"");
            }
            else if (DropDownList39.SelectedValue == "Pcell")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/16" + "\"");
                DropDownList40.Items.Add("1/8" + "\"");
            }

           else if (DropDownList39.SelectedValue == "Sea Mist (Memory Foam)")
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/8" + "\"");
            }
            else
            {
                DropDownList40.Items.Clear();
                DropDownList40.Items.Add("");
                DropDownList40.Items.Add("1/16" + "\"");
                DropDownList40.Items.Add("1/8" + "\"");
                DropDownList40.Items.Add("3/16" + "\"");
                DropDownList40.Items.Add("1/4" + "\"");
            }

        }

        protected void DropDownList42_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (DropDownList42.SelectedValue == "STANDARD - FUNCTIONAL")
            {
                DropDownList8.SelectedValue = "Med (10-12mm)";
                DropDownList8.BackColor = System.Drawing.Color.Blue;
                DropDownList8.ForeColor = System.Drawing.Color.White;
                DropDownList9.SelectedValue = "Normal";
                DropDownList9.BackColor = System.Drawing.Color.Blue;
                DropDownList9.ForeColor = System.Drawing.Color.White;
                DropDownList18.SelectedIndex = 2;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 1;
                DropDownList19.BackColor = System.Drawing.Color.Blue;
                DropDownList19.ForeColor = System.Drawing.Color.White;
                DropDownList31.SelectedIndex = 1;
                DropDownList31.BackColor = System.Drawing.Color.Blue;
                DropDownList31.ForeColor = System.Drawing.Color.White;
                DropDownList32.SelectedIndex = 1;
                DropDownList32.BackColor = System.Drawing.Color.Blue;
                DropDownList32.ForeColor = System.Drawing.Color.White;
                DropDownList33.SelectedIndex = 5;
                DropDownList33.BackColor = System.Drawing.Color.Blue;
                DropDownList33.ForeColor = System.Drawing.Color.White;
                DropDownList34.SelectedIndex = 1;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 5;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 1;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 0;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else if (DropDownList42.SelectedValue == "STANDARD - SPORT")
                {
                    DropDownList8.SelectedValue = "Deep (15-17mm)";
                    DropDownList8.BackColor = System.Drawing.Color.Blue;
                    DropDownList8.ForeColor = System.Drawing.Color.White;
                    DropDownList9.SelectedValue = "Normal";
                    DropDownList9.BackColor = System.Drawing.Color.Blue;
                    DropDownList9.ForeColor = System.Drawing.Color.White;
                    DropDownList18.SelectedIndex = 2;
                    DropDownList18.BackColor = System.Drawing.Color.Blue;
                    DropDownList18.ForeColor = System.Drawing.Color.White;
                    DropDownList19.SelectedIndex = 1;
                    DropDownList19.BackColor = System.Drawing.Color.Blue;
                    DropDownList19.ForeColor = System.Drawing.Color.White;
                    DropDownList31.SelectedIndex = 0;
                    DropDownList31.BackColor = System.Drawing.Color.White;
                    DropDownList31.ForeColor = System.Drawing.Color.Black;
                    DropDownList32.SelectedIndex = 0;
                    DropDownList32.BackColor = System.Drawing.Color.White;
                    DropDownList32.ForeColor = System.Drawing.Color.Black;
                    DropDownList33.SelectedIndex = 0;
                    DropDownList33.BackColor = System.Drawing.Color.White;
                    DropDownList33.ForeColor = System.Drawing.Color.Black;
                    DropDownList34.SelectedIndex = 20;
                    DropDownList34.BackColor = System.Drawing.Color.Blue;
                    DropDownList34.ForeColor = System.Drawing.Color.White;
                    DropDownList35.SelectedIndex = 5;
                    DropDownList35.BackColor = System.Drawing.Color.Blue;
                    DropDownList35.ForeColor = System.Drawing.Color.White;
                    DropDownList36.SelectedIndex = 1;
                    DropDownList36.BackColor = System.Drawing.Color.Blue;
                    DropDownList36.ForeColor = System.Drawing.Color.White;
                    RadioButtonList2.SelectedIndex = 0;
                    RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                    RadioButtonList2.ForeColor = System.Drawing.Color.White;
                }
            else if (DropDownList42.SelectedValue == "STANDARD - DRESS")
            {
                DropDownList8.SelectedValue = "Med (10-12mm)";
                DropDownList8.BackColor = System.Drawing.Color.Blue;
                DropDownList8.ForeColor = System.Drawing.Color.White;
                DropDownList9.SelectedValue = "Normal-Narrow";
                DropDownList9.BackColor = System.Drawing.Color.Blue;
                DropDownList9.ForeColor = System.Drawing.Color.White;
                DropDownList18.SelectedIndex = 7;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 0;
                DropDownList19.BackColor = System.Drawing.Color.White;
                DropDownList19.ForeColor = System.Drawing.Color.Black;
                DropDownList31.SelectedIndex = 1;
                DropDownList31.BackColor = System.Drawing.Color.Blue;
                DropDownList31.ForeColor = System.Drawing.Color.White;
                DropDownList32.SelectedIndex = 1;
                DropDownList32.BackColor = System.Drawing.Color.Blue;
                DropDownList32.ForeColor = System.Drawing.Color.White;
                DropDownList33.SelectedIndex = 2;
                DropDownList33.BackColor = System.Drawing.Color.Blue;
                DropDownList33.ForeColor = System.Drawing.Color.White;
                DropDownList34.SelectedIndex = 2;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 2;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 4;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 1;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else if (DropDownList42.SelectedValue == "FLEXIBLE - STANDARD")
            {
                DropDownList8.SelectedValue = "Med (10-12mm)";
                DropDownList8.BackColor = System.Drawing.Color.Blue;
                DropDownList8.ForeColor = System.Drawing.Color.White;
                DropDownList9.SelectedValue = "Normal";
                DropDownList9.BackColor = System.Drawing.Color.Blue;
                DropDownList9.ForeColor = System.Drawing.Color.White;
                DropDownList18.SelectedIndex = 3;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 1;
                DropDownList19.BackColor = System.Drawing.Color.Blue;
                DropDownList19.ForeColor = System.Drawing.Color.White;
                DropDownList31.SelectedIndex = 1;
                DropDownList31.BackColor = System.Drawing.Color.Blue;
                DropDownList31.ForeColor = System.Drawing.Color.White;
                DropDownList32.SelectedIndex = 1;
                DropDownList32.BackColor = System.Drawing.Color.Blue;
                DropDownList32.ForeColor = System.Drawing.Color.White;
                DropDownList33.SelectedIndex = 5;
                DropDownList33.BackColor = System.Drawing.Color.Blue;
                DropDownList33.ForeColor = System.Drawing.Color.White;
                DropDownList34.SelectedIndex = 2;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 5;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 4;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 1;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else if (DropDownList42.SelectedValue == "MULTI-SPORT - SPORT")
            {
                DropDownList8.SelectedIndex = 0;
                DropDownList8.BackColor = System.Drawing.Color.White;
                DropDownList8.ForeColor = System.Drawing.Color.Black;
                DropDownList9.SelectedIndex = 0;
                DropDownList9.BackColor = System.Drawing.Color.White;
                DropDownList9.ForeColor = System.Drawing.Color.Black;
                DropDownList18.SelectedIndex = 26;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 1;
                DropDownList19.BackColor = System.Drawing.Color.Blue;
                DropDownList19.ForeColor = System.Drawing.Color.White;
                DropDownList31.SelectedIndex = 0;
                DropDownList31.BackColor = System.Drawing.Color.White;
                DropDownList31.ForeColor = System.Drawing.Color.Black;
                DropDownList32.SelectedIndex = 0;
                DropDownList32.BackColor = System.Drawing.Color.White;
                DropDownList32.ForeColor = System.Drawing.Color.Black;
                DropDownList33.SelectedIndex = 0;
                DropDownList33.BackColor = System.Drawing.Color.White;
                DropDownList33.ForeColor = System.Drawing.Color.Black;
                DropDownList34.SelectedIndex = 6;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 5;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 2;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 1;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else if (DropDownList42.SelectedValue == "SOFT MOLD")
            {
                DropDownList8.SelectedValue = "Med (10-12mm)";
                DropDownList8.BackColor = System.Drawing.Color.Blue;
                DropDownList8.ForeColor = System.Drawing.Color.White;
                DropDownList9.SelectedValue = "Normal";
                DropDownList9.BackColor = System.Drawing.Color.Blue;
                DropDownList9.ForeColor = System.Drawing.Color.White;
                DropDownList18.SelectedIndex = 23;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 0;
                DropDownList19.BackColor = System.Drawing.Color.White;
                DropDownList19.ForeColor = System.Drawing.Color.Black;
                DropDownList31.SelectedIndex = 5;
                DropDownList31.BackColor = System.Drawing.Color.Blue;
                DropDownList31.ForeColor = System.Drawing.Color.White;
                DropDownList32.SelectedIndex = 2;
                DropDownList32.BackColor = System.Drawing.Color.Blue;
                DropDownList32.ForeColor = System.Drawing.Color.White;
                DropDownList33.SelectedIndex = 5;
                DropDownList33.BackColor = System.Drawing.Color.Blue;
                DropDownList33.ForeColor = System.Drawing.Color.White;
                DropDownList34.SelectedIndex = 1;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 5;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 1;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 0;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else if (DropDownList42.SelectedValue == "FIRM MOLD")
            {
                DropDownList8.SelectedIndex = 0;
                DropDownList8.BackColor = System.Drawing.Color.White;
                DropDownList8.ForeColor = System.Drawing.Color.Black;
                DropDownList9.SelectedIndex = 0;
                DropDownList9.BackColor = System.Drawing.Color.White;
                DropDownList9.ForeColor = System.Drawing.Color.Black;
                DropDownList18.SelectedIndex = 24;
                DropDownList18.BackColor = System.Drawing.Color.Blue;
                DropDownList18.ForeColor = System.Drawing.Color.White;
                DropDownList19.SelectedIndex = 0;
                DropDownList19.BackColor = System.Drawing.Color.White;
                DropDownList19.ForeColor = System.Drawing.Color.Black;
                DropDownList31.SelectedIndex = 0;
                DropDownList31.BackColor = System.Drawing.Color.White;
                DropDownList31.ForeColor = System.Drawing.Color.Black;
                DropDownList32.SelectedIndex = 0;
                DropDownList32.BackColor = System.Drawing.Color.White;
                DropDownList32.ForeColor = System.Drawing.Color.Black;
                DropDownList33.SelectedIndex = 0;
                DropDownList33.BackColor = System.Drawing.Color.White;
                DropDownList33.ForeColor = System.Drawing.Color.Black;
                DropDownList34.SelectedIndex = 19;
                DropDownList34.BackColor = System.Drawing.Color.Blue;
                DropDownList34.ForeColor = System.Drawing.Color.White;
                DropDownList35.SelectedIndex = 5;
                DropDownList35.BackColor = System.Drawing.Color.Blue;
                DropDownList35.ForeColor = System.Drawing.Color.White;
                DropDownList36.SelectedIndex = 1;
                DropDownList36.BackColor = System.Drawing.Color.Blue;
                DropDownList36.ForeColor = System.Drawing.Color.White;
                RadioButtonList2.SelectedIndex = 0;
                RadioButtonList2.BackColor = System.Drawing.Color.Blue;
                RadioButtonList2.ForeColor = System.Drawing.Color.White;
            }
            else
            {
                DropDownList8.SelectedValue = "";
                DropDownList8.BackColor = System.Drawing.Color.White;
                DropDownList8.ForeColor = System.Drawing.Color.Black;
                DropDownList9.SelectedValue = "";
                DropDownList9.BackColor = System.Drawing.Color.White;
                DropDownList9.ForeColor = System.Drawing.Color.Black;
                DropDownList18.SelectedIndex = 0;
                DropDownList18.BackColor = System.Drawing.Color.White;
                DropDownList18.ForeColor = System.Drawing.Color.Black;
                DropDownList19.SelectedIndex = 0;
                DropDownList19.BackColor = System.Drawing.Color.White;
                DropDownList19.ForeColor = System.Drawing.Color.Black;
                DropDownList31.SelectedIndex = 0;
                DropDownList31.BackColor = System.Drawing.Color.White;
                DropDownList31.ForeColor = System.Drawing.Color.Black;
                DropDownList32.SelectedIndex = 0;
                DropDownList32.BackColor = System.Drawing.Color.White;
                DropDownList32.ForeColor = System.Drawing.Color.Black;
                DropDownList33.SelectedIndex = 0;
                DropDownList33.BackColor = System.Drawing.Color.White;
                DropDownList33.ForeColor = System.Drawing.Color.Black;
                DropDownList34.SelectedIndex = 0;
                DropDownList34.BackColor = System.Drawing.Color.White;
                DropDownList34.ForeColor = System.Drawing.Color.Black;
                DropDownList35.SelectedIndex = 0;
                DropDownList35.BackColor = System.Drawing.Color.White;
                DropDownList35.ForeColor = System.Drawing.Color.Black;
                DropDownList36.SelectedIndex = 0;
                DropDownList36.BackColor = System.Drawing.Color.White;
                DropDownList36.ForeColor = System.Drawing.Color.Black;
                RadioButtonList2.ClearSelection();
                RadioButtonList2.BackColor = System.Drawing.Color.White;
                RadioButtonList2.ForeColor = System.Drawing.Color.Black;

            }
            
        }

        protected void DropDownList43_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList43.SelectedValue == "Left Only Orthotic")
            {
            }

            if (DropDownList43.SelectedValue == "Right Only Orthotic")
            {
       
            }
        }

        protected void DropDownList47_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList47.SelectedValue == "Other")
            { TextBox16.Enabled = true; }
            else
            { TextBox16.Enabled = false; }
        }

        protected void DropDownList48_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList48.SelectedValue == "Other")
            { TextBox17.Enabled = true; }
            else
            { TextBox17.Enabled = false; }
        }

        protected void DropDownList45_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList45.SelectedValue == "Other")
            { TextBox15.Enabled = true; }
            else
            { TextBox15.Enabled = false; }
        }

        protected void DropDownList49_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList49.SelectedValue == "Other")
            { TextBox18.Enabled = true; }
            else
            { TextBox18.Enabled = false; }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList87_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList17_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList20_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList24_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList59_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList84_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList84.SelectedIndex == 1)
            {
                DropDownList97.Items.Clear();
                DropDownList97.Items.Add("1/16");
                DropDownList97.Items.Add("1/8");
                DropDownList97.Items.Add("3/16");
                DropDownList97.Items.Add("1/4");
                DropDownList97.Items.Add("5/16");
                DropDownList97.Items.Add("3/8");
                DropDownList97.Items.Add("1/2");
                
            }
            if (DropDownList84.SelectedIndex == 2)
            {
                DropDownList97.Items.Clear();
                DropDownList97.Items.Add("1st");
                DropDownList97.Items.Add("2nd");
                DropDownList97.Items.Add("3rd");
                DropDownList97.Items.Add("4th");
                DropDownList97.Items.Add("5th");
                
            }
        }
    }
}