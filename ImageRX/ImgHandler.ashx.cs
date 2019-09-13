using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ImageRX
{
    /// <summary>
    /// Summary description for ImgHandler
    /// </summary>
    public class ImgHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            int pid = (int)(context.Session["IDValue"]);
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImaheOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand outcmd;
            con.Open();
            //string sql3 = "Select Img1 from [tbl_patient] where Patient_id = (select max(patient_ID) from [tbl_Patient])";
            string sql3 = "Select Img1 from [tbl_patient] where Patient_id = " + pid + "";
            outcmd = new SqlCommand(sql3, con);

            SqlDataReader dr = outcmd.ExecuteReader();

            while (dr.Read())
            {
                context.Response.ContentType = "image/jpg";
                context.Response.BinaryWrite((byte[])dr[0]);
            }
            con.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}