using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    BLLPhone blp = new BLLPhone();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            Random rnd = new Random();
            int a = rnd.Next(1, 48);
            int b = rnd.Next(1, 48);
            int c = rnd.Next(1, 48);
            int d = rnd.Next(1, 48);
            int ee = rnd.Next(1, 48);
            int f = rnd.Next(1, 48);
            int g = rnd.Next(1, 48);
            int h = rnd.Next(1, 48);
            int i = rnd.Next(1, 48);
            DataTable dt = blp.FeaturePhones(a, b, c, d, ee, f, g, h, i);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            int aa = rnd.Next(1, 48);
            int bb = rnd.Next(1, 48);
            int cc = rnd.Next(1, 48);
            DataTable dtt = blp.RecommendationPhones(aa,bb,cc);
            DataList2.DataSource = dtt;
            DataList2.DataBind();


        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList qty = (DropDownList)(e.Item.FindControl("ddlQuantity"));
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + qty.SelectedItem.ToString());

        }
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList qty = (DropDownList)(e.Item.FindControl("ddlQuantity"));
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + qty.SelectedItem.ToString());

        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PhoneDetails.aspx?id=" + 17);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PhoneDetails.aspx?id=" + 29);
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PhoneDetails.aspx?id=" + 1);
    }


    protected void btnFilter_Click(object sender, EventArgs e)
    {
        String a, b;
        a = h1.Value;
        b = h2.Value;
        Response.Redirect(String.Format("Filter.aspx?a={0}&b={1}", Server.UrlEncode(a), Server.UrlEncode(b)));
    }
}