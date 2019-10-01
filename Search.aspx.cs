using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    BLLPhone blp = new BLLPhone();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Name"] != null)
            HiddenField1.Value = Request.QueryString["Name"];
        if (!IsPostBack)
        {
            DataTable dt = blp.SearchLike(HiddenField1.Value.ToString());
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList qty = (DropDownList)(e.Item.FindControl("ddlQuantity"));
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + qty.SelectedItem.ToString());

        }
    }
}