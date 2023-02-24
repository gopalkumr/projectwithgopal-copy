using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectwithgopal
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new
                //This Button will take input and verify your crediental and let's your enter the page.
           SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            string query = "SELECT * FROM details WHERE email='" + email.Text + "' AND passwd='" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = Button1.Text;
                Response.Write("Login Successful");
                Response.Redirect("details.aspx");
             
                
            }
            else
            {
                Response.Write("Invalid username or password");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("details.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}