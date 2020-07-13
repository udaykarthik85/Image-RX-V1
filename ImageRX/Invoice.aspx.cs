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
using Intuit.Ipp.OAuth2PlatformClient;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Configuration;
using Intuit.Ipp.Core;
using Intuit.Ipp.Data;
using Intuit.Ipp.QueryFilter;
using Intuit.Ipp.Security;
using System.Security.Claims;

namespace ImageRX
{
    public partial class Invoice: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            string pid = "74";//Request.QueryString["id"];
                    con.Open();
             SqlCommand com = new SqlCommand("Select * from [dbo].[tbl_OrderDetails] WHERE [Order_id]= '" + pid + "'", con);
            SqlDataReader reader = com.ExecuteReader();

           

            while (reader.Read())
            {
                Label1.Text = reader["Cast_Number"].ToString();
                Label2.Text = reader["Patient_FirstName"].ToString()+" " + reader["Patient_LastName"].ToString();
                Label28.Text = reader["CustomerName"].ToString();
               
               
            }
            reader.Close();
            SqlCommand com1 = new SqlCommand("Select * from QBO_Customer where CompanyName = (Select CustomerName from OrderSummary where Order_ID = '" + pid + "') ", con);
            SqlDataReader customer = com1.ExecuteReader();
            while ( customer.Read())
            {
                Label3.Text = customer["BillAddr Line1"].ToString() + ", " + customer["BillAddr City"].ToString() + ", " + customer["BillAddr CountrySubDivisionCode"].ToString() + " " + customer["BillAddr PostalCode"].ToString();
             
            }
            customer.Close();

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

        protected void Button1_Click(object sender, EventArgs e)
        {
        string clientid = ConfigurationManager.AppSettings["clientid"];
        string clientsecret = ConfigurationManager.AppSettings["clientsecret"];
        string redirectUrl = ConfigurationManager.AppSettings["redirectUrl"];
        string environment = ConfigurationManager.AppSettings["appEnvironment"];

        OAuth2Client auth2Client = new OAuth2Client(clientid, clientsecret, redirectUrl, environment);

            List<OidcScopes> scopes = new List<OidcScopes>();
            scopes.Add(OidcScopes.Accounting);
            string authorizeUrl = auth2Client.GetAuthorizationURL(scopes);

            string realmId = "9130348210523456";
           
                var principal = User as ClaimsPrincipal;
                OAuth2RequestValidator oauthValidator = new OAuth2RequestValidator(principal.FindFirst("access_token").Value);

                // Create a ServiceContext with Auth tokens and realmId
                ServiceContext serviceContext = new ServiceContext(realmId, IntuitServicesType.QBO, oauthValidator);
                serviceContext.IppConfiguration.MinorVersion.Qbo = "51";

                // Create a QuickBooks QueryService using ServiceContext
                QueryService<CompanyInfo> querySvc = new QueryService<CompanyInfo>(serviceContext);
                CompanyInfo companyInfo = querySvc.ExecuteIdsQuery("SELECT * FROM CompanyInfo").FirstOrDefault();

                string output = "Company Name: " + companyInfo.CompanyName + " Company Address: " + companyInfo.CompanyAddr.Line1 + ", " + companyInfo.CompanyAddr.City + ", " + companyInfo.CompanyAddr.Country + " " + companyInfo.CompanyAddr.PostalCode;
              
          

        }
    }
}
