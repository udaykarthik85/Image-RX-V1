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
    public partial class DesignUploads : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Request.QueryString["id"];

           
        }

        protected void OrderSummary_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();
                int length = FileUpload1.PostedFile.ContentLength;
                string st = Request.QueryString["id"];
                int pid = Convert.ToInt32(st);
                byte[] pic = new byte[length];
               

               
                try
                {
                    con.Open();
                    
                    SqlCommand com = new SqlCommand("INSERT INTO [dbo].[tbl_DesignUpload] VALUES(" + pid + ", @name, @photo, NULL, NULL, '" + DateTime.Now.ToString()+"')", con);
                    com.Parameters.AddWithValue("@photo", pic);
                    com.Parameters.AddWithValue("@name", strname);
                    com.ExecuteNonQuery();
                    Label1.Visible = true;
                    Label1.Text = "Image 1 Uploaded Sucessfully";  //after Sucessfully uploaded image
                }
                finally
                {
                    con.Close();
                }



                
            }

            
                        if (FileUpload2.HasFile)
                        {
                            string strname1 = FileUpload2.FileName.ToString();
                            int length1 = FileUpload2.PostedFile.ContentLength;
                string st = Request.QueryString["id"];
                int pid = Convert.ToInt32(st);
                byte[] pic1 = new byte[length1];

                            FileUpload2.PostedFile.InputStream.Read(pic1, 0, length1);

                            try
                            {
                                con.Open();
                                SqlCommand com = new SqlCommand("UPDATE [dbo].[tbl_DesignUpload] SET [imgname2] = @name, img2 = @photo WHERE [Order_id]= '" + pid + "'", con);
                                com.Parameters.AddWithValue("@photo", pic1);
                                com.Parameters.AddWithValue("@name", strname1);
                                com.ExecuteNonQuery();
                                Label11.Visible = true;
                                Label11.Text = "Image 2 Uploaded Sucessfully";  //after Sucessfully uploaded image
                            }
                            finally
                            {
                                con.Close();
                            }


               

            }
            string s1 = Request.QueryString["id"];
            int p1 = Convert.ToInt32(s1);
            Response.Redirect("OrderAction.aspx?id=" + p1);
        }


    }
}
