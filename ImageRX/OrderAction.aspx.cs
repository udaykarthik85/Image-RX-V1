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
                Label26.Text = readStage["LabReceived"].ToString();
                if (readStage["LabReceived_tek"] != DBNull.Value || readStage["LabReceived_tek"].ToString() != "")
                { TextBox2.Text = readStage["LabReceived_tek"].ToString(); }
                Label27.Text = readStage["ManufacturingStart"].ToString();
                if (readStage["ManufacturingStart_tek"].ToString() != "" || readStage["ManufacturingStart_tek"] != DBNull.Value)
                { TextBox3.Text = readStage["ManufacturingStart_tek"].ToString(); }
                Label28.Text = readStage["Station1"].ToString();
                if (readStage["Station1_tek"].ToString() != "" || readStage["Station1_tek"] != DBNull.Value)
                { TextBox4.Text = readStage["Station1_tek"].ToString(); }
                Label34.Text = readStage["Station2"].ToString();
                if (readStage["Station2_tek"].ToString() != "" || readStage["Station2_tek"] != DBNull.Value)
                { TextBox10.Text = readStage["Station2_tek"].ToString(); }
                Label35.Text = readStage["Station3"].ToString();
                if (readStage["Station3_tek"].ToString() != "" || readStage["Station3_tek"] != DBNull.Value)
                { TextBox11.Text = readStage["Station3_tek"].ToString(); }
                Label36.Text = readStage["Station4"].ToString();
                if (readStage["Station4_tek"].ToString() != "" || readStage["Station4_tek"] != DBNull.Value)
                { TextBox12.Text = readStage["Station4_tek"].ToString(); }
                Label32.Text = readStage["ManufacturerQuality"].ToString();
                if (readStage["ManufacturerQuality_tek"].ToString() != "" || readStage["ManufacturerQuality_tek"] != DBNull.Value)
                { TextBox8.Text = readStage["ManufacturerQuality_tek"].ToString(); }
                Label33.Text = readStage["ShipByManufacturer"].ToString();
                if (readStage["ShipByManufacturer_tek"].ToString() != "" || readStage["ShipByManufacturer_tek"] != DBNull.Value)
                { TextBox9.Text = readStage["ShipByManufacturer_tek"].ToString(); }
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
                if (reader["LabReceived"] == DBNull.Value)
                {
                    reader.Close();
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [LabReceived] = '" + DateTime.Now.ToString() + "',[LabReceived_tek] = '" + TextBox2.Text + "' where [OrderID] = " + v + "";
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i=da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl); 
                }
                else if (reader["ManufacturingStart"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [ManufacturingStart] = '" + DateTime.Now.ToString() + "',[ManufacturingStart_tek] = '" + TextBox3.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Station1"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Station1] = '" + DateTime.Now.ToString() + "',[Station1_tek] = '" + TextBox4.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Station2"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Station2] = '" + DateTime.Now.ToString() + "',[Station2_tek] = '" + TextBox10.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Station3"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Station3] = '" + DateTime.Now.ToString() + "',[Station3_tek] = '" + TextBox11.Text + "' where [OrderID] = " + v + "";
                    reader.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    i = da.InsertCommand.ExecuteNonQuery();
                    Response.Redirect(Request.RawUrl);
                }
                else if (reader["Station4"] == DBNull.Value)
                {
                    string sql = "update [dbo].[tbl_OrderStageDate] SET [Station4] = '" + DateTime.Now.ToString() + "',[Station4_tek] = '" + TextBox12.Text + "' where [OrderID] = " + v + "";
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
                else if (reader["ShipByManufacturer"] == DBNull.Value)
                {
                   string sql = "update [dbo].[tbl_OrderStageDate] SET [ShipByManufacturer] = '" + DateTime.Now.ToString() + "',[ShipByManufacturer_tek] = '" + TextBox9.Text + "' where [OrderID] = " + v + "";
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
       
    }
}
