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
    public partial class View : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.MinValue);

            base.OnInit(e);
        }

        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            da = new SqlDataAdapter("Select EMPLOYEE.ID,FULL_NAME,ROLES,SKILL1,LEVEL1,SKILL2,LEVEL2,SKILL3,LEVEL3,P1_NAME,P1_SKILL,P1_LEVEL,P2_NAME,P2_SKILL,P2_LEVEL,P3_NAME,P3_SKILL,P3_LEVEL FROM EMPLOYEE JOIN SKL5 ON EMPLOYEE.ID=SKL5.ID JOIN PROJECT ON EMPLOYEE.ID=PROJECT.ID", conn);
            ds = new DataSet();
            da.Fill(ds, "EmployeeDetails");
            GridView1.DataSource = ds.Tables["EmployeeDetails"];
            GridView1.DataBind();


        }
    }
}
/*Select EMPLOYEE.ID,FULL_NAME,ROLES,SKILL1,LEVEL1,SKILL2,LEVEL2,SKILL3,LEVEL3 From EMPLOYEE,SKILL where EMPLOYEE.ID=SKILL.ID"
*/