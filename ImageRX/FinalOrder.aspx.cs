using Google.Apis.Auth.OAuth2;
using Google.Apis.Drive.v3;
using Google.Apis.Download;
using Google.Apis.Services;
using Google.Apis.Util.Store;
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
using System.Threading;

namespace ImageRX
{
    public partial class FinalOrder: Page
    {
        
        public static string[] Scopes = { Google.Apis.Drive.v3.DriveService.Scope.Drive };
        string cast_number = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          // Session["IDValue"] = 17;
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
           int pid = (int)(Session["IDValue"]);
          //  int pid = 17;
            con.Open();
             SqlCommand com = new SqlCommand("Select * from [dbo].[tbl_OrderDetails] WHERE [Order_id]= '" + pid + "'", con);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                Label1.Text = reader["Cast_Number"].ToString();
                cast_number = reader["Cast_Number"].ToString();
                Label2.Text = reader["Patient_FirstName"].ToString()+" " + reader["Patient_LastName"].ToString();
                Label28.Text = reader["CustomerName"].ToString();
                Label29.Text = reader["Daterequired"].ToString();
                Label3.Text = reader["shoe_size"].ToString();
                Label4.Text = reader["height"].ToString();
                Label5.Text = reader["weight"].ToString();
                Label6.Text = reader["Gender"].ToString();
                Label25.Text = reader["shoe_type"].ToString();
                Label26.Text = reader["No_Of_Orthotics"].ToString();

                Label27.Text = reader["Diagnosis"].ToString();
             
            }
            reader.Close();
            con.Close();

        
        }
        protected void OrderSummary_Click(object sender, EventArgs e)
        {
  
                SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
               int pid = (int)(Session["IDValue"]);
              //int pid = 17;
                con.Open();
                SqlCommand com = new SqlCommand("update [dbo].[tbl_Order] SET [OrderStatus] = 'Submitted' where [OrderID] = " + pid + "", con);
                CreateFolderInFolder("1RzPg6xuJbwl94QA83CA8PctXS-Lf4HTI", cast_number);
                Response.Redirect("Thankyou.aspx");
  

        }

        //create Drive API service.    
        public static Google.Apis.Drive.v3.DriveService GetService()
        {
            //get Credentials from client_secret.json file     
            UserCredential credential;
            var CSPath = System.Web.Hosting.HostingEnvironment.MapPath("~/");

            using (var stream = new FileStream(Path.Combine(CSPath, "credentials.json"), FileMode.Open, FileAccess.Read))
            {
                String FolderPath = System.Web.Hosting.HostingEnvironment.MapPath("~/"); ;
                String FilePath = Path.Combine(FolderPath, "DriveToken.json");

                credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
                    GoogleClientSecrets.Load(stream).Secrets,
                    Scopes,
                    "user",
                    CancellationToken.None,                 
                    new FileDataStore(FilePath, true)).Result;
            }
            

            //create Drive API service.    
            Google.Apis.Drive.v3.DriveService service = new Google.Apis.Drive.v3.DriveService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = "ImageRX",
            });
            return service;
        }
       

        public static void CreateFolderInFolder(string folderId, string FolderName)
        {

            Google.Apis.Drive.v3.DriveService service = GetService();

            var FileMetaData = new Google.Apis.Drive.v3.Data.File()
            {
                Name = Path.GetFileName(FolderName),
                MimeType = "application/vnd.google-apps.folder",
                Parents = new List<string>
                   {
                       folderId
                   }
            };


            Google.Apis.Drive.v3.FilesResource.CreateRequest request;

            request = service.Files.Create(FileMetaData);
            request.Fields = "id";
            var file = request.Execute();
            Console.WriteLine("Folder ID: " + file.Id);

            var file1 = request;

        }


    }
}
