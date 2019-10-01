using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("phonename");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("totalprice");
            //dt.Columns.Add("productimage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-49K071F\\SQLSERVER;Initial Catalog=MobileHubDB;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from tblPhone where PhoneId=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    //dr["phoneid"] = ds.Tables[0].Rows[0]["PhoneId"].ToString();
                    dr["phonename"] = ds.Tables[0].Rows[0]["PhoneName"].ToString();
                    //dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["PhonePrice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PhonePrice"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-49K071F\\SQLSERVER;Initial Catalog=MobileHubDB;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from tblPhone where PhoneId=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    //dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["phonename"] = ds.Tables[0].Rows[0]["PhoneName"].ToString();
                    //dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["PhonePrice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PhonePrice"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();

                }


            }
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        HiddenDate.Value = DateTime.Now.ToShortDateString();
        findorderid();
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        HiddenOrderId.Value = orderid;


    }

    public void saveaddress()
    {
        int userid = Convert.ToInt32(Session["UserId"]);
        String firstname = Session["firstname"].ToString();
        String lastname = Session["lastname"].ToString();
        String email = Session["email"].ToString();
        String state = ddlState.SelectedItem.ToString();
        String city = ddlCity.SelectedItem.ToString() ;
        String updatepass = "insert into tblOrderAddress(orderid,firstname,lastname,address,mobilenumber,email,state,city,userid) values('" + Convert.ToString(HiddenOrderId.Value) + "','" + firstname + "','" + lastname + "','" + txtAddress.Text + "','" + txtMobileNumber.Text + "','" + email + "','" + state + "','" + city + "',"+ userid +")";
        String mycon1 = "Data Source=DESKTOP-49K071F\\SQLSERVER;Initial Catalog=MobileHubDB;Integrated Security=True";
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        s.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String updatepass = "insert into tblOrderDetail(orderid,phonename,price,quantity,dateoforder) values('" + Convert.ToString(HiddenOrderId.Value) + "','" + dt.Rows[i]["phonename"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Convert.ToString(HiddenDate.Value) + "')";
            String mycon1 = "Data Source=DESKTOP-49K071F\\SQLSERVER;Initial Catalog=MobileHubDB;Integrated Security=True";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }
        saveaddress();
        Session.Remove("buyitems");
        Response.Redirect("SuccessOrder.aspx");
    }
}