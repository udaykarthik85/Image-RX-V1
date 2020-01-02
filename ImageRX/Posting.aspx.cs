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

            String RFPLOption = "";
           String RFPEL = "0";
            String RFPROption = "";
            String RFPER = "0";
           
            String FFPLOption = "";
           
            String FFPEL = "0";
            String FFPROption = "";

            String FFPER = "0";

         RFPOption = DropDownList19.SelectedValue;
                RFPLOption = DropDownList7.SelectedValue;
                RFPEL = DropDownList8.SelectedValue;
                RFPROption = DropDownList9.SelectedValue;
                RFPER = DropDownList10.SelectedValue;
                
              
                    FFPLOption = DropDownList15.SelectedValue;
                    FFPEL = DropDownList16.SelectedValue;
                    FFPROption = DropDownList17.SelectedValue;
                    FFPER = DropDownList18.SelectedValue;
                
         
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            int i = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_Posting] values("+pid+",'"+RFPOption+ "','" + RFPLOption + "'," + RFPEL+ ",'" + RFPROption + "'," + RFPER+ ",'" + FFPLOption + "'," +FFPEL + ",'" + FFPROption + "'," + FFPER + ",'"+DropDownList20.SelectedValue+"','"+DropDownList21.SelectedValue+"','"+TextBox1.Text+"','"+DropDownList22.SelectedValue+ "','" + DropDownList23.SelectedValue + "','" + DropDownList24.SelectedValue + "','" + DropDownList25.SelectedValue + "','" + CheckBox1.Checked + "')";
            
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

       
               protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList19.Enabled = true;
            DropDownList7.Enabled = true;
            DropDownList8.Enabled = true;
            DropDownList9.Enabled = true;
            DropDownList10.Enabled = true;
            
        }

        protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList15.Enabled = true;
            DropDownList16.Enabled = true;
            DropDownList17.Enabled = true;
            DropDownList18.Enabled = true;

                    }

      
    }
}