using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            Random rnd = new Random();
            int a= rnd.Next(1, 50);
            int b = rnd.Next(1, 50);
            int c = rnd.Next(1, 50);
            txta.Text = a.ToString();
            txtb.Text = b.ToString();
            txtc.Text = c.ToString();

            
            
       


    }
}