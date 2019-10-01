using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagePhoneManufacturer : System.Web.UI.Page
{
    BLLManufacturer blm = new BLLManufacturer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int i = blm.AddManufacturer(txtManufacturerName.Text);
        if (i > 0)
        {
            lblMessage.Text = "Manufacturer Added";
        }
    }
}