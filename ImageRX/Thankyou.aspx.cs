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
    public partial class Thankyou: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
             int pid = (int)(Session["IDValue"]);
            //int pid = 17;
            int i = 0;
            
                    con.Open();

           string sql = "Update [dbo].[tbl_Order] SET [OrderStatus] = 'Submitted' where [OrderID]= '" + pid + "'";

            SqlCommand com = new SqlCommand("Select * from [dbo].[tbl_Order] WHERE [OrderID]= '" + pid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            i = da.InsertCommand.ExecuteNonQuery();
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                Label1.Text = reader["OrderID"].ToString();
                Label2.Text = reader["OrderStatus"].ToString();
              

            }
            reader.Close();
            con.Close();
        }
    


    }
}
