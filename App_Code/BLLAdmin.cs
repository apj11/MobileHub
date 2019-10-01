using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLAdmin
/// </summary>
public class BLLAdmin
{
	public BLLAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable Check(String a, String b)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblAdmin where AdminName=@a AND Password=@b";
        
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
        
    }
}