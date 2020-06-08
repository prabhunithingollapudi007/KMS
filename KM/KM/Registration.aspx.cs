using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KM
{
    public partial class Registration : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.MinValue);

            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            eid.Focus();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool status = false;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            try
            {
                SqlCommand cmd4 = new SqlCommand("CheckUserAvailability", conn);

                cmd4.CommandType = CommandType.StoredProcedure;
                cmd4.Parameters.AddWithValue("@ID", eid.Text);
                conn.Open();
                status = Convert.ToBoolean(cmd4.ExecuteScalar());

                if (status == false)
                {
                    string script2 = "alert('Employee ID already exists!');";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script2, true);
                }
                else
                {





                    string command = "INSERT INTO EMPLOYEE(ID,FULL_NAME,ROLES) VALUES(@ID,@FULL_NAME,@ROLES)";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    cmd.Parameters.AddWithValue("@ID", eid.Text);
                    cmd.Parameters.AddWithValue("@FULL_NAME", ename.Text);
                    cmd.Parameters.AddWithValue("@ROLES", erole.Text);

                    cmd.ExecuteNonQuery();

                    string command2 = "INSERT INTO SKL5(ID,SKILL1,LEVEL1,SKILL2,LEVEL2,SKILL3,LEVEL3) VALUES(@ID,@SKILL1,@LEVEL1,@SKILL2,@LEVEL2,@SKILL3,@LEVEL3)";
                    SqlCommand cmd2 = new SqlCommand(command2, conn);
                    cmd2.Parameters.AddWithValue("@ID", eid.Text);

                    cmd2.Parameters.AddWithValue("@SKILL1", skill1.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@LEVEL1", level1.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@SKILL2", skill2.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@LEVEL2", level2.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@SKILL3", skill3.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@LEVEL3", level3.SelectedItem.Value);

                    cmd2.ExecuteNonQuery();

                    if (pname2.Text == "")
                    {
                        pname2.Text = "NA";
                    }
                    if (pname3.Text == "")
                    {
                        pname3.Text = "NA";

                    }
                    string command3 = "INSERT INTO PROJECT(ID,P1_NAME,P1_SKILL,P1_LEVEL,P2_NAME,P2_SKILL,P2_LEVEL,P3_NAME,P3_SKILL,P3_LEVEL) VALUES(@ID,@P1_NAME,@P1_SKILL,@P1_LEVEL,@P2_NAME,@P2_SKILL,@P2_LEVEL,@P3_NAME,@P3_SKILL,@P3_LEVEL)";
                    SqlCommand cmd3 = new SqlCommand(command3, conn);
                    cmd3.Parameters.AddWithValue("@ID", eid.Text);
                    cmd3.Parameters.AddWithValue("@P1_NAME", pname1.Text);
                    cmd3.Parameters.AddWithValue("@P1_SKILL", ps1.SelectedItem.Value);
                    cmd3.Parameters.AddWithValue("@P1_LEVEL", pl1.SelectedItem.Value);
                    cmd3.Parameters.AddWithValue("@P2_NAME", pname2.Text);

                    cmd3.Parameters.AddWithValue("@P2_SKILL", ps2.SelectedItem.Value);
                    cmd3.Parameters.AddWithValue("@P2_LEVEL", pl2.SelectedItem.Value);
                    cmd3.Parameters.AddWithValue("@P3_NAME", pname3.Text);
                    cmd3.Parameters.AddWithValue("@P3_SKILL", ps3.SelectedItem.Value);
                    cmd3.Parameters.AddWithValue("@P3_LEVEL", pl3.SelectedItem.Value);
                    cmd3.ExecuteNonQuery();

                    string script = "alert('Details submitted successfully!');";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);





                }

            }
            catch (Exception)
            {
                

            }
            finally
            {
                conn.Close();
            }

        }
        protected void Download(object sender, EventArgs e)
        {
            Response.ContentType = "Application/xls";
            Response.AppendHeader("Content-Disposition", "attachment; filename=EmployeeDetailsTemplate.xls");
            Response.TransmitFile(Server.MapPath("Download/EmployeeDetailsTemplate.xls"));
            Response.End();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "ExcelUpload.aspx";
            Response.Redirect(url);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
/*INSERT INTO EMPLOYEE(ID,FULL_NAME,ROLES,SKILL1,LEVEL1,SKILL2,LEVEL2,SKILL3,LEVEL3) VALUES(@ID,@FULL_NAME,@ROLES,@SKILL1,@LEVEL1,@SKILL2,@LEVEL2,@SKILL3,@LEVEL3)";

    */