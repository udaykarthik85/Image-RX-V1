using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class FinalOrder: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
                int pid = (int)(Session["IDValue"]);
                    con.Open();
             SqlCommand com = new SqlCommand("Select * from [dbo].[tbl_Patient] WHERE [patient_id]= '" + pid + "'", con);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                Label1.Text = reader["Cast Number"].ToString();
                Label2.Text = reader["Patient_Name"].ToString();
                Label3.Text = reader["shoe_size"].ToString();
                Label4.Text = reader["height"].ToString();
                Label5.Text = reader["weight"].ToString();
                Label6.Text = reader["Gender"].ToString();
                Label7.Text = reader["OMM"].ToString();
                Label8.Text = reader["HCD"].ToString();
                Label9.Text = reader["HCD_Other"].ToString();
                Label10.Text = reader["RFPosting"].ToString();
                if (reader["RFPIOption"].ToString() == "")
                {
                    Label11.Text = reader["RFPEOption"].ToString();
                    Label12.Text = reader["RFPEL"].ToString();
                    Label13.Text = reader["RFPER"].ToString();

                }
                else
                {
                    Label11.Text = reader["RFPIOption"].ToString();
                    Label12.Text = reader["RFPIL"].ToString();
                    Label13.Text = reader["RFPIR"].ToString();

                }
                Label14.Text = reader["FFPosting"].ToString();
                if (reader["FFPIOption"].ToString() == "")
                {
                    Label15.Text = reader["FFPEOption"].ToString();
                    Label16.Text = reader["FFPEL"].ToString();
                    Label17.Text = reader["FFPER"].ToString();

                }
                else
                {
                    Label15.Text = reader["FFPIOption"].ToString();
                    Label16.Text = reader["FFPIL"].ToString();
                    Label17.Text = reader["FFPIR"].ToString();

                }

                Label18.Text = reader["OM_Shape"].ToString();
                Label19.Text = reader["OrthoticServices"].ToString();

                Label20.Text = reader["CCMaterial"].ToString();
                Label21.Text = reader["MLC"].ToString();
                Label22.Text = reader["TCLength"].ToString();
                Label23.Text = reader["ULLength"].ToString();
                Label24.Text = reader["ULMaterial"].ToString();
             
            }
            reader.Close();
            con.Close();
        }
        protected void OrderSummary_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=rxOrderDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            int pid = (int)(Session["IDValue"]);
            con.Open();
            SqlCommand com = new SqlCommand("update [dbo].[tbl_Order] SET [OrderStatus] = 'Submitted' where [OrderID] = "+pid+"", con);
            Response.Redirect("Thankyou.aspx");

        }


    }
}
