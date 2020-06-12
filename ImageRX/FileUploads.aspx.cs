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
            int pid = (int)(Session["IDValue"]);
            

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");

            con.Open();
            int i = 0;
            string sql1 = "INSERT INTO [dbo].[tbl_Patient] Values(" + pid + ",null,null,null,null,'" + DateTime.Now.ToString() + "','" + DateTime.Now.ToString() + "')";
            SqlCommand cmd;
            cmd = new SqlCommand(sql1, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql1, con);
            i = da.InsertCommand.ExecuteNonQuery();

            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();
                int length = FileUpload1.PostedFile.ContentLength;
               
                byte[] pic = new byte[length];

             

                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                try
                {
                   
                    
                    SqlCommand com1 = new SqlCommand("UPDATE [dbo].[tbl_Patient] SET [imgname1] = @name, img1 = @photo, ModifiedDate = '"+DateTime.Now.ToString()+"' WHERE [Order_id]= '" + pid + "'", con);
                    com1.Parameters.AddWithValue("@photo", pic);
                    com1.Parameters.AddWithValue("@name", strname);
                    com1.ExecuteNonQuery();
                    Label1.Visible = true;
                    Label1.Text = "Image 1 Uploaded Sucessfully";  //after Sucessfully uploaded image
                }
                finally
                {
                    
                }



                
            }

            
                        if (FileUpload2.HasFile)
                        {
                            string strname1 = FileUpload2.FileName.ToString();
                            int length1 = FileUpload2.PostedFile.ContentLength;
                          
                            byte[] pic1 = new byte[length1];

                            FileUpload2.PostedFile.InputStream.Read(pic1, 0, length1);

                            try
                            {
                               
                                SqlCommand com2 = new SqlCommand("UPDATE [dbo].[tbl_Patient] SET [imgname2] = @name, img2 = @photo, ModifiedDate = '" + DateTime.Now.ToString() + "' WHERE [Order_id]= '" + pid + "'", con);
                                com2.Parameters.AddWithValue("@photo", pic1);
                                com2.Parameters.AddWithValue("@name", strname1);
                                com2.ExecuteNonQuery();
                                Label11.Visible = true;
                                Label11.Text = "Image 2 Uploaded Sucessfully";  //after Sucessfully uploaded image
                            }
                            finally
                            {
                               
                            }


                con.Close();

            }
            Response.Redirect("FinalOrder.aspx");
        }


    }
}
