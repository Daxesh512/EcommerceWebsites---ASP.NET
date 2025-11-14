using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


namespace EcommerceWebsites.USER
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=F:\asp.net\EcommerceWebsites\EData.mdb");
        OleDbCommand cmd;
        string str;
        int id1 = 0;
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            str = "select max(userId) as userId from TblUserData";
            da = new OleDbDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
            id1 = int.Parse(ds.Tables[0].Rows[0]["userId"].ToString());
            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }
            lbluserId.Text = id1.ToString();


        }

        protected void btn_submit_user_Click(object sender, EventArgs e)
        {
            try
            {


                str = "insert into TblUserData values(" +lbluserId.Text + ",'" + txtFirstname.Text + "','" + txtLastname + "','" + txtEmail.Text + "'," + txtMobile.Text + ",'" + txtPass.Text + "')";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();
          

                Response.Write("<script>alert('Registration Successfull')</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        
        }

        protected void LinkButton_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

       
    }
}
