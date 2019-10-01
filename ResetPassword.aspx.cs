using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResetPassword : System.Web.UI.Page
{
    BLLUser blu = new BLLUser();
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            string Username = !string.IsNullOrEmpty(Request.QueryString["Username"]) ? Request.QueryString["Username"] : ToString();
            txtUsername.Text = Username;

        }
    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
         if(txtNewPassword.Text==txtconfirmPassword.Text)
        {
            String newpassword = utl.Encrypt(txtNewPassword.Text);
            int i = blu.changepassword(txtUsername.Text,newpassword);
            if (i>0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Successfully Changed');window.location ='Home.aspx';", true);
            }

        }
        else
        {
            Response.Write("<script>alert('Password doesn't match')</script>");
        }
    }
    }
