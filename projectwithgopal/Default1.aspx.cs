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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            
            //intilizing the connection
            string connectionstring = "Data Source=192.168.208.128,1433;Initial Catalog=MYDB1;User ID=sa; Password=gopal7566";

            //establishing the connection

            SqlConnection conn = new SqlConnection(connectionstring);

            //opening the connection

            conn.Open();

            //prepare a query

            string FIRSTNAME = TextBox1.Text;
            string LASTNAME = TextBox2.Text;
            //string PASSWD = TextBox3.Text;
            string query = "INSERT INTO name(FIRSTNAME, LASTNAME) VALUES('" + FIRSTNAME + "', '" + LASTNAME + "')";


            //execute query
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            

            //close connection
            conn.Close();

            //MessageBox.Show("PROFILE HAS BEEN CREATED");
            Response.Redirect("WebForm1.aspx");  */

            //intilizing the connection
            //--string connectionstring = "Data Source=sql.bsite.net\\MSSQL2016;User ID=gopalkumr_SampleDB;Password=********;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            //establishing the connection

            //--SqlConnection conn = new SqlConnection(connectionstring);
            SqlConnection con = new
             SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            //opening the connection

            con.Open();

            //prepare a query

            string firstname = TextBox1.Text;
            string lastname = TextBox2.Text;
            string passwd = TextBox3.Text;
            string reg = TextBox4.Text;
            //string PASSWD = TextBox3.Text;
            string query = "INSERT INTO details(firstname, lastname, passwd, reg) VALUES('" + firstname + "', '" + lastname + "', '" + passwd + "', '" + reg + "')";


            //execute query
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();


            //close connection
            con.Close();

            //MessageBox.Show("PROFILE HAS BEEN CREATED");
            //Response.Redirect("WebForm1.aspx");
            Response.Write("Added into Database");

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            //-string connectionstring = "Data Source=sql.bsite.net\\MSSQL2016;User ID=gopalkumr_SampleDB;Password=********;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            //establishing the connection

            //-SqlConnection conn = new SqlConnection(connectionstring);
            SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            //opening the connection

            //string regno = TextBox7.Text;

            con.Open();

            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[details] SET[firstname] = '"+TextBox1.Text+"',[lastname] = '"+TextBox2.Text+"',[passwd] = '"+TextBox3.Text+"',[reg] = '"+TextBox4.Text+"' WHERE [reg] = '"+TextBox4.Text+"'  ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Updated succsefullyl.");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //string regval = TextBox7.Text();
            //-string connectionstring = "Data Source=sql.bsite.net\\MSSQL2016;User ID=gopalkumr_SampleDB;Password=********;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            //establishing the connection

            //-SqlConnection conn = new SqlConnection(connectionstring);
            SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            //opening the connection

            //string regno = TextBox7.Text;

            con.Open();


            SqlCommand cmd = new SqlCommand(@"DELETE FROM[dbo].[details] WHERE [reg] = '" + TextBox4.Text + "'   ", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("Data has been deleted: ");


        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
             SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            try
            {
               

                //con.Open();
                string uid = TextBox5.Text;
                string pass = TextBox6.Text;
                string reg = TextBox7.Text;
               // con.Open();
                string qry = "select * from details where firstname='" + uid + "' and passwd='" + pass + "' and reg='"+ reg +"'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label8.Text = "Login Sucess......!!";
                    Response.Redirect("WebForm1.aspx");
                    con.Close() ;
                }
                else
                {
                    Label8.Text = "Invalid Credintal! ";
                    //Label8.Text = "UserId& Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}