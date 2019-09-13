using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ImageRX
{
    public partial class ShellModifications : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FileUploads_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=orthodbserver.database.windows.net;Initial Catalog=ImageOrthoDB;Integrated Security=False;User ID=serveradmin;password=User$179317$;");
            SqlCommand cmd;
            SqlCommand cmd2;
            SqlCommand cmd3;
            int i = 0;
            int j = 0;
            int k = 0;
            int pid = (int)(Session["IDValue"]);
            string sql = "INSERT INTO [dbo].[tbl_ShellMods] VALUES("+pid+",'" + Checkbox1.Checked + "','" + Checkbox2.Checked + "','" + Checkbox3.Checked + "','" + Checkbox4.Checked + "','" + Checkbox5.Checked + "','" + Checkbox6.Checked + "','" + Checkbox7.Checked + "','" + Checkbox8.Checked + "','" + Checkbox9.Checked + "','" + Checkbox10.Checked + "','" + Checkbox11.Checked + "','" + Checkbox12.Checked + "','" + Checkbox13.Checked + "','" + Checkbox14.Checked + "','" + Checkbox15.Checked + "','" + Checkbox16.Checked + "','" + Checkbox17.Checked + "','" + Checkbox41.Checked + "','" + Checkbox19.Checked + "','" + Checkbox20.Checked + "')";
            string sql2 = "INSERT INTO [dbo].[tbl_SoftMod] VALUES("+pid+",'" + Checkbox21.Checked + "','" + Checkbox22.Checked + "','" + Checkbox23.Checked + "','" + Checkbox24.Checked + "','" + Checkbox25.Checked + "','" + Checkbox26.Checked + "','" + Checkbox27.Checked + "','" + Checkbox28.Checked + "','" + Checkbox29.Checked + "','" + Checkbox30.Checked + "','" + Checkbox31.Checked + "','" + Checkbox32.Checked + "','" + Checkbox33.Checked + "','" + Checkbox34.Checked + "','" + Checkbox35.Checked + "','" + Checkbox36.Checked + "','" + Checkbox37.Checked + "','" + Checkbox42.Checked + "','" + Checkbox38.Checked + "','" + Checkbox39.Checked + "','" + Checkbox43.Checked + "','" + Checkbox44.Checked + "','" + RadioButtonList1.SelectedValue + "','" + Checkbox45.Checked + "','" + Checkbox46.Checked + "','" + RadioButtonList2.SelectedValue + "','" + Checkbox47.Checked + "','" + Checkbox48.Checked + "','"+TextBox2.Text+ "','"+TextBox3.Text+ "','"+TextBox1.Text+ "','"+CheckBox49.Checked+"')";
            string sql3 = "INSERT INTO [dbo].[tbl_SoftMod_SubCut] VALUES(" + pid + ",'" + CheckBox50.Checked + "','" + CheckBox51.Checked + "','" + CheckBox52.Checked + "','" + CheckBox53.Checked + "','" + CheckBox54.Checked + "','" + CheckBox55.Checked + "','" + CheckBox56.Checked + "','" + CheckBox57.Checked + "','" + CheckBox58.Checked + "','" + CheckBox59.Checked + "')";
            con.Open();
            cmd = new SqlCommand(sql, con);
            cmd2 = new SqlCommand(sql2, con);
            cmd3 = new SqlCommand(sql3, con);
            SqlDataAdapter da = new SqlDataAdapter();
            SqlDataAdapter da2 = new SqlDataAdapter();
            SqlDataAdapter da3 = new SqlDataAdapter();
            da.InsertCommand = new SqlCommand(sql, con);
            da2.InsertCommand = new SqlCommand(sql2, con);
            da3.InsertCommand = new SqlCommand(sql3, con);
            i = da.InsertCommand.ExecuteNonQuery();
            j = da2.InsertCommand.ExecuteNonQuery();
            k = da3.InsertCommand.ExecuteNonQuery();

            Response.Redirect("FileUploads.aspx");
        }

    }
}