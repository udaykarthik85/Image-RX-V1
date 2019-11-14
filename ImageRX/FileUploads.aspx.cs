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
    public partial class FileUploads : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OrderSummary_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();
                int length = FileUpload1.PostedFile.ContentLength;
                int pid = (int)(Session["IDValue"]);
                byte[] pic = new byte[length];

                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                try
                {
                    con.Open();
                    
                    SqlCommand com = new SqlCommand("UPDATE [dbo].[tbl_Patient] SET [imgname1] = @name, img1 = @photo WHERE [Order_id]= '" + pid + "'", con);
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
                            int pid = (int)(Session["IDValue"]);
                            byte[] pic1 = new byte[length1];

                            FileUpload2.PostedFile.InputStream.Read(pic1, 0, length1);

                            try
                            {
                                con.Open();
                                SqlCommand com = new SqlCommand("UPDATE [dbo].[tbl_Patient] SET [imgname2] = @name, img2 = @photo WHERE [Order_id]= '" + pid + "'", con);
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
            Response.Redirect("FinalOrder.aspx");
        }


    }
}
