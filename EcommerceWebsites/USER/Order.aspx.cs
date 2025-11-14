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
    public partial class WebForm7 : System.Web.UI.Page
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
            Panel2.Visible = false;
            Panel3.Visible = false;

            con.Open();
            str = "select max(OrderId) as OrderId from TblOrder";
            da = new OleDbDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
            id1 = int.Parse(ds.Tables[0].Rows[0]["OrderId"].ToString());
            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }
            lbl_OrderId.Text = id1.ToString();
        }


        protected void btn_submit_user_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;

            try
            {


                str = "insert into TblOrder values(" + lbl_OrderId.Text + ",'" + txt_user_name.Text + "'," + txt_user_mobile.Text + ",'" + txt_user_email.Text + "','" +DropDownListSelectProduct.SelectedValue.ToString()+ "','" + txtOrderDate.Text + "',"+txtPostalCode.Text+",'"+txtAddress.Text+"',"+txtQuantity.Text+","+txtTotal.Text+")";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Order Confirm')</script>");
                con.Close();

              

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Order Confirm')</script>");
                Response.Write(ex.ToString());
            }
         
            //Response.Write("<script>alert('Ok')</script>");
        }

        protected void Button1_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home1.aspx");
        }

        protected void btnConfrim_Click(object sender, EventArgs e)
        {
            int a = 3300;
            int q1 = int.Parse(txtQuantity.Text);
            int total;

            total = q1 * a;
            txtTotal.Text = total.ToString();
        }
        protected void btnMyOrder_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        protected void btnCancelOrder_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        protected void SearchByTagButton_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;


           // con.Open();
            OleDbCommand cmd = new OleDbCommand("Select * FROM TblOrder WHERE orderId=@SearchByTagTB", con);

            try
            {

                OleDbParameter search = new OleDbParameter();
                search.ParameterName = "@SearchByTagTB";
                search.Value = SearchByTagTB.Text.Trim();

                cmd.Parameters.Add(search);
                OleDbDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                gvPatients.DataSource = dt;
                gvPatients.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
         

        }

        protected void btnOrder1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        protected void btnCancelOrder1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        protected void btnRemoveOrder_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;

            try
            {
               // con.Open();
                string str1 = "select * from TblOrder where orderId=" + int.Parse(TextBox1.Text) + "";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Order Cancel')</script>");
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Order Cancel')</script>");

                Response.Write(ex.ToString());
            }


        }
        protected void btnOrder2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void btnMyOrder2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }


    }
}