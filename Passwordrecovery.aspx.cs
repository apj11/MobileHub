using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Passwordrecovery : System.Web.UI.Page
{
    BLLUser blu = new BLLUser();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRecoverpassword_Click(object sender, EventArgs e)
    {
        DataTable dt = blu.getLoginInfo(txtUsername.Text);
        if (dt.Rows.Count > 0)
        {
            int userid = Convert.ToInt32(dt.Rows[0]["UserId"]);
            DataTable dt1 = blu.GetUserByUserId(userid);
            String email = Convert.ToString(dt1.Rows[0]["Email"]);
            if (email == txtEmail.Text)
            {
                using (MailMessage mm = new MailMessage("mobilehub.smartphones@gmail.com", email))
                {
                    mm.Subject = "Password Recovery(Mobile Hub)";
                    string body = "Hello " + (dt1.Rows[0]["FirstName"].ToString()).Trim() + ",";
                    body += "<br /><br />Please click the following link to change your account password";
                    body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Passwordrecovery.aspx", "ResetPassword.aspx?Username=" + txtUsername.Text) + "'>Click here to change your account password.</a>";
                    body += "<br /><br />Thanks";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("mobilehub.smartphones@gmail.com", "mobilehub123");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('An Email has been sent.');window.location ='Login.aspx';", true);
                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect Email.')</script>");
                lbltxt.Text = "Incorrect Email.";
                txtUsername.Text = "";
                txtEmail.Text = "";
            }

        }
        else
        {
            Response.Write("<script>alert('Incorrect UserName')</script>");
            lbltxt.Text = "Incorrect UserName";
            txtUsername.Text = "";
            txtEmail.Text = "";
        }
    }
    }
