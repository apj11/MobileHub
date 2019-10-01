using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Filter : System.Web.UI.Page
{
    BLLPhone blp = new BLLPhone();
    protected void Page_Load(object sender, EventArgs e)
    {
        String min = Server.UrlDecode(Request.QueryString["a"]);
        String max = Server.UrlDecode(Request.QueryString["b"]);
        int a = Convert.ToInt32(min);
        int b = Convert.ToInt32(max);
        if (!IsPostBack)
        {
            DataTable dt = blp.Filter(a,b);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
   
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList qty = (DropDownList)(e.Item.FindControl("ddlQuantity"));
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + qty.SelectedItem.ToString());

        }
    }
}