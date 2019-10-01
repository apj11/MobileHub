using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagePhoneDetails : System.Web.UI.Page
{
    BLLDetails bld = new BLLDetails();
    BLLPhone blp = new BLLPhone();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = blp.GetAllPhones();
            ddlDetails.DataSource = dt;
            ddlDetails.DataTextField = "PhoneName";
            ddlDetails.DataValueField = "PhoneId";
            ddlDetails.DataBind();
        }
    }
    protected void btnAddDetails_Click(object sender, EventArgs e)
    {
        int i = bld.AddDetails(Convert.ToInt32(ddlDetails.SelectedValue.ToString()), txtDimension.Text, txtMaterials.Text, txtColor.Text, txtBiometrics.Text, txtOS.Text, txtPhysicalSize.Text, txtResolution.Text, txtPixelDensity.Text, txtTechnology.Text, txtCamera.Text, txtFlash.Text, txtAperatureSize.Text, txtPixelSize.Text, txtHardwareFeatures.Text, txtCamcorder.Text, txtFeatures1.Text, txtFrontFacingCamera.Text, txtFeatures2.Text, txtSystemChip.Text, txtProcessor.Text, txtGraphicsProcessor.Text, txtSystemMemory.Text, txtBuiltInStorage.Text, txtStorageExpansion.Text, txtCapacity.Text, txtTalkTime.Text, txtStandbyTime.Text);
        if (i > 0)
        {
            lblMessage.Text = "Details Added";

        }
    }
}