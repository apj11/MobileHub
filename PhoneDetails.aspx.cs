using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhoneDetails : System.Web.UI.Page
{
    BLLPhone blp = new BLLPhone();
    BLLDetails bld = new BLLDetails();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                DataTable d =blp.GetPhoneByPhoneId(Convert.ToInt32(Request.QueryString["id"].ToString()));
                lblPhone.Text = d.Rows[0]["PhoneName"].ToString();
                Image1.ImageUrl = "PhoneImages/" + d.Rows[0]["Photo"].ToString();
                DataTable dt = bld.GetDetailsByPhoneId(Convert.ToInt32(Request.QueryString["id"].ToString()));
                lblDimension.Text = dt.Rows[0]["DesignDimensions"].ToString();
                lblMaterials.Text = dt.Rows[0]["DesignMaterials"].ToString();
                lblColors.Text = dt.Rows[0]["DesignColors"].ToString();
                lblBiometrics.Text = dt.Rows[0]["DesignBiometrics"].ToString();
                lblOS.Text = dt.Rows[0]["DesignOS"].ToString();
                lblPhysicalSize.Text = dt.Rows[0]["DisplayPhysicalSize"].ToString();
                lblResolution.Text = dt.Rows[0]["DisplayResolution"].ToString();
                lblPixelDensity.Text = dt.Rows[0]["DisplayPixelDensity"].ToString();
                lblTechnology.Text = dt.Rows[0]["DisplayTechnology"].ToString();
                lblCamera.Text = dt.Rows[0]["Camera"].ToString();
                lblFlash.Text = dt.Rows[0]["CameraFlash"].ToString();
                lblAperatureSize.Text = dt.Rows[0]["CameraAperatureSize"].ToString();
                lblPixelSize.Text = dt.Rows[0]["CameraPixelSize"].ToString();
                lblHardwareFeatures.Text = dt.Rows[0]["CameraHardwareFeatures"].ToString();
                lblCamrecorder.Text = dt.Rows[0]["CameraCamcorder"].ToString();
                lblFeatures1.Text = dt.Rows[0]["CameraFeatures1"].ToString();
                lblFrontFacingCamera.Text = dt.Rows[0]["CameraFrontFacingCamera"].ToString();
                lblFeatures2.Text = dt.Rows[0]["CameraFeatures2"].ToString();
                lblSystemChip.Text = dt.Rows[0]["HardwareSystemChip"].ToString();
                lblProcessor.Text = dt.Rows[0]["HardwareProcessor"].ToString();
                lblGraphicsProcessor.Text = dt.Rows[0]["HardwareGraphicsProcessor"].ToString();
                lblSystemMemory.Text = dt.Rows[0]["HardwareSystemMemory"].ToString();
                lblBuiltInStorage.Text = dt.Rows[0]["HardwareBuiltInMemory"].ToString();
                lblStorageExpansion.Text = dt.Rows[0]["HardwareStorageExpansion"].ToString();
                lblCapacity.Text = dt.Rows[0]["BatteryCapacity"].ToString();
                lblTalkTime.Text = dt.Rows[0]["BatteryTalkTime"].ToString();
                lblStandbyTime.Text = dt.Rows[0]["BatteryStandbyTime"].ToString();


            }
        }
    }
    protected void btnCompare_Click(object sender, EventArgs e)
    {
        Response.Redirect("Compare.aspx?id=" + Convert.ToString(Request.QueryString["id"]));
    }
}