using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASSIGNMENTon_Connected
{
    public partial class AssignConn : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-GOLS30HV;Initial Catalog=DotNetData;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btninsertStored_Click(object sender, EventArgs e)
        {

            conn.Open();
            cmd = new SqlCommand("InsertStore", conn);
            cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@StudName", SqlDbType.VarChar).Value = txtStudName.Text;
            cmd.Parameters.Add("@StudMarks", SqlDbType.Int).Value = Convert.ToInt32(txtStudMArks.Text);

            // cmd.Parameters.AddWithValue("StudName", txtStudName.Text);
            //cmd.Parameters.AddWithValue("StudMarks", txtStudMArks.Text);
           
           int k=cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label1.Text = "Record Inserted Succesfully into the Database";
           // lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            conn.Close();

        }

        protected void btnStoredProc_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("spUpdateStudent", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Studid", SqlDbType.Int).Value = Convert.ToInt32(txtStudid.Text);
            cmd.Parameters.Add("@StudName", SqlDbType.VarChar).Value = txtStudName.Text;
            cmd.Parameters.Add("@StudMarks", SqlDbType.Int).Value = Convert.ToInt32(txtStudMArks.Text);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label1.Text = "Record Updated Succesfully into the Database";
                // lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            conn.Close();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Delete from StudentDetails where Studid=@Studid", conn);
            cmd.Parameters.AddWithValue("@Studid", txtStudid.Text);
            int x = cmd.ExecuteNonQuery();
            if (x != 0)
            {
                Label1.Text = "Record delete Succesfully into the Database";
                // lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
