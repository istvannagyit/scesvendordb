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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //showFirstVendorContacts();
            }

            // Response.Write(Page.GetPostBackEventReference GetPostBackClientEvent().ToString);

        }

       

        protected void selectVendorForEdit(object sender, EventArgs e)
        {
            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            con = new SqlConnection(constr);

            try
            {
                DropDownList dropDownList1 = (DropDownList)sender;
                int SelectedVendor_id = Convert.ToInt32(dropDownList1.SelectedItem.Value);
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [vendor_contact_id], [vendor_id], [vendor_contact_honorific], [vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], [vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], [vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], [active] FROM [Vendor_Contact] WHERE ([vendor_id] = @vendor_id) ORDER BY vendor_contact_fname", con); //WHERE ([active] = '1') AND vendor_name like @Vendor+'%'
                cmd.Parameters.AddWithValue("@vendor_id", SelectedVendor_id);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
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
            finally
            {
                con.Close();
            }
        }

        protected void showFirstVendorContacts()
        {
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constr);

            try
            {
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [vendor_contact_id], [vendor_id], [vendor_contact_honorific], "
                + "[vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], "
                + "[vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], "
                + "[vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], "
                + "[active] FROM [Vendor_Contact] WHERE vendor_id = (SELECT TOP 1 vendor_id FROM Vendor ORDER BY vendor_name) ORDER BY vendor_contact_fname", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
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
            finally
            {
                con.Close();
            }
        }

        

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            // once a new record has been added, rebind the GridView so it appears there

            //selectVendorForEdit(DropDownList1, e);
            GridView2.DataBind();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            selectVendorForEdit(DropDownList1, e);
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
            DropDownList1.DataBind();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void GridView2_UpdateItem(int id)
        {

        }

        // The id parameter name should match the DataKeyNames value set on the control
        

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] loadVendors(string prefixText, int count, string contextKey)
        {
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constr);
            List<string> VendorNames = new List<string>();
            try
            {

                DataTable dt = new DataTable();
                con.Open();
                SqlCommand cmd = new SqlCommand("select vendor_name from Vendor where vendor_name like '%'+@Vendor+'%'", con);
                cmd.Parameters.AddWithValue("@Vendor", prefixText);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    VendorNames.Add(dt.Rows[i][0].ToString());
                }
                return VendorNames.ToArray();
            }
            catch (System.Data.SqlClient.SqlException ex) //Catch SqlException
            {
                return VendorNames.ToArray();
            }
            finally
            {
                con.Close();

            }

        }

        protected void TabPanel2_Load(object sender, EventArgs e)
        {
            Response.Write("TabPanel2_Load");

        }

        protected void TabPanel2_Init(object sender, EventArgs e)
        {
            Response.Write("TabPanel2_Init");
        }

        protected void TabPanel2_PreRender(object sender, EventArgs e)
        {
            Response.Write("TabPanel2_PreRender");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            DropDownList1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            DropDownList1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender,
                          GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton l = (LinkButton)e.Row.FindControl("LinkButton2");
                l.Attributes.Add("onclick", "javascript:return " +
                "confirm('Are you sure you want to delete the vendor " +
                DataBinder.Eval(e.Row.DataItem, "vendor_name") +  "?')");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int vendor_id = (int)GridView1.DataKeys[e.RowIndex].Value;
            DeleteVendor_ByID(vendor_id);
        }

        protected void DeleteVendor_ByID(int vendor_id)
        {

            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            con = new SqlConnection(constr);

            try
            {
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM [Vendor] WHERE [vendor_id] = @vendor_id");
                cmd.Parameters.AddWithValue("@vendor_contact_id", vendor_id);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
             
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
            finally
            {
                con.Close();
            }
        }

        protected void GridView2_RowDataBound(object sender,
                         GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                l.Attributes.Add("onclick", "javascript:return " +
                "confirm('Are you sure you want to delete the contact named " +
                DataBinder.Eval(e.Row.DataItem, "vendor_contact_honorific") + " " 
                + DataBinder.Eval(e.Row.DataItem, "vendor_contact_fname") + " " 
                + DataBinder.Eval(e.Row.DataItem, "vendor_contact_lname") + "?')");
            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int vendor_contact_id = (int)GridView2.DataKeys[e.RowIndex].Value;
            DeleteVendor_contact_ByID(vendor_contact_id);
        }

        protected void DeleteVendor_contact_ByID(int vendor_contact_id)
        {

            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            con = new SqlConnection(constr);

            try
            {
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM [Vendor_Contact] WHERE [vendor_contact_id] = @vendor_contact_id");
                cmd.Parameters.AddWithValue("@vendor_contact_id", vendor_contact_id);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
               // adp.Fill(ds);
                //GridView2.DataSource = ds;
                GridView2.DataBind();
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
            finally
            {
                con.Close();
            }
        }


    }
}