using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    BLLUser blu = new BLLUser();
    Utilities ens=new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        String password = ens.Encrypt(txtPassword.Text);
        DataTable dt = blu.CheckUserLogin(txtUsername.Text, password);
       
       if (dt.Rows.Count > 0)
       {
           
           int userid = Convert.ToInt32(dt.Rows[0]["UserId"].ToString());
           String username = dt.Rows[0]["Username"].ToString();
           String firstname = dt.Rows[0]["FirstName"].ToString();
           String lastname = dt.Rows[0]["LastName"].ToString();
           String email = dt.Rows[0]["Email"].ToString();
           Session["userid"] = userid;
           Session["username"] = username;
           Session["firstname"] = firstname;
           Session["lastname"] = lastname;
           Session["email"] = email;
           Response.Redirect("Home.aspx");
       }


       else
       {
           Response.Write("<script>alert('Incorrect UserName and Password')</script>");
           txtUsername.Text = "";
           txtPassword.Text = "";
       }
       
    }
   


    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        DataTable dt = blu.GetUserbyEmailAddress(txtemail.Text);
        if (dt.Rows.Count > 0)
        {
            lblMessage.Text = "Email Already Used";
            Response.Write("<script>alert('Email Already Used')</script>");
            txtemail.Text = "";
            txtPass.Text = "";
            txtconfirmPass.Text = "";

        }
        else
        {
            DataTable dt1 = blu.GetUserByUsername(txtuser.Text);
            if (dt1.Rows.Count > 0)
            {

                lblMessage.Text = "Username already Used";
                Response.Write("<script>alert('UserName already Exists')</script>");
                txtuser.Text = "";
                txtPass.Text = "";
                txtconfirmPass.Text = "";
            }
            else
            {
                if (txtPass.Text == txtconfirmPass.Text)
                {
                    String password = ens.Encrypt(txtPass.Text);


                    int i = blu.CreateUser(txtFirstName.Text, txtLastName.Text, txtuser.Text, txtemail.Text, txtAddrress.Text,password);
                    if (i > 0)
                    {
                        Response.Write("<script>alert('User registered')</script>");
                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtAddrress.Text = "";
                        txtemail.Text = "";
                        txtPass.Text = "";
                        txtconfirmPass.Text = "";
                        txtuser.Text = "";
                         //Response.Redirect("Login.aspx");
                    }                    
                }
                else
                {
                    lblMessage.Text = "Password doesn't match. Re-enter Password";
                    Response.Write("<script>alert('Password doesn't match. Re-enter Password')</script>");
                    txtPassword.Text = "";
                    txtconfirmPass.Text = "";

                }

            }
        }

    }
}