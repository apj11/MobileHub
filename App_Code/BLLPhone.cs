using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLPhone
/// </summary>
public class BLLPhone
{
	public BLLPhone()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddPhone(int manuid, string phonename, decimal price, string photo)
    {
        //connection
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "insert into tblPhone values(@a,@b,@c,@d)";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //parameters 
        cmd.Parameters.AddWithValue("@a", manuid);
        cmd.Parameters.AddWithValue("@b", phonename);
        cmd.Parameters.AddWithValue("@c", price);
        cmd.Parameters.AddWithValue("@d", photo);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable GetAllPhones()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetAllOneplus()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where ManuId=3";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetAllSamsung()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where ManuId=1";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable FeaturePhones(int a,int b,int c,int d,int e, int f, int g, int h, int i)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where PhoneId IN(@a,@b,@c,@d,@e,@f,@g,@h,@i)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        cmd.Parameters.AddWithValue("@d", d);
        cmd.Parameters.AddWithValue("@e", e);
        cmd.Parameters.AddWithValue("@f", f);
        cmd.Parameters.AddWithValue("@g", g);
        cmd.Parameters.AddWithValue("@h", h);
        cmd.Parameters.AddWithValue("@i", i);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable RecommendationPhones(int a, int b, int c)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where PhoneId IN(@a,@b,@c)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        cmd.Parameters.AddWithValue("@c", c);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetAllApple()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where ManuId=2";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetAllSony()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where ManuId=4";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetAllHTC()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where ManuId=5";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable SearchLike(string phone)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblPhone where PhoneName Like @a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a","%"+ phone + "%");
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable SearchCompare(string phone)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblPhone where PhoneName Like @a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", phone + "%");
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetPhoneByPhoneId(int phoneid)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone where PhoneId=@phoneid";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@phoneid", phoneid);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable Filter(int a, int b)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhone WHERE (PhonePrice BETWEEN @a AND @b)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", a);
        cmd.Parameters.AddWithValue("@b", b);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}
    

