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
    public partial class WebForm5 : System.Web.UI.Page
    {

        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=F:\asp.net\EcommerceWebsites\EData.mdb");
        OleDbCommand cmd;
        string str;
       
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                if (DropDownList_login.SelectedValue.ToString() == "User")
                {



                    str = "select * from TblUserData where email='" + txt_username.Text + "' and pass='" + txt_password.Text + "'";
                    da = new OleDbDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        //Session["Username"] = txt_username.Text;
                        //Session["pass1" ]= txt_password.Text;
                        Response.Redirect("Order.aspx");
                    }
                    else
                    {

                    }

                }
                else if (DropDownList_login.SelectedValue.ToString() == "Admin")
                {
                    string str1 = "select * from TblAdmin where adminUsername='" + txt_username.Text + "' and adminPass='" + txt_password.Text + "'";
                    da = new OleDbDataAdapter(str1, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        //Session["Admin"] = "AARAA";
                      //  Response.Write("<script>alert('Admin')</script>");
                       Response.Redirect("../ADMIN/Home.aspx");
                    }
                    else
                    {

                    }
                }
                else
                {
                    Response.Write("<script>alert('Check Username Or Password')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {

            }

            //Response.Write("<script>alert('Ok')</script>");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    }
}