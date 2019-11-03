using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd ;
            SqlCommand Outcmd;
            int i = 0;
            int j = 0;
            
            string sql = "insert into tbl_Patient values('" + Text1.Value + "','" + Text2.Value + "','" + Text3.Value + "','" + Text4.Value + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','"+DropDownList1.SelectedValue+"','" + RadioButtonList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+Calendar1.SelectedDate+"','"+DropDownList2.SelectedValue+"','','','','','"+DateTime.Now.ToString()+"')";
            string sql2 = "select max(Order_ID) as PID from tbl_Patient";
           
            con.Open();
            cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter();
            SqlDataAdapter da1 = new SqlDataAdapter();
            SqlDataAdapter da2 = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            Outcmd = new SqlCommand(sql2, con);
            i = da.InsertCommand.ExecuteNonQuery();
            int PID =  (Int32)Outcmd.ExecuteScalar();

            Session["IDValue"] = PID;
            string sql3 = "insert into tbl_Order Values(" + PID + ",'In Progress','"+DateTime.Now.ToString()+ "','"+DateTime.Now.ToString()+"')";
            sql3 = sql3 + "INSERT INTO [tbl_OrderStageDate] VALUES(" + PID + ",'" + DateTime.Now.ToString() + "','System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";
            da1.InsertCommand = new SqlCommand(sql3, con);
//            string sql4 = "INSERT INTO [dbo].[tbl_OrderStageDate] VALUES("+PID+ ",'" + DateTime.Now.ToString() + "','System','','','','','','','','','','','','','','','','')";
  //          da2.InsertCommand = new SqlCommand(sql4, con);
            j = da1.InsertCommand.ExecuteNonQuery();
    //        k = da2.InsertCommand.ExecuteNonQuery();
            if (i > 0 && Text1.Value != "" )
            {
                Response.Redirect("OrthoticMM.aspx");
            }
            else
            {
                Response.Write("Please Enter the following informaiton");
            }

        }
    }
}