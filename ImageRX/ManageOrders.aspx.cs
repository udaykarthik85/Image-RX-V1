using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ImageRX
{
    public partial class ManageOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT  [CreatedDate],[OrderID],[Cast_Number],[Status],[shoe_type],[Physician],[patient_Name],[FootImpression],[Daterequired] FROM[dbo].[Dashboard]");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;

            string temp = "";

            //Read form DB

            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {

                temp += reader["CreatedDate"].ToString();
                temp += reader["OrderID"].ToString();
                temp += reader["Cast_Number"].ToString();
                temp += reader["Status"].ToString();
                temp += reader["Physician"].ToString();
                temp += reader["patient_Name"].ToString();
                temp += reader["Daterequired"].ToString();
                temp += "<br/>";

            }


            con.Close();

           
        }
    }
}