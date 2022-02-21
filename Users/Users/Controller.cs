using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Users
{
    public class Controller
    {
        public string fullname
        { set; get; }

        public string username
        { set; get; }

        public string password
        { set; get; }

        public int active
        { set; get; }
        public bool saveuser()
        {
            bool res = true;
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                string qrl = "0";
                qrl = "insert into users(fullname,username,passwd,active,createdate) values(@fullname,@username,@passwd,@active,@createdate)";
                SqlCommand cmd = new SqlCommand(qrl, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("fullname", fullname);
                cmd.Parameters.AddWithValue("username", username);
                cmd.Parameters.AddWithValue("passwd", password);
                cmd.Parameters.AddWithValue("active", active);
                cmd.Parameters.AddWithValue("createdate", Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd")));
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch(SqlException ex)
            {
                res = false;
            }
            return res;
        }
    }
}