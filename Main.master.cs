using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        btnLogout.Attributes.CssStyle.Add("display", "none");
        licon.Attributes.CssStyle.Add("display", "none");
        if (Session["userid"] != null)
        {
            btnLogout.Attributes.CssStyle.Add("display", "block");
            licon.Attributes.CssStyle.Add("display", "block");
            hpLogin.Attributes.CssStyle.Add("display", "none");
            //hpLogin.Visible = false;
            //btnLogout.Visible = true;
            lblUsername.Visible = true;

        }
        if (Session["username"] != null)
        {
            lblUsername.Text = Session["username"].ToString();
        }
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            lblCart.Text = dt.Rows.Count.ToString();
        }
        else
        {
            lblCart.Text = "0";

        }
    }


    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        btnLogout.Attributes.CssStyle.Add("display", "none");
        licon.Attributes.CssStyle.Add("display", "none");
        hpLogin.Attributes.CssStyle.Add("display","block");
        //hpLogin.Visible = true;
        //btnLogout.Visible = false;
        lblUsername.Visible = false;
        lblCart.Text = "0";
        Response.Redirect("Home.aspx");
    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?Name=" +txtSearch.Text);
    }
}
