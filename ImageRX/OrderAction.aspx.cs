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
    public partial class OrderAction: Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string message = "Do you want to submit?";
            ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");
            string v = Request.QueryString["id"];

         

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            // int pid = (int)(v.ToString());//(Session["IDValue"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from [dbo].[tbl_OrderStageDate] WHERE [Orderid]= '" + v + "'", con);
            SqlDataReader readStage = cmd.ExecuteReader();

            while (readStage.Read())
            {
                Label25.Text = readStage["NewOrder"].ToString();
                TextBox1.Text = readStage["NewOrder_tek"].ToString();
                Label26.Text = readStage["ReadytoProcess"].ToString();
                if (readStage["ReadytoProcess_tek"] != DBNull.Value || readStage["ReadytoProcess_tek"].ToString() != "")
                { TextBox2.Text = readStage["ReadytoProcess_tek"].ToString(); }

                Label37.Text = readStage["DesignStart"].ToString();
                if (readStage["DesignStart_tek"] != DBNull.Value || readStage["DesignStart_tek"].ToString() != "")
                { TextBox13.Text = readStage["DesignStart_tek"].ToString(); }

                Label38.Text = readStage["CAM"].ToString();
                if (readStage["CAM_tek"] != DBNull.Value || readStage["CAM_tek"].ToString() != "")
                { TextBox14.Text = readStage["CAM_tek"].ToString(); }

                Label27.Text = readStage["Milled"].ToString();
                if (readStage["Milled_tek"].ToString() != "" || readStage["Milled_tek"] != DBNull.Value)
                { TextBox3.Text = readStage["Milled_tek"].ToString(); }

                Label28.Text = readStage["Molding"].ToString();
                if (readStage["Molding_tek"].ToString() != "" || readStage["Molding_tek"] != DBNull.Value)
                { TextBox4.Text = readStage["Modling_tek"].ToString(); }


                Label34.Text = readStage["Grinding"].ToString();
                if (readStage["Grinding_tek"].ToString() != "" || readStage["Grinding_tek"] != DBNull.Value)
                { TextBox10.Text = readStage["Grinding_tek"].ToString(); }

                Label35.Text = readStage["Posting"].ToString();
                if (readStage["Posting_tek"].ToString() != "" || readStage["Posting_tek"] != DBNull.Value)
                { TextBox11.Text = readStage["Posting_tek"].ToString(); }

                Label36.Text = readStage["Accomodations"].ToString();
                if (readStage["Accomodations_tek"].ToString() != "" || readStage["Accomodations_tek"] != DBNull.Value)
                { TextBox12.Text = readStage["Accomodations_tek"].ToString(); }

                Label39.Text = readStage["TopCovering"].ToString();
                if (readStage["TopCovering_tek"].ToString() != "" || readStage["TopCovering_tek"] != DBNull.Value)
                { TextBox15.Text = readStage["TopCovering_tek"].ToString(); }

                Label40.Text = readStage["Finishing"].ToString();
                if (readStage["Finishing_tek"].ToString() != "" || readStage["Finishing_tek"] != DBNull.Value)
                { TextBox16.Text = readStage["Finishing_tek"].ToString(); }


                Label32.Text = readStage["ManufacturerQuality"].ToString();
                if (readStage["ManufacturerQuality_tek"].ToString() != "" || readStage["ManufacturerQuality_tek"] != DBNull.Value)
                { TextBox8.Text = readStage["ManufacturerQuality_tek"].ToString(); }

                Label33.Text = readStage["Shipped"].ToString();
                if (readStage["ShipBy_CA"].ToString() != "" || readStage["ShipBy_CA"] != DBNull.Value)
                { TextBox9.Text = readStage["ShipBy_CA"].ToString(); }
                if (readStage["ShipBy_MX"].ToString() != "" || readStage["ShipBy_MX"] != DBNull.Value)
                { TextBox17.Text = readStage["ShipBy_MX"].ToString(); }

                Label41.Text = readStage["AdditionalQuality"].ToString();
                if (readStage["AdditionalQuality_tek"].ToString() != "" || readStage["AdditionalQuality_tek"] != DBNull.Value)
                { TextBox18.Text = readStage["AdditionalQuality_tek"].ToString(); }

            }
            readStage.Close();
            con.Close();
        }
     

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            con.Open();
            string v = Request.QueryString["id"]; 
            int i = 0;
            SqlCommand cmd = new SqlCommand("Select * from [dbo].[tbl_OrderStageDate] WHERE [Orderid]= '" + v + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
                {
                if (reader["ReadytoProcess"] == DBNull.Value)
                {
                    reader.Close();
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [ReadytoProcess] = '" + DateTime.Now.ToString() + "',[ReadytoProcess_tek] = '" + TextBox2.Text + "' where [OrderID] = " + v + "";
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i=da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl); 
                }
                else if (reader["DesignStart"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [DesignStart] = '" + DateTime.Now.ToString() + "',[DesignStart_tek] = '" + TextBox13.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["CAM"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [CAM] = '" + DateTime.Now.ToString() + "',[CAM_tek] = '" + TextBox14.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Milled"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Milled] = '" + DateTime.Now.ToString() + "',[Milled_tek] = '" + TextBox3.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Molding"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Molding] = '" + DateTime.Now.ToString() + "',[Molding_tek] = '" + TextBox4.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Grinding"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Grinding] = '" + DateTime.Now.ToString() + "',[Grinding_tek] = '" + TextBox10.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Posting"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Posting] = '" + DateTime.Now.ToString() + "',[Posting_tek] = '" + TextBox11.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Accomodations"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Accomodations] = '" + DateTime.Now.ToString() + "',[Accomodations_tek] = '" + TextBox12.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["TopCovering"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [TopCovering] = '" + DateTime.Now.ToString() + "',[TopCovering_tek] = '" + TextBox15.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Finishing"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Finishing] = '" + DateTime.Now.ToString() + "',[Finishing_tek] = '" + TextBox16.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["ManufacturerQuality"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [ManufacturerQuality] = '" + DateTime.Now.ToString() + "',[ManufacturerQuality_tek] = '" + TextBox8.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                   
                }
                else if (reader["Shipped"] == DBNull.Value)
                {
                   string sql = "update [dbo].[tbl_OrderStageDate] SET [Shipped] = '" + DateTime.Now.ToString() + "',[ShipBy_MX] = '" + TextBox17.Text + "',[ShipBy_CA] = '" + TextBox9.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["AdditionalQuality"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [AdditionalQualityy] = '" + DateTime.Now.ToString() + "',[AdditionalQuality_tek] = '" + TextBox18.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);

                }
                else
                {
                    Button1.Visible = false;
                }
            }
            reader.Close();
            con.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Action submitted.');", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string v = Request.QueryString["id"];
            
            Response.Redirect("ReportPage.aspx?id=" + v);
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            string v = Request.QueryString["id"];

            Response.Redirect("DesignUploads.aspx?id=" + v);
        }
    }
}
