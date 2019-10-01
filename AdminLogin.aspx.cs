using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    BLLAdmin bla = new BLLAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void b1_Click(object sender, EventArgs e)
    {
        String name = lblAdminname.Text;
        String pass = tblPassword.Text;
        DataTable dt= bla.Check(name, pass);
       
        if (dt.Rows.Count >0)
        {
            Response.Redirect("ManagePhoneManufacturer.aspx");

        }
        else
        {
            Response.Write("<script>alert('incorrect username or password')</script>");
         
        }
        
    }
}