using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class ShellModifications : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string SHM_L = "-";
            string SHM_R = "-";
            string SFM_L = "-";
            string SFM_R = "-";
            string SC = " ";
            string SC_R = " ";
            string SC_L = " ";
            string r1 = " ", r2 = " ", r3 = " ", r4 = " ", r5 = " ";
            string l1 = " ", l2 = " ", l3 = " ", l4 = " ", l5 = " ";



            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    SHM_L = SHM_L + item.Value + "\n";
                                    }
            }
            foreach (ListItem item in CheckBoxList2.Items)
            {
                if (item.Selected)
                {
                    SHM_R = SHM_R + item.Value + "\n";
                }
            }


            if(DropDownList7.SelectedValue.Length >1)
            {
                SFM_L = SFM_L + "1 to 5 Sulcus Pad - "+DropDownList7.SelectedValue+"\n";
            }
            if(DropDownList8.SelectedValue.Length>1)
            {
                SFM_L = SFM_L + "Grind in - " + DropDownList8.SelectedValue +"-"+DropDownList9.SelectedValue+"\n";
            }


            foreach (ListItem item in CheckBoxList3.Items)
            {
                if (item.Selected)
                {
                    if(item.Text == "Met Pad")
                    {
                        SFM_L = SFM_L + item.Value + ": Thickness-" + DropDownList1.SelectedValue + ": " + TextBox2.Text + "- Placement-" +DropDownList13.SelectedValue+": "+ TextBox6.Text + "-"+DropDownList14.SelectedValue +"\n";
                    }
                    else if (item.Text == "Met Bar")
                    {
                        SFM_L = SFM_L + item.Value + ": " + DropDownList2.SelectedValue + ": " + TextBox3.Text + "\n";
                    }
                    else
                    { SFM_L = SFM_L + item.Value + "\n"; }
                    
                }
            }

            if (DropDownList12.SelectedValue.Length > 1)
            {
                SFM_R = SFM_R + "1 to 5 Sulcus Pad - " + DropDownList12.SelectedValue + "\n";
            }
            if (DropDownList10.SelectedValue.Length > 1)
            {
                SFM_R = SFM_R + "Grind in - " + DropDownList10.SelectedValue + "-" + DropDownList11.SelectedValue + "\n";
            }

            foreach (ListItem item in CheckBoxList4.Items)
            {
                if (item.Selected)
                {
                    if (item.Text == "Met Pad")
                    {
                        SFM_R = SFM_R + item.Value + ": Thickness" + DropDownList3.SelectedValue + ": " + TextBox4.Text + "- Placement-" + DropDownList15.SelectedValue + ": " + TextBox7.Text + "-" + DropDownList16.SelectedValue + "\n";
                    }
                    else if (item.Text == "Met Bar")
                    {
                        SFM_R = SFM_R + item.Value + ": " + DropDownList4.SelectedValue + ": " + TextBox5.Text + "\n";
                    }
                    else
                    { SFM_R = SFM_R + item.Value + "\n"; }
                }
            }

            if (CheckBox49.Checked == true)
            {
                SC = "Yes";
            }
            if (CheckBox50.Checked == true)
            {
                r1 = "R1";
            }
            if (CheckBox51.Checked == true)
            {
                r2 = "R2";
            }
            if (CheckBox52.Checked == true)
            {
                r3 = "R3";
            }
            if (CheckBox53.Checked == true)
            {
                r4 = "R4";
            }
            if (CheckBox54.Checked == true)
            {
                r5 = "R5";
            }
            if (CheckBox55.Checked == true)
            {
                l1 = "L1";
            }
            if (CheckBox56.Checked == true)
            {
                l2 = "L2";
            }
            if (CheckBox57.Checked == true)
            {
                l3 = "L3";
            }
            if (CheckBox58.Checked == true)
            {
                l4 = "L4";
            }
            if (CheckBox59.Checked == true)
            {
                l5 = "L5";
            }

            SC_R = r1 + "," + r2 + "," + r3 + "," + r4 + "," + r5;
            SC_L = l1 + "," + l2 + "," + l3 + "," + l4 + "," + l5;

            string SCO_Option = " ";

            if (RadioButton1.Checked)
            { SCO_Option = "Channel"; }
            else if (RadioButton2.Checked)
            { SCO_Option = "Pocket"; }
            else
            { SCO_Option = " "; }

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_Modifications] VALUES(" + pid + ",'" + SHM_L + "','" + SHM_R + "','" + SFM_L + "','" + SFM_R + "','" + SC + "','" + SC_R + "','" + SC_L + "','" + TextBox1.Text + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "','" + SCO_Option + "')";
            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();

            Response.Redirect("FileUploads.aspx");
        }

        protected void CheckBoxList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(CheckBoxList3.Items[11].Selected)
            { DropDownList1.Enabled = true; }
            else
            { DropDownList1.Enabled = false;
                DropDownList1.SelectedValue = "";
            }
            if (CheckBoxList3.Items[12].Selected)
            { DropDownList2.Enabled = true; }
            else
            {
                DropDownList2.Enabled = false;
                DropDownList2.SelectedValue = "";
            }
        }

        protected void CheckBoxList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList4.Items[11].Selected)
            { DropDownList3.Enabled = true; }
            else
            {
                DropDownList3.Enabled = false;
                DropDownList3.SelectedValue = "";
            }
            if (CheckBoxList4.Items[12].Selected)
            { DropDownList4.Enabled = true; }
            else
            {
                DropDownList4.Enabled = false;
                DropDownList4.SelectedValue = "";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "Other")
            { TextBox2.Enabled = true; }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "Other")
            { TextBox3.Enabled = true; }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedValue == "Other")
            { TextBox4.Enabled = true; }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedValue == "Other")
            { TextBox5.Enabled = true; }
        }

        protected void CheckBox49_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox49.Checked)
            {
                RadioButton1.Enabled = true;
                RadioButton2.Enabled = true;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            { RadioButton2.Checked = false; }
            
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton2.Checked)
            { RadioButton1.Checked = false;  }
        }

        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList13.SelectedValue == "Other")
            { TextBox6.Enabled = true; }
        }

        protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList15.SelectedValue == "Other")
            { TextBox7.Enabled = true; }
        }


        /*    protected void FileUploads_Click(object sender, EventArgs e)
{

SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
SqlCommand cmd;
SqlCommand cmd2;
SqlCommand cmd3;
int i = 0;
int j = 0;
int k = 0;
int pid = (int)(Session["IDValue"]);
string sql = "INSERT INTO [dbo].[tbl_ShellMods] VALUES("+pid+",'" + Checkbox1.Checked + "','" + Checkbox2.Checked + "','" + Checkbox3.Checked + "','" + Checkbox4.Checked + "','" + Checkbox5.Checked + "','" + Checkbox6.Checked + "','" + Checkbox7.Checked + "','" + Checkbox8.Checked + "','" + Checkbox9.Checked + "','" + Checkbox10.Checked + "','" + Checkbox11.Checked + "','" + Checkbox12.Checked + "','" + Checkbox13.Checked + "','" + Checkbox14.Checked + "','" + Checkbox15.Checked + "','" + Checkbox16.Checked + "','" + Checkbox17.Checked + "','" + Checkbox41.Checked + "','" + Checkbox19.Checked + "','" + Checkbox20.Checked + "')";
string sql2 = "INSERT INTO [dbo].[tbl_SoftMod] VALUES("+pid+",'" + Checkbox21.Checked + "','" + Checkbox22.Checked + "','" + Checkbox23.Checked + "','" + Checkbox24.Checked + "','" + Checkbox25.Checked + "','" + Checkbox26.Checked + "','" + Checkbox27.Checked + "','" + Checkbox28.Checked + "','" + Checkbox29.Checked + "','" + Checkbox30.Checked + "','" + Checkbox31.Checked + "','" + Checkbox32.Checked + "','" + Checkbox33.Checked + "','" + Checkbox34.Checked + "','" + Checkbox35.Checked + "','" + Checkbox36.Checked + "','" + Checkbox37.Checked + "','" + Checkbox42.Checked + "','" + Checkbox38.Checked + "','" + Checkbox39.Checked + "','" + Checkbox43.Checked + "','" + Checkbox44.Checked + "','" + RadioButtonList1.SelectedValue + "','" + Checkbox45.Checked + "','" + Checkbox46.Checked + "','" + RadioButtonList2.SelectedValue + "','" + Checkbox47.Checked + "','" + Checkbox48.Checked + "','"+TextBox2.Text+ "','"+TextBox3.Text+ "','"+TextBox1.Text+ "','"+CheckBox49.Checked+"')";
string sql3 = "INSERT INTO [dbo].[tbl_SoftMod_SubCut] VALUES(" + pid + ",'" + CheckBox50.Checked + "','" + CheckBox51.Checked + "','" + CheckBox52.Checked + "','" + CheckBox53.Checked + "','" + CheckBox54.Checked + "','" + CheckBox55.Checked + "','" + CheckBox56.Checked + "','" + CheckBox57.Checked + "','" + CheckBox58.Checked + "','" + CheckBox59.Checked + "')";
con.Open();
cmd = new SqlCommand(sql, con);
cmd2 = new SqlCommand(sql2, con);
cmd3 = new SqlCommand(sql3, con);
SqlDataAdapter da = new SqlDataAdapter();
SqlDataAdapter da2 = new SqlDataAdapter();
SqlDataAdapter da3 = new SqlDataAdapter();
da.InsertCommand = new SqlCommand(sql, con);
da2.InsertCommand = new SqlCommand(sql2, con);
da3.InsertCommand = new SqlCommand(sql3, con);
i = da.InsertCommand.ExecuteNonQuery();
j = da2.InsertCommand.ExecuteNonQuery();
k = da3.InsertCommand.ExecuteNonQuery();

Response.Redirect("FileUploads.aspx");
}
*/
    }
}