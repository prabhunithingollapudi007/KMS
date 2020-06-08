using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace KM
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (Session["user"] != null)
            {
                Response.Redirect("Welcome.aspx");
            }

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where uname = @username and passwd = @passsword", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@passsword", TextBox2.Text);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Label1.Visible = false;
                Session["user"] = TextBox1.Text;
                Response.Redirect("Welcome.aspx");
            }
            else
            {

                Label1.Visible = true;
            }
            con.Close();
        }
    }
}