using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.Ajax.Utilities;
using System.Configuration;
using System.Drawing;
using System.Security.Cryptography;


namespace projectwithgopal
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //this page will insert the data into your database.

            
            //intilizing the connection
            SqlConnection con =  new
                SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            //establishing the connection
            con.Open();

            //preparing a query

            string name = name1.Text;
            string email = email1.Text;
            string passwd = password1.Text;

            string query = "INSERT INTO details(name1, email, passwd) VALUES('" + name + "','" + email + "','" + passwd + "')";

            //executing the query
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //cloding the connection
            con.Close();

            Response.Write("Data inserted successfully");
            




        }
    }
}