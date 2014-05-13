using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
       

        public static string[] GetCompletionList(string prefixText, int count, string contextKey)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr);
            con.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select vendor_name from Vendor where vendor_name like @Vendor+'%'", con);
            cmd.Parameters.AddWithValue("@Vendor", prefixText);
            System.Data.SqlClient.SqlDataAdapter adp = new System.Data.SqlClient.SqlDataAdapter(cmd);
            adp.Fill(dt);
            List<string> VendorNames = new List<string>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                VendorNames.Add(dt.Rows[i][0].ToString());
            }


            return VendorNames.ToArray();

        }

    }
}