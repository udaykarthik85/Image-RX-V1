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
             SqlCommand com = new SqlCommand("Select * from [dbo].[tbl_Patient] WHERE [Order_id]= '" + pid + "'", con);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                Label1.Text = reader["Cast_Number"].ToString();
                Label2.Text = reader["Patient_Name"].ToString();
                Label28.Text = reader["CustomerName"].ToString();
                Label29.Text = reader["Daterequired"].ToString();
                Label3.Text = reader["shoe_size"].ToString();
                Label4.Text = reader["height"].ToString();
                Label5.Text = reader["weight"].ToString();
                Label6.Text = reader["Gender"].ToString();
                Label25.Text = reader["shoe_type"].ToString();
                Label26.Text = reader["No_Of_Orthotics"].ToString();

                Label27.Text = reader["Diagnosis"].ToString();
                Label30.Text = reader["FootIMpression"].ToString();

             
            }
            reader.Close();
            con.Close();
        }
        protected void OrderSummary_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            int pid = (int)(Session["IDValue"]);
            con.Open();
            SqlCommand com = new SqlCommand("update [dbo].[tbl_Order] SET [OrderStatus] = 'Submitted' where [OrderID] = "+pid+"", con);
            Response.Redirect("Thankyou.aspx");

        }


    }
}
