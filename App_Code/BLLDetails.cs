using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLDetails
/// </summary>
public class BLLDetails
{
	public BLLDetails()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddDetails(int phoneid, string dimension,string materials, string colors, string biometrics, string os, string physicalsize, string resolution, string pixeldensity, string technology, string camera, string flash, string aperaturesize, string pixelsize, string hardwarefeatures, string camcorder, string features1, string frongfacingcamera, string features2, string systemchip, string processor, string graphicsprocessor, string systemmemory, string builtinstorage, string storageexpansion, string capacity, string taiktime, string standbytime)
    {
        //connection
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "insert into tblPhoneDetails values(@b,@c,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n,@o,@p,@q,@r,@s,@t,@u,@v,@w,@x,@y,@z,@aa,@bb,@cc,@dd) SET IDENTITY_INSERT tblPhoneDetails OFF";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //parameters 
        cmd.Parameters.AddWithValue("@b", phoneid);
        cmd.Parameters.AddWithValue("@c", dimension);
        
        cmd.Parameters.AddWithValue("@e", materials);
        cmd.Parameters.AddWithValue("@f", colors);
        cmd.Parameters.AddWithValue("@g", biometrics);
        cmd.Parameters.AddWithValue("@h", os);
        cmd.Parameters.AddWithValue("@i", physicalsize);
        cmd.Parameters.AddWithValue("@j", resolution);
        cmd.Parameters.AddWithValue("@k", pixeldensity);
        cmd.Parameters.AddWithValue("@l", technology);
        cmd.Parameters.AddWithValue("@m", camera);
        cmd.Parameters.AddWithValue("@n", flash);
        cmd.Parameters.AddWithValue("@o", aperaturesize);
        cmd.Parameters.AddWithValue("@p", pixelsize);
        cmd.Parameters.AddWithValue("@q", hardwarefeatures);
        cmd.Parameters.AddWithValue("@r", camcorder);
        cmd.Parameters.AddWithValue("@s", features1);
        cmd.Parameters.AddWithValue("@t", frongfacingcamera);
        cmd.Parameters.AddWithValue("@u", features2);
        cmd.Parameters.AddWithValue("@v", systemchip);
        cmd.Parameters.AddWithValue("@w", processor);
        cmd.Parameters.AddWithValue("@x", graphicsprocessor);
        cmd.Parameters.AddWithValue("@y", systemmemory);
        cmd.Parameters.AddWithValue("@z", builtinstorage);
        cmd.Parameters.AddWithValue("@aa", storageexpansion);
        cmd.Parameters.AddWithValue("@bb", capacity);
        cmd.Parameters.AddWithValue("@cc", taiktime);
        cmd.Parameters.AddWithValue("@dd", standbytime);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable GetAllDetails()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhoneDetails";
        //execute sql queries
        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd<---da--->dt
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //rows columns collection
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable GetDetailsByPhoneId(int phoneid)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-49K071F\\SQLSERVER; Integrated Security=True; Database=MobileHubDB");
        string sql = "select * from tblPhoneDetails where PhoneId=@phoneid";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@phoneid", phoneid);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}