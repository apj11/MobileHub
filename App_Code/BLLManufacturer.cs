using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLManufacturer
/// </summary>
public class BLLManufacturer
{
	public BLLManufacturer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddManufacturer(string name)
    {
        //connection
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "insert into tblManufacturer values(@a)";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //parameters 
        cmd.Parameters.AddWithValue("@a", name);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable GetAllManufacturer()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblManufacturer";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}