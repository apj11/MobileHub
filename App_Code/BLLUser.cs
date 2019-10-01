using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for BLLUser
/// </summary>
public class BLLUser
{
	public BLLUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int CreateUser(string firstname,string lastname,string username,string email,string Address, string password)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "insert into tblUser values(@a,@b,@c,@d,@f,@e)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", firstname);
        cmd.Parameters.AddWithValue("@b", lastname);
        cmd.Parameters.AddWithValue("@c", username);
        cmd.Parameters.AddWithValue("@d", email);
        cmd.Parameters.AddWithValue("@f", Address);
        cmd.Parameters.AddWithValue("@e", password);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable CheckUserLogin(string username, string password)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where Username=@a and Password=@b";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", username);
        cmd.Parameters.AddWithValue("@b", password);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetPasswordbyEmailAddress(string email)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where Email=@a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", email);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetUserByUserId(int UserID)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where UserId=@a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", UserID);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable getLoginInfo(string username)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where Username=@a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", username);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public int changepassword(string Username,string password)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "update tblUser set Password=@a where Username=@b";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a",password);
        cmd.Parameters.AddWithValue("@b", Username);
   
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public DataTable GetUserByUsername(string username)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where Username=@a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", username);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable GetUserbyEmailAddress(string email)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select *from tblUser where Email=@a";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@a", email);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

}