using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KM
{
    public partial class ExcelUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateData();
            lblMessage.Text = "Please download the template, fill and upload the same.";
        }

        private void PopulateData()
        {
            //using (Database1Entities dc = new Database1Entities())
            //{
            //    gvData.DataSource = dc.EMPLOYEEs.ToList();
            //    gvData.DataBind();
            //}

            // SqlDataAdapter da = null;
            // DataSet ds = null;
            // var connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            // SqlConnection conn = new SqlConnection(connectionString);
            // using (SqlConnection connection =
            //new SqlConnection(connectionString))
            // {
            //     connection.Open();
            //     SqlDataAdapter adapter =
            //         //new SqlDataAdapter("select * from  (EMPLOYEE INNER JOIN PROJECT ON EMPLOYEE.ID = PROJECT.ID) INNER JOIN (SKL5 INNER JOIN EMPLOYEE ON EMPLOYEE.ID = SKL5.ID) ", connection);
            //         new SqlDataAdapter("Select EMPLOYEE.ID,FULL_NAME,ROLES,SKILL1,LEVEL1,SKILL2,LEVEL2,SKILL3,LEVEL3,P1_NAME,P1_SKILL,P1_LEVEL,P2_NAME,P2_SKILL,P2_LEVEL,P3_NAME,P3_SKILL,P3_LEVEL FROM EMPLOYEE JOIN SKL5 ON EMPLOYEE.ID=SKL5.ID JOIN PROJECT ON EMPLOYEE.ID=PROJECT.ID", conn);

            //     ds = new DataSet();
            //     adapter.Fill(ds,"EmployeeDetails");
            //     GridView1.DataSource = ds.Tables["EmployeeDetails"];
            //     GridView1.DataBind();

            // }
        }

        protected void btnImport_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.ContentType == "application/vnd.ms-excel" ||
                FileUpload1.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
            {
                try
                {
                    string fileName = Path.Combine(Server.MapPath("~/ImportDocument"), Guid.NewGuid().ToString() + Path.GetExtension(FileUpload1.PostedFile.FileName));
                    FileUpload1.PostedFile.SaveAs(fileName);

                    string conString = "";
                    string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    if (ext.ToLower() == ".xls")
                    {
                        conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\""; ;
                    }
                    else if (ext.ToLower() == ".xlsx")
                    {
                        conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    }

                    string query = "Select * from [Sheet1$]";

                    OleDbConnection con = new OleDbConnection(conString);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    OleDbCommand cmd = new OleDbCommand(query, con);
                    OleDbDataAdapter da = new OleDbDataAdapter(cmd);

                    DataSet ds = new DataSet();

                    da.Fill(ds);


                    // Import to Database
                    using (Database1Entities dc = new Database1Entities())
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            string empID = dr["ID"].ToString();
                            var v = dc.EMPLOYEEs.Where(a => a.ID.Equals(empID)).FirstOrDefault();

                            if (v != null)
                            {
                                // Update here
                                v.ID = dr["ID"].ToString();
                                v.FULL_NAME = dr["FULL_NAME"].ToString();
                                v.ROLES = dr["ROLES"].ToString();
                            }
                            else
                            {
                                // Insert
                                dc.EMPLOYEEs.Add(new EMPLOYEE
                                {
                                    ID = dr["ID"].ToString(),
                                    FULL_NAME = dr["FULL_NAME"].ToString(),
                                    ROLES = dr["ROLES"].ToString(),
                                });
                            }

                        }
                        dc.SaveChanges();
                    }

                    using (Database1Entities dc = new Database1Entities())
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            string empID = dr["ID"].ToString();
                            var v2 = dc.PROJECTs.Where(b => b.ID.Equals(empID)).FirstOrDefault();


                            if (v2 != null)
                            {
                                v2.ID = dr["ID"].ToString();
                                v2.P1_NAME = dr["P1_NAME"].ToString();
                                v2.P1_SKILL = dr["P1_SKILL"].ToString();
                                v2.P1_LEVEL = dr["P1_LEVEL"].ToString();
                                v2.P2_NAME = dr["P2_NAME"].ToString();
                                v2.P2_SKILL = dr["P2_SKILL"].ToString();
                                v2.P2_LEVEL = dr["P2_LEVEL"].ToString();
                                v2.P3_NAME = dr["P3_NAME"].ToString();
                                v2.P3_SKILL = dr["P3_SKILL"].ToString();
                                v2.P3_LEVEL = dr["P3_LEVEL"].ToString();
                            }

                            else
                            {

                                dc.PROJECTs.Add(new PROJECT
                                {
                                    ID = empID,
                                    P1_NAME = dr["P1_NAME"].ToString(),
                                    P1_SKILL = dr["P1_SKILL"].ToString(),
                                    P1_LEVEL = dr["P1_LEVEL"].ToString(),
                                    P2_NAME = dr["P2_NAME"].ToString(),
                                    P2_SKILL = dr["P2_SKILL"].ToString(),
                                    P2_LEVEL = dr["P2_LEVEL"].ToString(),
                                    P3_NAME = dr["P3_NAME"].ToString(),
                                    P3_SKILL = dr["P3_SKILL"].ToString(),
                                    P3_LEVEL = dr["P3_LEVEL"].ToString(),
                                });
                            }


                        }
                        dc.SaveChanges();
                    }

                    using (Database1Entities dc = new Database1Entities())
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            string empID = dr["ID"].ToString();
                            var v3 = dc.SKL5.Where(c => c.ID.Equals(empID)).FirstOrDefault();

                            if (v3 != null)
                            {
                                v3.ID = dr["ID"].ToString();
                                v3.SKILL1 = dr["SKILL1"].ToString();
                                v3.LEVEL1 = dr["LEVEL1"].ToString();
                                v3.SKILL2 = dr["SKILL2"].ToString();
                                v3.LEVEL2 = dr["LEVEL2"].ToString();
                                v3.SKILL3 = dr["SKILL3"].ToString();
                                v3.LEVEL3 = dr["LEVEL3"].ToString();
                            }
                            else
                            {
                                dc.SKL5.Add(new SKL5
                                {
                                    ID = empID,
                                    SKILL1 = dr["SKILL1"].ToString(),
                                    LEVEL1 = dr["LEVEL1"].ToString(),
                                    SKILL2 = dr["SKILL2"].ToString(),
                                    LEVEL2 = dr["LEVEL2"].ToString(),
                                    SKILL3 = dr["SKILL3"].ToString(),
                                    LEVEL3 = dr["LEVEL3"].ToString(),
                                });
                            }

                        }
                        dc.SaveChanges();
                    }

                    PopulateData();
                    lblMessage.Text = "Successfully data import done!";
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {

                }

            }
        }
    }
}