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
                showFirstVendorContacts();
            }

           // Response.Write(Page.GetPostBackEventReference GetPostBackClientEvent().ToString);
        
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void selectVendorForEdit(object sender, EventArgs e)
        {

           try
            {
            DropDownList dropDownList1 = (DropDownList)sender;
            int SelectedVendor_id = Convert.ToInt32( dropDownList1.SelectedItem.Value) ;
            DataSet ds = new DataSet();
            string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [vendor_contact_id], [vendor_id], [vendor_contact_honorific], [vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], [vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], [vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], [active] FROM [Vendor_Contact] WHERE ([vendor_id] = @vendor_id) ORDER BY vendor_contact_fname"   , con); //WHERE ([active] = '1') AND vendor_name like @Vendor+'%'

            cmd.Parameters.AddWithValue("@vendor_id", SelectedVendor_id);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            con.Close();
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
        }

        protected void showFirstVendorContacts()
        {
            try
            {
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [vendor_contact_id], [vendor_id], [vendor_contact_honorific], "
                +"[vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], "
                +"[vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], "
                +"[vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], "
                +"[active] FROM [Vendor_Contact] WHERE vendor_id = (SELECT TOP 1 vendor_id FROM Vendor ORDER BY vendor_name) ORDER BY vendor_contact_fname", con); 
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                con.Close();
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
        }

        protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            // once a new record has been added, rebind the GridView so it appears there

            selectVendorForEdit(DropDownList1, e);
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            selectVendorForEdit(DropDownList1, e);
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
        }
      }
}