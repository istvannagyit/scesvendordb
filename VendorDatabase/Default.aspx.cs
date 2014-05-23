using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VendorDatabase
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showAllVendors();
            }
        }

        protected void showAllVendors()
        {
            try
            {
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT vendor_id, vendor_name, "
                 + "vendor_address1, vendor_address2, vendor_city, vendor_state, vendor_postalcode, vendor_phone1, "
                 + "vendor_phone2, vendor_fax, vendor_email, vendor_note, active FROM Vendor WHERE ([active] = '1') ORDER BY vendor_name", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                con.Close();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (System.Data.SqlClient.SqlException ex) //Catch SqlException
            {
                
                Response.Write("The database server is temporarily not operating, please come back in a bit or"+
                " if the problem seems permanent please let the Student center IT know.");
                Response.Write(ex.Message);
                //Response.Redirect("/App/ErrorPage.aspx");
            }
            catch (Exception ex) //Catch Other Exception
            {
               
                Response.Write(ex.Message);
            }

        }


        protected void showVendorsByInitials(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;
            var NameInitial = btn.Text;
            DataSet ds = new DataSet();
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT vendor_id, vendor_name, "
                + "vendor_address1, vendor_address2, vendor_city, vendor_state, vendor_postalcode, vendor_phone1, "
                + "vendor_phone2, vendor_fax, vendor_email, vendor_note, active FROM Vendor WHERE (active = '1') AND vendor_name like @Vendor+'%' ORDER BY vendor_name", con); //WHERE ([active] = '1') AND vendor_name like @Vendor+'%'
            cmd.Parameters.AddWithValue("@Vendor", NameInitial);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            con.Close();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            }
            catch (System.Data.SqlClient.SqlException ex) //Catch SqlException
            {
                Response.Write("The database server is temporarily not operating, please come back in a bit or" +
                " if the problem seems permanent please let the Student center IT know.");
                Response.Write(ex.Message);
                //Response.Redirect("/App/ErrorPage.aspx");
            }
            catch (Exception ex) //Catch Other Exception
            {
                Response.Write(ex.Message);
            }
        }

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] loadVendors(string prefixText, int count, string contextKey)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select vendor_name from Vendor where vendor_name like '%'+@Vendor+'%'", con);
            cmd.Parameters.AddWithValue("@Vendor", prefixText);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            con.Close();
            adp.Fill(dt);
            List<string> VendorNames = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                VendorNames.Add(dt.Rows[i][0].ToString());
            }
            return VendorNames.ToArray();
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    
    
    }

}
