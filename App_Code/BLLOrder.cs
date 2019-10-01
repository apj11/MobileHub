using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLOrder
/// </summary>
public class BLLOrder
{
	public BLLOrder()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int OrderDetails(string orderid, int phoneid, string phonename, decimal price, int quantity, DateTime dateoforder)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "insert into tblOrderDetails values(@a,@b,@c,@d,@f,@e)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", orderid);
        cmd.Parameters.AddWithValue("@b", phoneid);
        cmd.Parameters.AddWithValue("@c", phonename);
        cmd.Parameters.AddWithValue("@d", price);
        cmd.Parameters.AddWithValue("@f", quantity);
        cmd.Parameters.AddWithValue("@e", dateoforder);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }

}