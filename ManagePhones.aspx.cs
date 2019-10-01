using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagePhones : System.Web.UI.Page
{
    BLLPhone blp = new BLLPhone();
    BLLManufacturer blm = new BLLManufacturer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = blm.GetAllManufacturer();
            ddlManufacturer.DataSource = dt;
            ddlManufacturer.DataTextField = "ManuName";
            ddlManufacturer.DataValueField = "ManuID";
            ddlManufacturer.DataBind();
        }
    }
    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        int i = blp.AddPhone(Convert.ToInt32(ddlManufacturer.SelectedValue.ToString()), txtPhone.Text, Convert.ToDecimal(txtPrice.Text), PhotoUpload.FileName);
        if (i > 0)
        {
            PhotoUpload.SaveAs(Server.MapPath("~/Phoneimages" + PhotoUpload.FileName));
            lblMessage.Text = "Phone Added";
            txtPhone.Text = "";
            txtPrice.Text = "";
        }
    }
}